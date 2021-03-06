package PresentationLayer;

import FunctionLayer.LoginSampleException;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

abstract class Command {

    private static HashMap<String, Command> commands;

    private static void initCommands() {
        commands = new HashMap<>();
        commands.put( "login", new Login() );
        commands.put( "register", new Register() );
        commands.put( "addCupCake", new AddCupCake());
        commands.put( "buy", new Buy());
        commands.put( "save", new Save());
        commands.put( "kundeBestillingBekræftigelse", new kundeBestillingBekræftigelse());
        commands.put("goBack", new GoBack());
        commands.put("logout", new Logout());
        commands.put("addBalance", new AddBalance());
        commands.put("deleteCupcake", new DeleteCupcake());
        commands.put("kurv", new Kurv());
        commands.put("GoToCustomers", new GoToCustomers());
        commands.put("GoToOrdersTwo", new GoToOrdersTwo());
        commands.put("GoToAddBalance", new GoToAddBalance());
        commands.put("deleteOrder", new DeleteOrder());
    }

    static Command from( HttpServletRequest request ) {
        String targetName = request.getParameter( "target" );
        if ( commands == null ) {
            initCommands();
        }
        return commands.getOrDefault(targetName, new UnknownCommand() );   // unknowncommand er default.
    }

    abstract String execute( HttpServletRequest request, HttpServletResponse response )
            throws LoginSampleException, ServletException, IOException;

}
