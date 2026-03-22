package com.applovin.impl;

import com.applovin.impl.sdk.utils.CollectionUtils;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class g2 implements f2 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7953a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f7954b;

    public g2(com.applovin.impl.sdk.k kVar) {
        this.f7953a = kVar;
        this.f7954b = kVar.O();
    }

    @Override // com.applovin.impl.f2
    public InputStream a(String str, Map map) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setConnectTimeout(((Integer) this.f7953a.a(v4.R2)).intValue());
        httpURLConnection.setReadTimeout(((Integer) this.f7953a.a(v4.S2)).intValue());
        httpURLConnection.setDefaultUseCaches(true);
        httpURLConnection.setUseCaches(true);
        httpURLConnection.setAllowUserInteraction(false);
        httpURLConnection.setInstanceFollowRedirects(true);
        int responseCode = httpURLConnection.getResponseCode();
        this.f7953a.E().a("loadResource", str, responseCode, httpURLConnection.getResponseMessage());
        if (r0.a(responseCode)) {
            return null;
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7954b;
            oVar.a("HttpUrlConnectionLoader", "Opened stream to resource " + str);
        }
        InputStream inputStream = httpURLConnection.getInputStream();
        HashMap<String, String> hashMap = CollectionUtils.hashMap("url", str);
        hashMap.putAll(map);
        CollectionUtils.putStringIfValid("source", "HttpUrlConnectionLoader", hashMap);
        this.f7953a.g().d(c2.C, hashMap);
        return inputStream;
    }
}
