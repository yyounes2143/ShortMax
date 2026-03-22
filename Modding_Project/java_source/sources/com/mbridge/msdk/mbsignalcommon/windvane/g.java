package com.mbridge.msdk.mbsignalcommon.windvane;

import android.content.Context;
/* compiled from: WindVanePlugin.java */
/* loaded from: classes4.dex */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    protected Context f28262a;

    /* renamed from: b  reason: collision with root package name */
    protected Object f28263b;

    /* renamed from: c  reason: collision with root package name */
    protected WindVaneWebView f28264c;

    public void initialize(Context context, WindVaneWebView windVaneWebView) {
        this.f28262a = context;
        this.f28264c = windVaneWebView;
    }

    public void initialize(Object obj, WindVaneWebView windVaneWebView) {
        this.f28263b = obj;
        this.f28264c = windVaneWebView;
    }
}
