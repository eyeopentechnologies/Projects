// Decompiled by DJ v3.12.12.96 Copyright 2011 Atanas Neshkov  Date: 2/5/2013 2:47:15 PM
// Home Page: http://members.fortunecity.com/neshkov/dj.html  http://www.neshkov.com/dj.html - Check often for new version!
// Decompiler options: packimports(3) 
// Source File Name:   DomainAction.java
/*
package com.mycompany.action;

import com.mycompany.VO.User;
import com.mycompany.logic.ReadWhois;
import com.mycompany.support.Const;
import com.mycompany.support.SystemProperties;
import java.io.FileOutputStream;
import java.util.*;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

public class DomainAction
{

    public DomainAction()
    {
        logger = Logger.getLogger("DomainAction");
        readWhois = new ReadWhois();
        systemProperties = new SystemProperties();
        user = new User();
    }

    public String execute()
    {
        try
        {
            domainKeyValue = new HashMap();
            String systemProperties[] = this.systemProperties.SystemValues();
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            int port = Integer.parseInt(Const.WHOIS_PORT);
            String host = Const.WHOIS_HOST;
            String domainName = (new StringBuilder("=")).append(getDomain()).toString();
            logger.info((new StringBuilder("sdfdfdf ")).append(domainName).toString());
            String whoisOut = "Domain Name: SKYTOUCH.COM ! Registrar:GODADDY.COM, LLC ! Whois Server: whois.godaddy.com ! Referral URL: http://registrar.godaddy.com ! Name Server:ESKIMO.COM ! Name Server: MAIL.ESKIMO.COM ! Status:clientDeleteProhibited ! Status: clientRenewProhibited ! Status: clientTransferProhibited ! Status:clientUpdateProhibited ! Updated Date: 07-jul-2008 ! Creation Date: 08-aug-1996 ! Expiration Date: 07-aug-2017";
            String whoisOutSplit[] = whoisOut.split("!");
            String whoisOutStr = new String();
            StringTokenizer stringTokenizer = new StringTokenizer(getDomain(), ".");
            String nextToken = stringTokenizer.nextToken();
            FileOutputStream fileOutputStream = new FileOutputStream((new StringBuilder(String.valueOf(systemProperties[2]))).append("\\").append(nextToken).append(".properties").toString());
            Properties properties = new Properties();
            for(int i = 0; i <= whoisOutSplit.length - 1; i++)
            {
                whoisOutStr = whoisOutSplit[i];
                String tempSplit[] = whoisOutStr.split(":");
                String key = tempSplit[0].replaceAll(" ", "");
                String value = "";
                if(tempSplit.length == 3)
                    value = (new StringBuilder(String.valueOf(tempSplit[1].trim()))).append(":").append(tempSplit[2].trim()).toString();
                else
                    value = tempSplit[1].trim();
                domainKeyValue.put(key, value);
                properties.put(key, value);
            }

            properties.store(fileOutputStream, "");
            fileOutputStream.close();
            session.setAttribute(Const.DOMAIN_LIST, domainKeyValue);
            session.setAttribute(Const.DOMAIN_NAME, nextToken);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        user.setName("Kannan");
        return Const.SUCCESS;
    }

    public String getDomain()
    {
        return domain;
    }

    public void setDomain(String domain)
    {
        this.domain = domain;
    }

    public User getUser()
    {
        return user;
    }

    public void setUser(User user)
    {
        this.user = user;
    }

    public static void main(String args[])
    {
        DomainAction domainAction = new DomainAction();
        domainAction.execute();
    }

    Logger logger;
    private String domain;
    private ReadWhois readWhois;
    private SystemProperties systemProperties;
    private User user;
    HashMap domainKeyValue;
}
*/