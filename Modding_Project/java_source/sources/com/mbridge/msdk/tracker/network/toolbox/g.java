package com.mbridge.msdk.tracker.network.toolbox;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* compiled from: HttpResponse.java */
/* loaded from: classes6.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final int f30355a;

    /* renamed from: b  reason: collision with root package name */
    private final List<com.mbridge.msdk.tracker.network.g> f30356b;

    /* renamed from: c  reason: collision with root package name */
    private final int f30357c;

    /* renamed from: d  reason: collision with root package name */
    private final InputStream f30358d;

    /* renamed from: e  reason: collision with root package name */
    private final byte[] f30359e;

    public g(int i10, List<com.mbridge.msdk.tracker.network.g> list) {
        this(i10, list, -1, null);
    }

    public final InputStream a() {
        InputStream inputStream = this.f30358d;
        if (inputStream != null) {
            return inputStream;
        }
        if (this.f30359e != null) {
            return new ByteArrayInputStream(this.f30359e);
        }
        return null;
    }

    public final int b() {
        return this.f30357c;
    }

    public final List<com.mbridge.msdk.tracker.network.g> c() {
        return Collections.unmodifiableList(this.f30356b);
    }

    public final int d() {
        return this.f30355a;
    }

    public g(int i10, List<com.mbridge.msdk.tracker.network.g> list, int i11, InputStream inputStream) {
        this.f30355a = i10;
        this.f30356b = list;
        this.f30357c = i11;
        this.f30358d = inputStream;
        this.f30359e = null;
    }
}
