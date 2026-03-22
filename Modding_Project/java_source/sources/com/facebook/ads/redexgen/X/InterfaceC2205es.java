package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;
/* renamed from: com.facebook.ads.redexgen.X.es  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public interface InterfaceC2205es {
    boolean ADE(C2203eq c2203eq);

    HttpURLConnection AG1(String str, Proxy proxy) throws IOException;

    InputStream AG2(HttpURLConnection httpURLConnection) throws IOException;

    OutputStream AG3(HttpURLConnection httpURLConnection) throws IOException;

    void AGM(HttpURLConnection httpURLConnection, EnumC2201eo enumC2201eo, String str) throws IOException;

    byte[] AGj(InputStream inputStream) throws IOException;

    void AKN(OutputStream outputStream, byte[] bArr) throws IOException;
}
