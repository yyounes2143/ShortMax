package com.inmobi.ads;

import android.content.Context;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.media.AbstractC2984h7;
import com.inmobi.media.C3079n6;
import com.inmobi.media.C3095o6;
import com.inmobi.media.Wa;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class f implements PreloadManager {

    /* renamed from: a  reason: collision with root package name */
    public final C3079n6 f23424a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ InMobiInterstitial f23425b;

    public f(InMobiInterstitial inMobiInterstitial) {
        this.f23425b = inMobiInterstitial;
        this.f23424a = new C3079n6(inMobiInterstitial);
    }

    @Override // com.inmobi.ads.PreloadManager
    public final void load() {
        try {
            this.f23425b.getMAdManager$media_release().D();
        } catch (IllegalStateException e10) {
            String access$getTAG$cp = InMobiInterstitial.access$getTAG$cp();
            Intrinsics.checkNotNullExpressionValue(access$getTAG$cp, "access$getTAG$cp(...)");
            AbstractC2984h7.a((byte) 1, access$getTAG$cp, e10.getMessage());
            this.f23425b.getMPubListener$media_release().a(this.f23425b, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
        }
    }

    @Override // com.inmobi.ads.PreloadManager
    public final void preload() {
        Wa wa2;
        Wa wa3;
        Context context;
        this.f23425b.f23397b = true;
        wa2 = this.f23425b.f23399d;
        wa2.f24341e = "Preload";
        C3095o6 mAdManager$media_release = this.f23425b.getMAdManager$media_release();
        wa3 = this.f23425b.f23399d;
        context = this.f23425b.f23396a;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mContext");
            context = null;
        }
        C3095o6.a(mAdManager$media_release, wa3, context, false, null, 12, null);
        this.f23425b.getMAdManager$media_release().c(this.f23424a);
    }
}
