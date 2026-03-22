package com.applovin.impl;

import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.shadow.okhttp3.OkHttpClient;
import com.applovin.shadow.okhttp3.Request;
import com.applovin.shadow.okhttp3.Response;
import com.applovin.shadow.okhttp3.ResponseBody;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public class a4 implements f2 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7301a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f7302b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicReference f7303c = new AtomicReference();

    public a4(com.applovin.impl.sdk.k kVar) {
        this.f7301a = kVar;
        this.f7302b = kVar.O();
    }

    private OkHttpClient a() {
        Object obj = this.f7303c.get();
        if (obj == null) {
            synchronized (this.f7303c) {
                try {
                    obj = this.f7303c.get();
                    if (obj == null) {
                        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                        obj = new OkHttpClient.Builder().connectTimeout(((Integer) this.f7301a.a(v4.R2)).intValue(), timeUnit).readTimeout(((Integer) this.f7301a.a(v4.S2)).intValue(), timeUnit).followRedirects(true).followSslRedirects(true).build();
                        if (obj == null) {
                            obj = this.f7303c;
                        }
                        this.f7303c.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f7303c) {
            obj = null;
        }
        return (OkHttpClient) obj;
    }

    @Override // com.applovin.impl.f2
    public InputStream a(String str, Map map) {
        Response execute = a().newCall(new Request.Builder().url(str).get().build()).execute();
        int code = execute.code();
        this.f7301a.E().a("loadResource", str, code, execute.message());
        if (r0.a(code)) {
            return null;
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7302b;
            oVar.a("OkHttpLoader", "Opened stream to resource " + str);
        }
        ResponseBody body = execute.body();
        if (body == null) {
            return null;
        }
        HashMap<String, String> hashMap = CollectionUtils.hashMap("url", str);
        hashMap.putAll(map);
        CollectionUtils.putStringIfValid("source", "OkHttpLoader", hashMap);
        CollectionUtils.putStringIfValid("details", execute.protocol().name(), hashMap);
        this.f7301a.g().d(c2.C, hashMap);
        return body.byteStream();
    }
}
