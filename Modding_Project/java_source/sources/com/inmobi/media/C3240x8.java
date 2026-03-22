package com.inmobi.media;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.x8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3240x8 {

    /* renamed from: a  reason: collision with root package name */
    public boolean f25428a;

    /* renamed from: b  reason: collision with root package name */
    public final T7 f25429b;

    /* renamed from: c  reason: collision with root package name */
    public final InterfaceC3269z5 f25430c;

    /* renamed from: d  reason: collision with root package name */
    public final String f25431d;

    /* renamed from: e  reason: collision with root package name */
    public final D8 f25432e;

    public C3240x8(Context context, AdConfig adConfig, T7 mNativeAdContainer, C3113p8 dataModel, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        Intrinsics.checkNotNullParameter(mNativeAdContainer, "mNativeAdContainer");
        Intrinsics.checkNotNullParameter(dataModel, "dataModel");
        this.f25429b = mNativeAdContainer;
        this.f25430c = interfaceC3269z5;
        this.f25431d = C3240x8.class.getSimpleName();
        D8 d82 = new D8(context, adConfig, mNativeAdContainer, dataModel, new C3224w8(this), new C3208v8(this), this, interfaceC3269z5);
        this.f25432e = d82;
        D9 d92 = d82.f23582m;
        int i10 = mNativeAdContainer.B;
        d92.getClass();
        D9.f23589f = i10;
    }

    public final J8 a(View view, ViewGroup parent, boolean z10, GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
        KeyEvent.Callback callback;
        J8 j82;
        InterfaceC3269z5 interfaceC3269z5;
        Intrinsics.checkNotNullParameter(parent, "parent");
        J8 j83 = null;
        if (view != null) {
            callback = view.findViewWithTag("InMobiAdView");
        } else {
            callback = null;
        }
        if (callback instanceof J8) {
            j83 = (J8) callback;
        }
        if (z10) {
            j82 = this.f25432e.a(j83, parent, gestureDetector$OnGestureListenerC2941ec);
        } else {
            D8 d82 = this.f25432e;
            d82.getClass();
            Intrinsics.checkNotNullParameter(parent, "parent");
            d82.f23584o = gestureDetector$OnGestureListenerC2941ec;
            J8 container = d82.a(j83, parent);
            if (!d82.f23583n) {
                C2985h8 root = d82.f23572c.f25138e;
                if (container != null && root != null) {
                    Intrinsics.checkNotNullParameter(container, "container");
                    Intrinsics.checkNotNullParameter(parent, "parent");
                    Intrinsics.checkNotNullParameter(root, "root");
                    d82.b((ViewGroup) container, root);
                }
            }
            j82 = container;
        }
        if (j83 == null && (interfaceC3269z5 = this.f25430c) != null) {
            String TAG = this.f25431d;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).b(TAG, "InMobiNative.getPrimaryView called with Non Native View.");
        }
        if (j82 != null) {
            j82.setNativeStrandAd(this.f25429b);
        }
        if (j82 != null) {
            j82.setTag("InMobiAdView");
        }
        return j82;
    }
}
