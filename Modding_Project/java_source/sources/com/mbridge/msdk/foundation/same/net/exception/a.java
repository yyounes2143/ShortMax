package com.mbridge.msdk.foundation.same.net.exception;
/* compiled from: CommonError.java */
/* loaded from: classes5.dex */
public class a extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public int f27119a;

    /* renamed from: b  reason: collision with root package name */
    public String f27120b;

    /* renamed from: c  reason: collision with root package name */
    public com.mbridge.msdk.foundation.same.net.toolbox.a f27121c;

    public a(int i10, com.mbridge.msdk.foundation.same.net.toolbox.a aVar) {
        this.f27119a = i10;
        this.f27121c = aVar;
    }

    public a(int i10, com.mbridge.msdk.foundation.same.net.toolbox.a aVar, String str) {
        this.f27119a = i10;
        this.f27121c = aVar;
        this.f27120b = str;
    }
}
