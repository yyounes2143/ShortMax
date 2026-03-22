package com.amazonaws.http;

import com.amazonaws.util.StringUtils;
import java.io.InputStream;
import java.net.URI;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2.dex */
public class HttpRequest {

    /* renamed from: a  reason: collision with root package name */
    private final String f4992a;

    /* renamed from: b  reason: collision with root package name */
    private URI f4993b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, String> f4994c;

    /* renamed from: d  reason: collision with root package name */
    private final InputStream f4995d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f4996e;

    public HttpRequest(String str, URI uri, Map<String, String> map, InputStream inputStream) {
        Map<String, String> unmodifiableMap;
        this.f4992a = StringUtils.c(str);
        this.f4993b = uri;
        if (map == null) {
            unmodifiableMap = Collections.EMPTY_MAP;
        } else {
            unmodifiableMap = Collections.unmodifiableMap(map);
        }
        this.f4994c = unmodifiableMap;
        this.f4995d = inputStream;
    }

    public InputStream a() {
        return this.f4995d;
    }

    public long b() {
        String str;
        Map<String, String> map = this.f4994c;
        if (map == null || (str = map.get("Content-Length")) == null || str.isEmpty()) {
            return 0L;
        }
        return Long.valueOf(str).longValue();
    }

    public Map<String, String> c() {
        return this.f4994c;
    }

    public String d() {
        return this.f4992a;
    }

    public URI e() {
        return this.f4993b;
    }

    public boolean f() {
        return this.f4996e;
    }

    public void g(boolean z10) {
        this.f4996e = z10;
    }
}
