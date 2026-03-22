package com.mbridge.msdk.thrid.okhttp.internal.http2;

import com.applovin.shadow.okhttp3.internal.http2.Header;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: Header.java */
/* loaded from: classes6.dex */
public final class c {

    /* renamed from: d  reason: collision with root package name */
    public static final com.mbridge.msdk.thrid.okio.f f29753d = com.mbridge.msdk.thrid.okio.f.c(":");

    /* renamed from: e  reason: collision with root package name */
    public static final com.mbridge.msdk.thrid.okio.f f29754e = com.mbridge.msdk.thrid.okio.f.c(Header.RESPONSE_STATUS_UTF8);

    /* renamed from: f  reason: collision with root package name */
    public static final com.mbridge.msdk.thrid.okio.f f29755f = com.mbridge.msdk.thrid.okio.f.c(Header.TARGET_METHOD_UTF8);

    /* renamed from: g  reason: collision with root package name */
    public static final com.mbridge.msdk.thrid.okio.f f29756g = com.mbridge.msdk.thrid.okio.f.c(Header.TARGET_PATH_UTF8);

    /* renamed from: h  reason: collision with root package name */
    public static final com.mbridge.msdk.thrid.okio.f f29757h = com.mbridge.msdk.thrid.okio.f.c(Header.TARGET_SCHEME_UTF8);

    /* renamed from: i  reason: collision with root package name */
    public static final com.mbridge.msdk.thrid.okio.f f29758i = com.mbridge.msdk.thrid.okio.f.c(Header.TARGET_AUTHORITY_UTF8);

    /* renamed from: a  reason: collision with root package name */
    public final com.mbridge.msdk.thrid.okio.f f29759a;

    /* renamed from: b  reason: collision with root package name */
    public final com.mbridge.msdk.thrid.okio.f f29760b;

    /* renamed from: c  reason: collision with root package name */
    final int f29761c;

    /* compiled from: Header.java */
    /* loaded from: classes6.dex */
    interface a {
    }

    public c(String str, String str2) {
        this(com.mbridge.msdk.thrid.okio.f.c(str), com.mbridge.msdk.thrid.okio.f.c(str2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (!this.f29759a.equals(cVar.f29759a) || !this.f29760b.equals(cVar.f29760b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((this.f29759a.hashCode() + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + this.f29760b.hashCode();
    }

    public String toString() {
        return com.mbridge.msdk.thrid.okhttp.internal.c.a("%s: %s", this.f29759a.h(), this.f29760b.h());
    }

    public c(com.mbridge.msdk.thrid.okio.f fVar, String str) {
        this(fVar, com.mbridge.msdk.thrid.okio.f.c(str));
    }

    public c(com.mbridge.msdk.thrid.okio.f fVar, com.mbridge.msdk.thrid.okio.f fVar2) {
        this.f29759a = fVar;
        this.f29760b = fVar2;
        this.f29761c = fVar.e() + 32 + fVar2.e();
    }
}
