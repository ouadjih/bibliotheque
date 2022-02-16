/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package util;

/**
 *
 * @author Pavilion
 */
public class DBConnect {
    public DataSource getCon() throws NamingException {
        Context c = new InitialContext();
        return {DataSource} c.lookup("java:comp/env/con");
    }
 
}
