package com.mbridge.msdk.thrid.okhttp.internal.http;

import com.mbridge.msdk.thrid.okhttp.u;
import java.io.IOException;
import java.net.ProtocolException;
/* compiled from: StatusLine.java */
/* loaded from: classes6.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final u f29712a;

    /* renamed from: b  reason: collision with root package name */
    public final int f29713b;

    /* renamed from: c  reason: collision with root package name */
    public final String f29714c;

    public k(u uVar, int i10, String str) {
        this.f29712a = uVar;
        this.f29713b = i10;
        this.f29714c = str;
    }

    public static k a(String str) throws IOException {
        u uVar;
        int i10;
        String str2;
        if (str.startsWith("HTTP/1.")) {
            i10 = 9;
            if (str.length() >= 9 && str.charAt(8) == ' ') {
                int charAt = str.charAt(7) - '0';
                if (charAt == 0) {
                    uVar = u.HTTP_1_0;
                } else if (charAt == 1) {
                    uVar = u.HTTP_1_1;
                } else {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
            } else {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        } else if (str.startsWith("ICY ")) {
            uVar = u.HTTP_1_0;
            i10 = 4;
        } else {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        int i11 = i10 + 3;
        if (str.length() >= i11) {
            try {
                int parseInt = Integer.parseInt(str.substring(i10, i11));
                if (str.length() > i11) {
                    if (str.charAt(i11) == ' ') {
                        str2 = str.substring(i10 + 4);
                    } else {
                        throw new ProtocolException("Unexpected status line: " + str);
                    }
                } else {
                    str2 = "";
                }
                return new k(uVar, parseInt, str2);
            } catch (NumberFormatException unused) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        }
        throw new ProtocolException("Unexpected status line: " + str);
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        if (this.f29712a == u.HTTP_1_0) {
            str = "HTTP/1.0";
        } else {
            str = "HTTP/1.1";
        }
        sb2.append(str);
        sb2.append(' ');
        sb2.append(this.f29713b);
        if (this.f29714c != null) {
            sb2.append(' ');
            sb2.append(this.f29714c);
        }
        return sb2.toString();
    }
}
