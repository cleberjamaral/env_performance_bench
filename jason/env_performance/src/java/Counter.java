
import jason.asSyntax.Literal;
import jason.asSyntax.Structure;
import jason.environment.Environment;
import java.util.*;

public class Counter extends Environment {

    Map<String,Integer> map = new HashMap<>();

    @Override
    public void init(String[] args) {
        clearPercepts();
    }

    /**
     * Implementation of the agents' basic actions
     */
    @Override
    public boolean executeAction(String ag, Structure action) {
        if (action.getFunctor().equals("inc")) {
            int value = 0;
            if (map.containsKey(ag)) {
                value = map.get(ag);
                removePercept(ag,Literal.parseLiteral("count("+value+")"));
                value++;
            }

            addPercept(ag,Literal.parseLiteral("count("+value+")"));
            map.put(ag,value);
        }

        return true;
    }
}
