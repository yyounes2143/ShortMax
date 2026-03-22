package com.inmobi.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.view.WindowInsets;
import android.widget.RelativeLayout;
import androidx.annotation.IntRange;
import androidx.annotation.UiThread;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiAudio;
import com.inmobi.ads.exceptions.SdkNotInitializedException;
import com.inmobi.ads.listeners.AudioAdEventListener;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.media.A1;
import com.inmobi.media.A5;
import com.inmobi.media.AbstractC2984h7;
import com.inmobi.media.AbstractC3110p5;
import com.inmobi.media.B2;
import com.inmobi.media.C3265z1;
import com.inmobi.media.Cb;
import com.inmobi.media.E1;
import com.inmobi.media.F1;
import com.inmobi.media.InterfaceC3269z5;
import com.inmobi.media.L3;
import com.inmobi.media.M2;
import com.inmobi.media.Md;
import com.inmobi.media.O2;
import com.inmobi.media.U3;
import com.inmobi.media.Uc;
import com.inmobi.media.V3;
import com.inmobi.media.Vc;
import com.inmobi.media.ViewTreeObserver$OnGlobalLayoutListenerC3126q5;
import com.inmobi.media.Wa;
import com.inmobi.media.X;
import com.inmobi.media.Z;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
@SourceDebugExtension({"SMAP\nInMobiAudio.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InMobiAudio.kt\ncom/inmobi/ads/InMobiAudio\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,596:1\n107#2:597\n79#2,22:598\n107#2:620\n79#2,22:621\n*S KotlinDebug\n*F\n+ 1 InMobiAudio.kt\ncom/inmobi/ads/InMobiAudio\n*L\n90#1:597\n90#1:598,22\n95#1:620\n95#1:621,22\n*E\n"})
/* loaded from: classes5.dex */
public final class InMobiAudio extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    public AudioAdEventListener f23374a;

    /* renamed from: b  reason: collision with root package name */
    public E1 f23375b;

    /* renamed from: c  reason: collision with root package name */
    public final WeakReference f23376c;

    /* renamed from: d  reason: collision with root package name */
    public final Wa f23377d;

    /* renamed from: e  reason: collision with root package name */
    public long f23378e;

    /* renamed from: f  reason: collision with root package name */
    public int f23379f;

    /* renamed from: g  reason: collision with root package name */
    public int f23380g;

    @Metadata
    /* loaded from: classes5.dex */
    public static final class a extends A1 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull InMobiAudio audio) {
            super(audio);
            Intrinsics.checkNotNullParameter(audio, "audio");
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public byte getType() {
            return (byte) 0;
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdFetchFailed(@NotNull InMobiAdRequestStatus status) {
            AudioAdEventListener mPubListener$media_release;
            Intrinsics.checkNotNullParameter(status, "status");
            InMobiAudio inMobiAudio = a().get();
            if (inMobiAudio != null && (mPubListener$media_release = inMobiAudio.getMPubListener$media_release()) != null) {
                mPubListener$media_release.onAdLoadFailed(inMobiAudio, status);
            }
        }

        @Override // com.inmobi.media.A1, com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdFetchSuccessful(@NotNull AdMetaInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            super.onAdFetchSuccessful(info);
            InMobiAudio inMobiAudio = a().get();
            if (inMobiAudio == null) {
                return;
            }
            try {
                E1 mAdManager$media_release = inMobiAudio.getMAdManager$media_release();
                if (mAdManager$media_release != null) {
                    mAdManager$media_release.y();
                }
            } catch (IllegalStateException e10) {
                AbstractC2984h7.a((byte) 1, "InMobiAudio", e10.getMessage());
                AudioAdEventListener mPubListener$media_release = inMobiAudio.getMPubListener$media_release();
                if (mPubListener$media_release != null) {
                    mPubListener$media_release.onAdLoadFailed(inMobiAudio, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public InMobiAudio(@org.jetbrains.annotations.NotNull android.content.Context r13, @org.jetbrains.annotations.NotNull android.util.AttributeSet r14) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.InMobiAudio.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public static final void a(InMobiAudio this$0) {
        E1 e12;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            if (this$0.b()) {
                if (!this$0.a() || (e12 = this$0.f23375b) == null) {
                    return;
                }
                e12.b(this$0.getFrameSizeString());
                return;
            }
            AbstractC2984h7.a((byte) 1, "InMobiAudio", "The height or width of the audio ad can not be determined");
            E1 e13 = this$0.f23375b;
            if (e13 != null) {
                e13.a((short) 108);
            }
            E1 e14 = this$0.f23375b;
            if (e14 != null) {
                e14.a(e14.j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            }
        } catch (Exception unused) {
            E1 e15 = this$0.f23375b;
            if (e15 != null) {
                e15.a((short) 105);
            }
            AbstractC2984h7.a((byte) 1, "InMobiAudio", "SDK encountered unexpected error while loading an ad");
        }
    }

    private final String getFrameSizeString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f23379f);
        sb2.append('x');
        sb2.append(this.f23380g);
        return sb2.toString();
    }

    public final boolean b() {
        if (this.f23379f > 0 && this.f23380g > 0) {
            return true;
        }
        return false;
    }

    public final boolean c() {
        if (!b()) {
            if (getLayoutParams() == null) {
                AbstractC2984h7.a((byte) 1, "InMobiAudio", "The layout params of the audio ad view must be set before calling load or call setAudioSize(int widthInDp, int heightInDp) before load");
                return false;
            } else if (getLayoutParams().width != -2 && getLayoutParams().height != -2) {
                if (getLayoutParams() != null) {
                    this.f23379f = B2.b(getLayoutParams().width / U3.b());
                    this.f23380g = B2.b(getLayoutParams().height / U3.b());
                }
            } else {
                AbstractC2984h7.a((byte) 1, "InMobiAudio", "The height or width of a Audio ad can't be WRAP_CONTENT or call setAudioSize(int widthInDp, int heightInDp) before load");
                return false;
            }
        }
        return true;
    }

    public final void d() {
        E1 e12;
        boolean z10;
        try {
            LinkedHashMap linkedHashMap = O2.f23923a;
            Config a10 = M2.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, Uc.b(), null);
            Intrinsics.checkNotNull(a10, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
            if (!((AdConfig) a10).getAudio().isAudioEnabled()) {
                E1 e13 = this.f23375b;
                if (e13 != null) {
                    e13.a((short) 107);
                }
                E1 e14 = this.f23375b;
                if (e14 != null) {
                    e14.a(e14.j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.FEATURE_DISABLED));
                }
                AbstractC2984h7.a((byte) 1, "InMobi", "");
                return;
            }
            this.f23377d.f24341e = "NonAB";
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            a(context);
            E1 e15 = this.f23375b;
            if (e15 != null) {
                C3265z1 c3265z1 = e15.f23612q;
                if (c3265z1 != null) {
                    z10 = c3265z1.E0();
                } else {
                    z10 = false;
                }
                if (z10) {
                    E1 e16 = this.f23375b;
                    if (e16 != null) {
                        InterfaceC3269z5 p10 = e16.p();
                        if (p10 != null) {
                            String str = F1.f23628a;
                            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                            ((A5) p10).b(str, "submitAdLoadFailed " + e16);
                        }
                        C3265z1 c3265z12 = e16.f23613r;
                        if (c3265z12 != null) {
                            c3265z12.b((short) 15);
                        }
                    }
                    AudioAdEventListener audioAdEventListener = this.f23374a;
                    if (audioAdEventListener != null) {
                        audioAdEventListener.onAdLoadFailed(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE));
                    }
                    AbstractC2984h7.a((byte) 1, "InMobiAudio", "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad.");
                    return;
                }
            }
            if (!c()) {
                E1 e17 = this.f23375b;
                if (e17 != null) {
                    e17.a((short) 108);
                }
                E1 e18 = this.f23375b;
                if (e18 != null) {
                    e18.a(e18.j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_INVALID));
                    return;
                }
                return;
            }
            Config a11 = M2.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, Uc.b(), null);
            Intrinsics.checkNotNull(a11, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
            if (((AdConfig) a11).getAudio().getMinDeviceVolume() > L3.f23796a.a(Uc.d(), Uc.o())) {
                E1 e19 = this.f23375b;
                if (e19 != null) {
                    e19.a((short) 106);
                }
                E1 e110 = this.f23375b;
                if (e110 != null) {
                    e110.a(e110.j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.DEVICE_AUDIO_LEVEL_LOW));
                }
            } else if (!b()) {
                Md.a(new Runnable() { // from class: sb.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        InMobiAudio.a(InMobiAudio.this);
                    }
                }, 200L);
            } else if (a() && (e12 = this.f23375b) != null) {
                e12.b(getFrameSizeString());
            }
        } catch (Exception unused) {
            E1 e111 = this.f23375b;
            if (e111 != null) {
                e111.a((short) 105);
            }
            AbstractC2984h7.a((byte) 1, "InMobiAudio", "Unable to load ad; SDK encountered an unexpected error");
        }
    }

    @UiThread
    public final void destroy() {
        removeAllViews();
        E1 e12 = this.f23375b;
        if (e12 != null) {
            InterfaceC3269z5 p10 = e12.p();
            if (p10 != null) {
                String str = F1.f23628a;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((A5) p10).a(str, "clear " + e12);
            }
            InterfaceC3269z5 p11 = e12.p();
            if (p11 != null) {
                String str2 = F1.f23628a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((A5) p11).c(str2, "unregisterLifecycleCallbacks " + e12);
            }
            C3265z1 c3265z1 = e12.f23610o;
            if (c3265z1 != null) {
                c3265z1.J0();
            }
            C3265z1 c3265z12 = e12.f23611p;
            if (c3265z12 != null) {
                c3265z12.J0();
            }
            C3265z1 c3265z13 = e12.f23610o;
            if (c3265z13 != null) {
                c3265z13.g();
            }
            e12.f23610o = null;
            C3265z1 c3265z14 = e12.f23611p;
            if (c3265z14 != null) {
                c3265z14.g();
            }
            e12.f23611p = null;
            e12.f23612q = null;
            e12.f23613r = null;
            e12.a((Boolean) null);
        }
        this.f23374a = null;
    }

    public final void disableHardwareAcceleration() {
        this.f23377d.f24340d = true;
    }

    @Nullable
    public final E1 getMAdManager$media_release() {
        return this.f23375b;
    }

    @Nullable
    public final AudioAdEventListener getMPubListener$media_release() {
        return this.f23374a;
    }

    @UiThread
    public final void load() {
        E1 e12 = this.f23375b;
        if (e12 != null) {
            e12.w();
        }
        d();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        try {
            super.onAttachedToWindow();
            E1 e12 = this.f23375b;
            if (e12 != null) {
                e12.x();
            }
            if (getLayoutParams() != null) {
                this.f23379f = B2.b(getLayoutParams().width / U3.b());
                this.f23380g = B2.b(getLayoutParams().height / U3.b());
            }
            if (!b()) {
                setupViewSizeObserver();
            }
            if (Build.VERSION.SDK_INT >= 29) {
                V3 v32 = U3.f24244a;
                Context context = getContext();
                WindowInsets rootWindowInsets = getRootWindowInsets();
                Intrinsics.checkNotNullExpressionValue(rootWindowInsets, "getRootWindowInsets(...)");
                U3.a(rootWindowInsets, context);
            }
        } catch (Exception unused) {
            AbstractC2984h7.a((byte) 1, "InMobiAudio", "InMobiAudio#onAttachedToWindow() handler threw unexpected error");
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
            E1 e12 = this.f23375b;
            if (e12 != null) {
                InterfaceC3269z5 p10 = e12.p();
                if (p10 != null) {
                    String str = F1.f23628a;
                    Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                    ((A5) p10).c(str, "unregisterLifecycleCallbacks " + e12);
                }
                C3265z1 c3265z1 = e12.f23610o;
                if (c3265z1 != null) {
                    c3265z1.J0();
                }
                C3265z1 c3265z12 = e12.f23611p;
                if (c3265z12 != null) {
                    c3265z12.J0();
                }
            }
        } catch (Exception unused) {
            AbstractC2984h7.a((byte) 1, "InMobiAudio", "InMobiAudio.onDetachedFromWindow() handler threw unexpected error");
        }
    }

    public final void pause() {
        E1 e12;
        try {
            if (this.f23376c == null && (e12 = this.f23375b) != null) {
                InterfaceC3269z5 p10 = e12.p();
                if (p10 != null) {
                    String str = F1.f23628a;
                    Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                    ((A5) p10).a(str, "pause " + e12);
                }
                C3265z1 c3265z1 = e12.f23612q;
                if (c3265z1 != null) {
                    c3265z1.F0();
                }
            }
        } catch (Exception unused) {
            AbstractC2984h7.a((byte) 1, "InMobi", "Could not pause ad; SDK encountered an unexpected error");
        }
    }

    public final void resume() {
        E1 e12;
        try {
            if (this.f23376c == null && (e12 = this.f23375b) != null) {
                InterfaceC3269z5 p10 = e12.p();
                if (p10 != null) {
                    String str = F1.f23628a;
                    Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                    ((A5) p10).a(str, "resume " + e12);
                }
                C3265z1 c3265z1 = e12.f23612q;
                if (c3265z1 != null) {
                    c3265z1.G0();
                }
            }
        } catch (Exception unused) {
            AbstractC2984h7.a((byte) 1, "InMobi", "Could not resume ad; SDK encountered an unexpected error");
        }
    }

    public final void setAudioSize(@IntRange(from = 1) int i10, @IntRange(from = 1) int i11) {
        this.f23379f = i10;
        this.f23380g = i11;
    }

    public final void setContentUrl(@NotNull String contentUrl) {
        Intrinsics.checkNotNullParameter(contentUrl, "contentUrl");
        this.f23377d.f24342f = contentUrl;
    }

    public final void setExtras(@Nullable Map<String, String> map) {
        if (map != null) {
            String str = map.get("tp");
            if (str != null) {
                Vc.a(str);
            }
            String str2 = map.get("tp-v");
            if (str2 != null) {
                Vc.b(str2);
            }
        }
        this.f23377d.f24339c = map;
    }

    public final void setKeywords(@Nullable String str) {
        this.f23377d.f24338b = str;
    }

    public final void setListener(@NotNull AudioAdEventListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f23374a = listener;
    }

    public final void setMAdManager$media_release(@Nullable E1 e12) {
        this.f23375b = e12;
    }

    public final void setMPubListener$media_release(@Nullable AudioAdEventListener audioAdEventListener) {
        this.f23374a = audioAdEventListener;
    }

    @TargetApi(16)
    public final void setupViewSizeObserver() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC3126q5(this));
    }

    @UiThread
    public final void show() {
        E1 e12 = this.f23375b;
        if (e12 != null) {
            InterfaceC3269z5 p10 = e12.p();
            if (p10 != null) {
                String str = F1.f23628a;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((A5) p10).a(str, "submitAdShowCalled " + e12);
            }
            C3265z1 c3265z1 = e12.f23613r;
            if (c3265z1 != null) {
                c3265z1.w0();
            }
        }
        E1 e13 = this.f23375b;
        if (e13 != null) {
            e13.a(this);
        }
    }

    public final boolean a() {
        E1 e12;
        long j10 = this.f23378e;
        if (j10 != 0 && (e12 = this.f23375b) != null) {
            InterfaceC3269z5 p10 = e12.p();
            if (p10 != null) {
                String str = F1.f23628a;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((A5) p10).c(str, "checkForRefreshRate " + e12);
            }
            if (e12.f23613r == null) {
                return false;
            }
            LinkedHashMap linkedHashMap = O2.f23923a;
            int minRefreshInterval = ((AdConfig) AbstractC3110p5.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null)).getAudio().getMinRefreshInterval();
            if (SystemClock.elapsedRealtime() - j10 < minRefreshInterval * 1000) {
                e12.a((short) 2175);
                C3265z1 c3265z1 = e12.f23613r;
                InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.EARLY_REFRESH_REQUEST);
                e12.b(c3265z1, inMobiAdRequestStatus.setCustomMessage("Ad cannot be refreshed before " + minRefreshInterval + " seconds"));
                String str2 = F1.f23628a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                StringBuilder sb2 = new StringBuilder("Ad cannot be refreshed before ");
                sb2.append(minRefreshInterval);
                sb2.append(" seconds (AdPlacement Id = ");
                C3265z1 c3265z12 = e12.f23613r;
                sb2.append(c3265z12 != null ? c3265z12.I() : null);
                sb2.append(')');
                AbstractC2984h7.a((byte) 1, str2, sb2.toString());
                InterfaceC3269z5 p11 = e12.p();
                if (p11 != null) {
                    Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                    StringBuilder sb3 = new StringBuilder("Ad cannot be refreshed before ");
                    sb3.append(minRefreshInterval);
                    sb3.append(" seconds (AdPlacement Id = ");
                    C3265z1 c3265z13 = e12.f23613r;
                    sb3.append(c3265z13 != null ? c3265z13.I() : null);
                    sb3.append(')');
                    ((A5) p11).b(str2, sb3.toString());
                    return false;
                }
                return false;
            }
        }
        this.f23378e = SystemClock.elapsedRealtime();
        return true;
    }

    public final void a(Context context) {
        String str;
        E1 e12 = this.f23375b;
        if (e12 != null) {
            Wa pubSettings = this.f23377d;
            String adSize = getFrameSizeString();
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(pubSettings, "pubSettings");
            Intrinsics.checkNotNullParameter(adSize, "adSize");
            String str2 = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            X x10 = new X("audio");
            Intrinsics.checkNotNullParameter(context, "context");
            if (context instanceof Activity) {
                str = "activity";
            } else {
                str = "others";
            }
            Z a10 = x10.d(str).a(pubSettings.f24337a).c(pubSettings.f24338b).a(pubSettings.f24339c).a(adSize).a(pubSettings.f24340d).e(pubSettings.f24341e).b(pubSettings.f24342f).a();
            C3265z1 c3265z1 = e12.f23610o;
            if (c3265z1 != null && e12.f23611p != null) {
                c3265z1.a(context, a10, e12);
                C3265z1 c3265z12 = e12.f23611p;
                if (c3265z12 != null) {
                    c3265z12.a(context, a10, e12);
                }
            } else {
                e12.f23610o = new C3265z1(context, a10, e12);
                e12.f23611p = new C3265z1(context, a10, e12);
                e12.f23613r = e12.f23610o;
            }
            String str3 = pubSettings.f24341e;
            if (str3 != null) {
                InterfaceC3269z5 p10 = e12.p();
                if (p10 != null) {
                    ((A5) p10).a();
                }
                e12.a(Cb.a("audio", str3, false));
                InterfaceC3269z5 p11 = e12.p();
                if (p11 != null) {
                    Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                    ((A5) p11).a(str2, "adding audioAdUnit1 to reference tracker");
                }
                C3265z1 c3265z13 = e12.f23610o;
                Intrinsics.checkNotNull(c3265z13);
                Cb.a(c3265z13, e12.p());
                InterfaceC3269z5 p12 = e12.p();
                if (p12 != null) {
                    Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                    ((A5) p12).a(str2, "adding audioAdUnit2 to reference tracker");
                }
                C3265z1 c3265z14 = e12.f23611p;
                Intrinsics.checkNotNull(c3265z14);
                Cb.a(c3265z14, e12.p());
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InMobiAudio(@NotNull Context context, long j10) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        a aVar = new a(this);
        Wa wa2 = new Wa();
        this.f23377d = wa2;
        if (Uc.q()) {
            if (context instanceof Activity) {
                this.f23376c = new WeakReference(context);
            }
            this.f23375b = new E1(aVar);
            wa2.f24337a = j10;
            a(context);
            return;
        }
        throw new SdkNotInitializedException("InMobiAudio");
    }
}
