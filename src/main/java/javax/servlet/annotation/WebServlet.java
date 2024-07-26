package javax.servlet.annotation;

public @interface WebServlet {

	String value();

	String name();

	String[] urlPatterns();

}
