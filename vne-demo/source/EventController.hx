import io.github.gummywormz.hagglerVNE.event.SoundEvent;
import io.github.gummywormz.hagglerVNE.event.ChoicesEvent;
import io.github.gummywormz.hagglerVNE.util.Choices;
import io.github.gummywormz.hagglerVNE.event.Event;


/**
 * Handles events
 * @author Paul Alves
 */
class EventController
{

    var _events : List<Event>;

	/**
	 * Creates a new event controller
	 * Side Note: Events must be added in order!
	 * @param	day The day to give events for
	 */
    public function new (day : Int)
    {
        _events = new List<Event>();
        
		/**
		 * This is the same case as the DialogueController
		 * 
		 */
        switch(day)
        {
           case 1:
           
		   //add your choices like this
		   var c = new Choices();
		   c.addChoice("Like this");
		   c.addChoice("Or this one"); 
		   //Choices Event takes 3 parameters. The first is when the event occurs. This is before the dialogue happens
		   //(e.g. if you want it to occur after the 3rd dialogue entry, put it in 3rd)
		   //The second is if the event blocks dialogue, and the third is the choices to display
		   _events.add(new ChoicesEvent(3, true, c));
		   _events.add(new SoundEvent(2,false,AssetPaths.Pickup_Coin3__wav));
		   
        }
    }

	/**
	 * Checks the next event
	 * @param	num The event number to check
	 * @return The event, or null if there is no event.
	 */
    public function next(num : Int)
    {
        var e = _events.first();

        if(e == null){return null;}

	    if(_events.first().getWhen() == num)
	    {
	      return _events.pop();
	    }
	   else{ return null; }
    }

}