package com.mbridge.msdk.video.signal.factory;

import com.mbridge.msdk.video.signal.c;
import com.mbridge.msdk.video.signal.d;
import com.mbridge.msdk.video.signal.f;
import com.mbridge.msdk.video.signal.g;
import com.mbridge.msdk.video.signal.i;
import com.mbridge.msdk.video.signal.impl.e;
import com.mbridge.msdk.video.signal.impl.h;
import com.mbridge.msdk.video.signal.j;
/* compiled from: DefaultJSFactory.java */
/* loaded from: classes6.dex */
public class a implements IJSFactory {

    /* renamed from: a  reason: collision with root package name */
    protected com.mbridge.msdk.video.signal.b f31497a;

    /* renamed from: b  reason: collision with root package name */
    protected d f31498b;

    /* renamed from: c  reason: collision with root package name */
    protected j f31499c;

    /* renamed from: d  reason: collision with root package name */
    protected g f31500d;

    /* renamed from: e  reason: collision with root package name */
    protected f f31501e;

    /* renamed from: f  reason: collision with root package name */
    protected i f31502f;

    /* renamed from: g  reason: collision with root package name */
    protected c f31503g;

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public com.mbridge.msdk.video.signal.b getActivityProxy() {
        if (this.f31497a == null) {
            this.f31497a = new com.mbridge.msdk.video.signal.impl.b();
        }
        return this.f31497a;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public i getIJSRewardVideoV1() {
        if (this.f31502f == null) {
            this.f31502f = new com.mbridge.msdk.video.signal.impl.g();
        }
        return this.f31502f;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public c getJSBTModule() {
        if (this.f31503g == null) {
            this.f31503g = new com.mbridge.msdk.video.signal.impl.c();
        }
        return this.f31503g;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public d getJSCommon() {
        if (this.f31498b == null) {
            this.f31498b = new com.mbridge.msdk.video.signal.impl.d();
        }
        return this.f31498b;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public f getJSContainerModule() {
        if (this.f31501e == null) {
            this.f31501e = new e();
        }
        return this.f31501e;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public g getJSNotifyProxy() {
        if (this.f31500d == null) {
            this.f31500d = new com.mbridge.msdk.video.signal.impl.f();
        }
        return this.f31500d;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public j getJSVideoModule() {
        if (this.f31499c == null) {
            this.f31499c = new h();
        }
        return this.f31499c;
    }
}
