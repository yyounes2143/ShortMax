package com.amazonaws.services.s3.model.transform;

import androidx.webkit.ProxyConfig;
import java.util.Iterator;
import java.util.LinkedList;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;
/* loaded from: classes2.dex */
abstract class AbstractHandler extends DefaultHandler {

    /* renamed from: a  reason: collision with root package name */
    private final StringBuilder f6250a = new StringBuilder();

    /* renamed from: b  reason: collision with root package name */
    private final LinkedList<String> f6251b = new LinkedList<>();

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean a() {
        return this.f6251b.isEmpty();
    }

    protected abstract void c(String str, String str2, String str3);

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void characters(char[] cArr, int i10, int i11) {
        this.f6250a.append(cArr, i10, i11);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void endElement(String str, String str2, String str3) {
        this.f6251b.removeLast();
        c(str, str2, str3);
    }

    protected abstract void f(String str, String str2, String str3, Attributes attributes);

    /* JADX INFO: Access modifiers changed from: protected */
    public final String g() {
        return this.f6250a.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean l(String... strArr) {
        if (strArr.length != this.f6251b.size()) {
            return false;
        }
        Iterator<String> it = this.f6251b.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            String next = it.next();
            String str = strArr[i10];
            if (!str.equals(ProxyConfig.MATCH_ALL_SCHEMES) && !str.equals(next)) {
                return false;
            }
            i10++;
        }
        return true;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void startElement(String str, String str2, String str3, Attributes attributes) {
        this.f6250a.setLength(0);
        f(str, str2, str3, attributes);
        this.f6251b.add(str2);
    }
}
