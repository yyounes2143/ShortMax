package com.inmobi.ads;

import android.content.Context;
import android.os.Build;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.exceptions.SdkNotInitializedException;
import com.inmobi.ads.listeners.InterstitialAdEventListener;
import com.inmobi.media.AbstractC2983h6;
import com.inmobi.media.AbstractC2984h7;
import com.inmobi.media.AbstractC3221w5;
import com.inmobi.media.C2999i6;
import com.inmobi.media.C3079n6;
import com.inmobi.media.C3095o6;
import com.inmobi.media.C3237x5;
import com.inmobi.media.S5;
import com.inmobi.media.U3;
import com.inmobi.media.Uc;
import com.inmobi.media.Vc;
import com.inmobi.media.Wa;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class InMobiInterstitial {
    @NotNull
    public static final C3237x5 Companion = new C3237x5();

    /* renamed from: a  reason: collision with root package name */
    public final Context f23396a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f23397b;

    /* renamed from: c  reason: collision with root package name */
    public final WeakReference f23398c;

    /* renamed from: d  reason: collision with root package name */
    public final Wa f23399d;

    /* renamed from: e  reason: collision with root package name */
    public final a f23400e;

    /* renamed from: f  reason: collision with root package name */
    public final f f23401f;
    public C3095o6 mAdManager;
    public AbstractC2983h6 mPubListener;

    @Metadata
    /* loaded from: classes5.dex */
    public static final class a extends C3079n6 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull InMobiInterstitial interstitial) {
            super(interstitial);
            Intrinsics.checkNotNullParameter(interstitial, "interstitial");
        }

        @Override // com.inmobi.media.C3079n6, com.inmobi.ads.controllers.PublisherCallbacks
        public byte getType() {
            return (byte) 0;
        }

        @Override // com.inmobi.media.C3079n6, com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdFetchFailed(@NotNull InMobiAdRequestStatus status) {
            AbstractC2983h6 mPubListener$media_release;
            Intrinsics.checkNotNullParameter(status, "status");
            InMobiInterstitial inMobiInterstitial = this.f25052a.get();
            if (inMobiInterstitial != null && (mPubListener$media_release = inMobiInterstitial.getMPubListener$media_release()) != null) {
                mPubListener$media_release.a(inMobiInterstitial, status);
            }
        }

        @Override // com.inmobi.media.C3079n6, com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdFetchSuccessful(@NotNull AdMetaInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            super.onAdFetchSuccessful(info);
            InMobiInterstitial inMobiInterstitial = this.f25052a.get();
            if (inMobiInterstitial != null) {
                try {
                    inMobiInterstitial.getMAdManager$media_release().D();
                } catch (IllegalStateException e10) {
                    String access$getTAG$cp = InMobiInterstitial.access$getTAG$cp();
                    Intrinsics.checkNotNullExpressionValue(access$getTAG$cp, "access$getTAG$cp(...)");
                    AbstractC2984h7.a((byte) 1, access$getTAG$cp, e10.getMessage());
                    inMobiInterstitial.getMPubListener$media_release().a(inMobiInterstitial, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                }
            }
        }
    }

    public InMobiInterstitial(@NotNull Context context, long j10, @NotNull InterstitialAdEventListener listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Wa wa2 = new Wa();
        this.f23399d = wa2;
        this.f23400e = new a(this);
        this.f23401f = new f(this);
        if (Uc.q()) {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            this.f23396a = applicationContext;
            wa2.f24337a = j10;
            this.f23398c = new WeakReference(context);
            setMPubListener$media_release(new C2999i6(listener));
            setMAdManager$media_release(new C3095o6());
            return;
        }
        Intrinsics.checkNotNullExpressionValue("InMobiInterstitial", "TAG");
        throw new SdkNotInitializedException("InMobiInterstitial");
    }

    public static final /* synthetic */ String access$getTAG$cp() {
        return "InMobiInterstitial";
    }

    public final void disableHardwareAcceleration() {
        this.f23399d.f24340d = true;
    }

    @NotNull
    public final C3095o6 getMAdManager$media_release() {
        C3095o6 c3095o6 = this.mAdManager;
        if (c3095o6 != null) {
            return c3095o6;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mAdManager");
        return null;
    }

    @NotNull
    public final AbstractC2983h6 getMPubListener$media_release() {
        AbstractC2983h6 abstractC2983h6 = this.mPubListener;
        if (abstractC2983h6 != null) {
            return abstractC2983h6;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mPubListener");
        return null;
    }

    @NotNull
    public final PreloadManager getPreloadManager() {
        return this.f23401f;
    }

    @ms.c
    public final void getSignals() {
        this.f23399d.f24341e = "AB";
        C3095o6 mAdManager$media_release = getMAdManager$media_release();
        Wa wa2 = this.f23399d;
        Context context = this.f23396a;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mContext");
            context = null;
        }
        mAdManager$media_release.a(wa2, context, false, "getToken");
        getMAdManager$media_release().a(this.f23400e);
    }

    public final boolean isReady() {
        boolean B = getMAdManager$media_release().B();
        if (!B) {
            getMAdManager$media_release().E();
        }
        return B;
    }

    public final void load(@Nullable byte[] bArr) {
        this.f23397b = true;
        this.f23399d.f24341e = "AB";
        C3095o6 mAdManager$media_release = getMAdManager$media_release();
        Wa wa2 = this.f23399d;
        Context context = this.f23396a;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mContext");
            context = null;
        }
        C3095o6.a(mAdManager$media_release, wa2, context, false, null, 12, null);
        if (Build.VERSION.SDK_INT >= 29) {
            U3.b((Context) this.f23398c.get());
        }
        getMAdManager$media_release().a(bArr, this.f23400e);
    }

    @VisibleForTesting
    public final void loadAdUnit() {
        getMAdManager$media_release().c(this.f23400e);
    }

    public final void setContentUrl(@NotNull String contentUrl) {
        Intrinsics.checkNotNullParameter(contentUrl, "contentUrl");
        this.f23399d.f24342f = contentUrl;
    }

    public final void setExtras(@Nullable Map<String, String> map) {
        if (map != null) {
            Vc.a(map.get("tp"));
            Vc.b(map.get("tp-v"));
        }
        this.f23399d.f24339c = map;
    }

    public final void setKeywords(@Nullable String str) {
        this.f23399d.f24338b = str;
    }

    public final void setListener(@NotNull InterstitialAdEventListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        setMPubListener$media_release(new C2999i6(listener));
    }

    public final void setMAdManager$media_release(@NotNull C3095o6 c3095o6) {
        Intrinsics.checkNotNullParameter(c3095o6, "<set-?>");
        this.mAdManager = c3095o6;
    }

    public final void setMPubListener$media_release(@NotNull AbstractC2983h6 abstractC2983h6) {
        Intrinsics.checkNotNullParameter(abstractC2983h6, "<set-?>");
        this.mPubListener = abstractC2983h6;
    }

    public final void setWatermarkData(@NotNull WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(watermarkData, "watermarkData");
        getMAdManager$media_release().a(watermarkData);
    }

    @UiThread
    public final void show() {
        try {
            if (!this.f23397b) {
                Intrinsics.checkNotNullExpressionValue("InMobiInterstitial", "TAG");
                AbstractC2984h7.a((byte) 1, "InMobiInterstitial", "load() must be called before trying to show the ad");
                return;
            }
            getMAdManager$media_release().F();
        } catch (Exception e10) {
            Intrinsics.checkNotNullExpressionValue("InMobiInterstitial", "TAG");
            AbstractC2984h7.a((byte) 1, "InMobiInterstitial", "Unable to show ad; SDK encountered an unexpected error");
            Intrinsics.checkNotNullExpressionValue("InMobiInterstitial", "TAG");
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    @UiThread
    public final void load() {
        try {
            this.f23397b = true;
            this.f23399d.f24341e = "NonAB";
            C3095o6 mAdManager$media_release = getMAdManager$media_release();
            Wa wa2 = this.f23399d;
            Context context = this.f23396a;
            if (context == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mContext");
                context = null;
            }
            C3095o6.a(mAdManager$media_release, wa2, context, false, null, 12, null);
            if (Build.VERSION.SDK_INT >= 29) {
                U3.b((Context) this.f23398c.get());
            }
            loadAdUnit();
        } catch (Exception e10) {
            Intrinsics.checkNotNullExpressionValue("InMobiInterstitial", "TAG");
            AbstractC2984h7.a((byte) 1, "InMobiInterstitial", "Unable to load ad; SDK encountered an unexpected error");
            Intrinsics.checkNotNullExpressionValue("InMobiInterstitial", "TAG");
            getMAdManager$media_release().a((short) 2000);
            getMAdManager$media_release().a(getMAdManager$media_release().j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    @ms.c
    public static /* synthetic */ void getPreloadManager$annotations() {
    }
}
