package com.amazonaws.util;

import com.amazonaws.Protocol;
import java.net.URI;
import java.net.URISyntaxException;
/* loaded from: classes2.dex */
public class URIBuilder {

    /* renamed from: h  reason: collision with root package name */
    private static final String f6423h = Protocol.HTTPS.toString();

    /* renamed from: a  reason: collision with root package name */
    private String f6424a;

    /* renamed from: b  reason: collision with root package name */
    private String f6425b;

    /* renamed from: c  reason: collision with root package name */
    private String f6426c;

    /* renamed from: d  reason: collision with root package name */
    private int f6427d;

    /* renamed from: e  reason: collision with root package name */
    private String f6428e;

    /* renamed from: f  reason: collision with root package name */
    private String f6429f;

    /* renamed from: g  reason: collision with root package name */
    private String f6430g;

    private URIBuilder(URI uri) {
        this.f6424a = uri.getScheme();
        this.f6425b = uri.getUserInfo();
        this.f6426c = uri.getHost();
        this.f6427d = uri.getPort();
        this.f6428e = uri.getPath();
        this.f6429f = uri.getQuery();
        this.f6430g = uri.getFragment();
    }

    public static URIBuilder b(URI uri) {
        return new URIBuilder(uri);
    }

    public URI a() throws URISyntaxException {
        return new URI(this.f6424a, this.f6425b, this.f6426c, this.f6427d, this.f6428e, this.f6429f, this.f6430g);
    }

    public URIBuilder c(String str) {
        this.f6426c = str;
        return this;
    }
}
