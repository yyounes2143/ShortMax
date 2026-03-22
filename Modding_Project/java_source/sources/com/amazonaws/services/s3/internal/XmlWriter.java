package com.amazonaws.services.s3.internal;

import com.amazonaws.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class XmlWriter {

    /* renamed from: a  reason: collision with root package name */
    List<String> f5950a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    StringBuilder f5951b = new StringBuilder();

    private void a(String str, StringBuilder sb2) {
        String str2;
        if (str == null) {
            str = "";
        }
        int length = str.length();
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            char charAt = str.charAt(i10);
            if (charAt != '\t') {
                if (charAt != '\n') {
                    if (charAt != '\r') {
                        if (charAt != '\"') {
                            if (charAt != '&') {
                                if (charAt != '<') {
                                    if (charAt != '>') {
                                        str2 = null;
                                    } else {
                                        str2 = "&gt;";
                                    }
                                } else {
                                    str2 = "&lt;";
                                }
                            } else {
                                str2 = "&amp;";
                            }
                        } else {
                            str2 = "&quot;";
                        }
                    } else {
                        str2 = "&#13;";
                    }
                } else {
                    str2 = "&#10;";
                }
            } else {
                str2 = "&#9;";
            }
            if (str2 != null) {
                if (i11 < i10) {
                    sb2.append((CharSequence) str, i11, i10);
                }
                this.f5951b.append(str2);
                i11 = i10 + 1;
            }
            i10++;
        }
        if (i11 < i10) {
            this.f5951b.append((CharSequence) str, i11, i10);
        }
    }

    public XmlWriter b() {
        List<String> list = this.f5950a;
        StringBuilder sb2 = this.f5951b;
        sb2.append("</");
        sb2.append(list.remove(list.size() - 1));
        sb2.append(">");
        return this;
    }

    public byte[] c() {
        return toString().getBytes(StringUtils.f6417a);
    }

    public XmlWriter d(String str) {
        StringBuilder sb2 = this.f5951b;
        sb2.append("<");
        sb2.append(str);
        sb2.append(">");
        this.f5950a.add(str);
        return this;
    }

    public XmlWriter e(String str) {
        a(str, this.f5951b);
        return this;
    }

    public String toString() {
        return this.f5951b.toString();
    }
}
