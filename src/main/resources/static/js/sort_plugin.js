/**
 * jQuery.fn.sortElements
 * --------------
 * @author James Padolsey (http://james.padolsey.com)
 * @version 0.11
 * @updated 18-MAR-2010
 * --------------
 * @param Function comparator:
 *   Exactly the same behaviour as [1,2,3].sort(comparator)
 *
 * @param Function getSortable
 *   A function that should return the element that is
 *   to be sorted. The comparator will run on the
 *   current collection, but you may want the actual
 *   resulting sort to occur on a parent or another
 *   associated element.
 *
 *   E.g. $('td').sortElements(comparator, function(){
 *      return this.parentNode;
 *   })
 *
 *   The <td>'s parent (<tr>) will be sorted instead
 *   of the <td> itself.
 */
jQuery.fn.sortElements = (function(){

    var sort = [].sort;

    return function(comparator, getSortable) {

        getSortable = getSortable || function(){return this;};

        var placements = this.map(function(){

            var sortElement = getSortable.call(this),
                parentNode = sortElement.parentNode,

                // Since the element itself will change position, we have
                // to have some way of storing it's original position in
                // the DOM. The easiest way is to have a 'flag' node:
                nextSibling = parentNode.insertBefore(
                    document.createTextNode(''),
                    sortElement.nextSibling
                );

            return function() {

                if (parentNode === this) {
                    throw new Error(
                        "You can't sort elements if any one is a descendant of another."
                    );
                }

                // Insert before flag:
                parentNode.insertBefore(this, nextSibling);
                // Remove flag:
                parentNode.removeChild(nextSibling);

            };

        });

        return sort.call(this, comparator).each(function(i){
            placements[i].call(getSortable.call(this));
        });

    };

})();


function init_sorting(parent) {
    var table = $(parent);
    var thead_columns_q = table.find('th').length;
    var idString = "";
    for (var i = 0; i < thead_columns_q; i++) {
        idString += '#' + table.find('th').eq(i).attr('id');
        if (i !== thead_columns_q - 1)
            idString += ', ';
    }

    $(idString)
        .wrapInner('<span title="sort this column"/>')
        .each(function(){

            var th = $(this),
                thIndex = th.index(),
                inverse = false;

            th.click( function () {
                table.find('.sorted_by_this').removeClass('sorted_by_this');
                th.addClass('sorted_by_this');
                sort_table(table, th, thIndex, inverse);
                inverse = !inverse;
            });

        });
}

function sort_table ( table, th, thIndex, inverse, sortby) {
        table.find('td').filter(function(){

            return $(this).index() === thIndex;

        }).sortElements(function(a, b){
            if (isNaN(parseInt($.text([b]))))
                return $.text([a]) > $.text([b])
                    ? inverse ? -1 : 1
                    : inverse ? 1 : -1;

            // if (inverse)
                return parseInt($.text([a])) < parseInt($.text([b]))
                    ? inverse ? -1 : 1
                    : inverse ? 1 : -1;
            // else
            //     return parseInt($.text([a])) > parseInt($.text([b]))

        }, function(){

            // parentNode is the element we want to move
            return this.parentNode;

        });


}