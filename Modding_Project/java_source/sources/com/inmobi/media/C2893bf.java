package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.bf  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2893bf extends Xe {

    /* renamed from: e  reason: collision with root package name */
    public final T7 f24527e;

    /* renamed from: f  reason: collision with root package name */
    public GestureDetector$OnGestureListenerC2941ec f24528f;

    /* renamed from: g  reason: collision with root package name */
    public final InterfaceC3269z5 f24529g;

    /* renamed from: h  reason: collision with root package name */
    public final String f24530h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f24531i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2893bf(T7 mNativeAdContainer, GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec, InterfaceC3269z5 interfaceC3269z5) {
        super(mNativeAdContainer);
        Intrinsics.checkNotNullParameter(mNativeAdContainer, "mNativeAdContainer");
        this.f24527e = mNativeAdContainer;
        this.f24528f = gestureDetector$OnGestureListenerC2941ec;
        this.f24529g = interfaceC3269z5;
        this.f24530h = "InMobi";
    }

    @Override // com.inmobi.media.Xe
    public final void a(byte b10) {
    }

    @Override // com.inmobi.media.Xe
    public final void a(Map map) {
    }

    @Override // com.inmobi.media.Xe
    public final void a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
    }

    @Override // com.inmobi.media.Xe
    public final void a(Context context, byte b10) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.inmobi.media.Xe
    public final void a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
    }

    @Override // com.inmobi.media.Xe
    public final View a(View view, ViewGroup parent, boolean z10) {
        Context j10;
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (this.f24531i || (j10 = this.f24527e.j()) == null) {
            return null;
        }
        AdConfig adConfig = this.f24377d;
        T7 t72 = this.f24527e;
        C3113p8 c3113p8 = t72.f24177b;
        Intrinsics.checkNotNull(c3113p8, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeDataModel");
        this.f24375b = new C3240x8(j10, adConfig, t72, c3113p8, this.f24529g);
        InterfaceC3269z5 interfaceC3269z5 = this.f24529g;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).b(this.f24530h, "Ad markup loaded into the container will be inflated into a View.");
        }
        C3240x8 c3240x8 = this.f24375b;
        this.f24376c = new WeakReference(c3240x8 != null ? c3240x8.a(view, parent, z10, this.f24528f) : null);
        T7 t73 = this.f24527e;
        t73.getClass();
        D4.a(new J7(t73, t73), "EndCardBuilderTask");
        return b();
    }

    @Override // com.inmobi.media.Xe
    public final void e() {
    }

    @Override // com.inmobi.media.Xe
    public final void a() {
        if (this.f24531i) {
            return;
        }
        this.f24531i = true;
        C3240x8 c3240x8 = this.f24375b;
        if (c3240x8 != null) {
            D8 d82 = c3240x8.f25432e;
            d82.f23583n = true;
            d82.f23578i.clear();
            d82.f23585p = null;
            L8 l82 = d82.f23579j;
            if (l82 != null) {
                l82.destroy();
            }
            d82.f23579j = null;
            if (!c3240x8.f25428a) {
                c3240x8.f25428a = true;
            }
        }
        this.f24375b = null;
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f24528f;
        if (gestureDetector$OnGestureListenerC2941ec != null) {
            gestureDetector$OnGestureListenerC2941ec.b();
        }
        this.f24528f = null;
        super.a();
    }
}
