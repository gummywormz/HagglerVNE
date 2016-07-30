package io.github.gummywormz.hagglerVNE.util;
//import io.github.gummywormz.HagglerVNE.demo.Misc;

/**
 * Miscellanious Static methods
 * @author Paul Alves
 */
class Misc
{

	/**
	 * Returns the specified element in the list
	 * Don't ask why this is not part of the default API 
	 * (probably because arrays are mutable)
	 * Copied from: http://sononix.com/article/returning-element-haxe-list
	 * @param	l The list to check
	 * @param	n The index to get
	 * @return The element at the index
	 */
	public static function listGet(l : List<Dynamic>,n : Int) : Dynamic
	{
		  if (n < 0 || n >= l.length) {
                         throw "N must be in the range [0 .. " + l.length + "] inclusively";
                 } else {
                         var iter:Iterator<Dynamic> = l.iterator();
                         var i:Int = 0;
                         while (i < n) {
                                 iter.next();
                                 i++;
                         }
                         return iter.next();
                 }
	}
}