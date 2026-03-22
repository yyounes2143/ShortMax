package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.cf  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2910cf extends Xe {

    /* renamed from: e  reason: collision with root package name */
    public final C2870a9 f24560e;

    /* renamed from: f  reason: collision with root package name */
    public final InterfaceC3269z5 f24561f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f24562g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2910cf(C2870a9 mNativeVideoAdContainer, InterfaceC3269z5 interfaceC3269z5) {
        super(mNativeVideoAdContainer);
        Intrinsics.checkNotNullParameter(mNativeVideoAdContainer, "mNativeVideoAdContainer");
        this.f24560e = mNativeVideoAdContainer;
        this.f24561f = interfaceC3269z5;
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
        if (this.f24562g || (j10 = this.f24560e.j()) == null) {
            return null;
        }
        AdConfig adConfig = this.f24377d;
        C2870a9 c2870a9 = this.f24560e;
        C3113p8 c3113p8 = c2870a9.f24177b;
        Intrinsics.checkNotNull(c3113p8, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeDataModel");
        C3240x8 c3240x8 = new C3240x8(j10, adConfig, c2870a9, c3113p8, this.f24561f);
        this.f24375b = c3240x8;
        this.f24376c = new WeakReference(c3240x8.a(view, parent, false, null));
        C2870a9 c2870a92 = this.f24560e;
        c2870a92.getClass();
        D4.a(new J7(c2870a92, c2870a92), "EndCardBuilderTask");
        return b();
    }

    @Override // com.inmobi.media.Xe
    public final void e() {
    }

    @Override // com.inmobi.media.Xe
    public final void a() {
        if (this.f24562g) {
            return;
        }
        this.f24562g = true;
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
        super.a();
    }
}
