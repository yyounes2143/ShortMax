package com.amazonaws.http;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;
/* loaded from: classes2.dex */
public class HttpResponse {

    /* renamed from: a  reason: collision with root package name */
    private final String f4997a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4998b;

    /* renamed from: c  reason: collision with root package name */
    private final InputStream f4999c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, String> f5000d;

    /* renamed from: e  reason: collision with root package name */
    private InputStream f5001e;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f5002a;

        /* renamed from: b  reason: collision with root package name */
        private int f5003b;

        /* renamed from: c  reason: collision with root package name */
        private InputStream f5004c;

        /* renamed from: d  reason: collision with root package name */
        private final Map<String, String> f5005d = new HashMap();

        public HttpResponse a() {
            return new HttpResponse(this.f5002a, this.f5003b, Collections.unmodifiableMap(this.f5005d), this.f5004c);
        }

        public Builder b(InputStream inputStream) {
            this.f5004c = inputStream;
            return this;
        }

        public Builder c(String str, String str2) {
            this.f5005d.put(str, str2);
            return this;
        }

        public Builder d(int i10) {
            this.f5003b = i10;
            return this;
        }

        public Builder e(String str) {
            this.f5002a = str;
            return this;
        }
    }

    public static Builder a() {
        return new Builder();
    }

    public InputStream b() throws IOException {
        if (this.f5001e == null) {
            synchronized (this) {
                try {
                    if (this.f4999c != null && "gzip".equals(this.f5000d.get("Content-Encoding"))) {
                        this.f5001e = new GZIPInputStream(this.f4999c);
                    } else {
                        this.f5001e = this.f4999c;
                    }
                } finally {
                }
            }
        }
        return this.f5001e;
    }

    public Map<String, String> c() {
        return this.f5000d;
    }

    public InputStream d() throws IOException {
        return this.f4999c;
    }

    public int e() {
        return this.f4998b;
    }

    public String f() {
        return this.f4997a;
    }

    private HttpResponse(String str, int i10, Map<String, String> map, InputStream inputStream) {
        this.f4997a = str;
        this.f4998b = i10;
        this.f5000d = map;
        this.f4999c = inputStream;
    }
}
