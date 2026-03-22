package com.amazonaws.util;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;
/* loaded from: classes2.dex */
public class XpathUtils {

    /* renamed from: a  reason: collision with root package name */
    private static Log f6435a = LogFactory.b(XpathUtils.class);

    /* renamed from: b  reason: collision with root package name */
    private static DocumentBuilderFactory f6436b = DocumentBuilderFactory.newInstance();

    public static Node a(String str, Node node) throws XPathExpressionException {
        if (node == null) {
            return null;
        }
        return (Node) g().evaluate(str, node, XPathConstants.NODE);
    }

    public static String b(String str, Node node) throws XPathExpressionException {
        return e(str, node);
    }

    public static Document c(InputStream inputStream) throws SAXException, IOException, ParserConfigurationException {
        NamespaceRemovingInputStream namespaceRemovingInputStream = new NamespaceRemovingInputStream(inputStream);
        Document parse = f6436b.newDocumentBuilder().parse(namespaceRemovingInputStream);
        namespaceRemovingInputStream.close();
        return parse;
    }

    public static Document d(String str) throws SAXException, IOException, ParserConfigurationException {
        return c(new ByteArrayInputStream(str.getBytes(StringUtils.f6417a)));
    }

    private static String e(String str, Node node) throws XPathExpressionException {
        if (f(node)) {
            return null;
        }
        if (!".".equals(str) && a(str, node) == null) {
            return null;
        }
        return g().evaluate(str, node).trim();
    }

    public static boolean f(Node node) {
        if (node == null) {
            return true;
        }
        return false;
    }

    public static XPath g() {
        return XPathFactory.newInstance().newXPath();
    }
}
