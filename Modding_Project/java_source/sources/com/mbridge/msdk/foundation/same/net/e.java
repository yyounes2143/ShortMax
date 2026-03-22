package com.mbridge.msdk.foundation.same.net;
/* compiled from: Response.java */
/* loaded from: classes5.dex */
public class e<T> {

    /* renamed from: a  reason: collision with root package name */
    public com.mbridge.msdk.foundation.same.net.exception.a f27116a = null;

    /* renamed from: b  reason: collision with root package name */
    public com.mbridge.msdk.foundation.same.net.toolbox.a f27117b;

    /* renamed from: c  reason: collision with root package name */
    public T f27118c;

    private e(T t10, com.mbridge.msdk.foundation.same.net.toolbox.a aVar) {
        this.f27118c = t10;
        this.f27117b = aVar;
    }

    public static <T> e<T> a(T t10, com.mbridge.msdk.foundation.same.net.toolbox.a aVar) {
        return new e<>(t10, aVar);
    }
}
