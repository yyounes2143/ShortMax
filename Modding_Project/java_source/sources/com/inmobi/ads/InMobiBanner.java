package com.inmobi.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.view.View;
import android.view.WindowInsets;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import androidx.annotation.IntRange;
import androidx.annotation.UiThread;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.banner.AudioListener;
import com.inmobi.ads.controllers.PublisherCallbacks;
import com.inmobi.ads.exceptions.SdkNotInitializedException;
import com.inmobi.ads.listeners.BannerAdEventListener;
import com.inmobi.media.A5;
import com.inmobi.media.AbstractC2984h7;
import com.inmobi.media.B2;
import com.inmobi.media.C3157s5;
import com.inmobi.media.C3173t5;
import com.inmobi.media.D1;
import com.inmobi.media.H1;
import com.inmobi.media.I1;
import com.inmobi.media.InterfaceC3269z5;
import com.inmobi.media.Md;
import com.inmobi.media.O1;
import com.inmobi.media.P1;
import com.inmobi.media.R1;
import com.inmobi.media.U3;
import com.inmobi.media.Uc;
import com.inmobi.media.V3;
import com.inmobi.media.Vc;
import com.inmobi.media.ViewTreeObserver$OnGlobalLayoutListenerC3189u5;
import com.inmobi.media.Wa;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
@SourceDebugExtension({"SMAP\nInMobiBanner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InMobiBanner.kt\ncom/inmobi/ads/InMobiBanner\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,777:1\n107#2:778\n79#2,22:779\n107#2:801\n79#2,22:802\n107#2:824\n79#2,22:825\n1#3:847\n*S KotlinDebug\n*F\n+ 1 InMobiBanner.kt\ncom/inmobi/ads/InMobiBanner\n*L\n140#1:778\n140#1:779,22\n157#1:801\n157#1:802,22\n162#1:824\n162#1:825,22\n*E\n"})
/* loaded from: classes5.dex */
public final class InMobiBanner extends RelativeLayout {
    @NotNull
    public static final C3157s5 Companion = new C3157s5();

    /* renamed from: a  reason: collision with root package name */
    public H1 f23381a;

    /* renamed from: b  reason: collision with root package name */
    public AudioListener f23382b;

    /* renamed from: c  reason: collision with root package name */
    public D1 f23383c;

    /* renamed from: d  reason: collision with root package name */
    public R1 f23384d;

    /* renamed from: e  reason: collision with root package name */
    public final a f23385e;

    /* renamed from: f  reason: collision with root package name */
    public int f23386f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f23387g;

    /* renamed from: h  reason: collision with root package name */
    public final P1 f23388h;

    /* renamed from: i  reason: collision with root package name */
    public int f23389i;

    /* renamed from: j  reason: collision with root package name */
    public int f23390j;

    /* renamed from: k  reason: collision with root package name */
    public AnimationType f23391k;

    /* renamed from: l  reason: collision with root package name */
    public long f23392l;

    /* renamed from: m  reason: collision with root package name */
    public WeakReference f23393m;

    /* renamed from: n  reason: collision with root package name */
    public final Wa f23394n;

    /* renamed from: o  reason: collision with root package name */
    public final e f23395o;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class AnimationType {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ AnimationType[] $VALUES;
        public static final AnimationType ANIMATION_OFF = new AnimationType("ANIMATION_OFF", 0);
        public static final AnimationType ROTATE_HORIZONTAL_AXIS = new AnimationType("ROTATE_HORIZONTAL_AXIS", 1);
        public static final AnimationType ANIMATION_ALPHA = new AnimationType("ANIMATION_ALPHA", 2);
        public static final AnimationType ROTATE_VERTICAL_AXIS = new AnimationType("ROTATE_VERTICAL_AXIS", 3);

        private static final /* synthetic */ AnimationType[] $values() {
            return new AnimationType[]{ANIMATION_OFF, ROTATE_HORIZONTAL_AXIS, ANIMATION_ALPHA, ROTATE_VERTICAL_AXIS};
        }

        static {
            AnimationType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private AnimationType(String str, int i10) {
        }

        @NotNull
        public static ss.a<AnimationType> getEntries() {
            return $ENTRIES;
        }

        public static AnimationType valueOf(String str) {
            return (AnimationType) Enum.valueOf(AnimationType.class, str);
        }

        public static AnimationType[] values() {
            return (AnimationType[]) $VALUES.clone();
        }
    }

    @Metadata
    /* loaded from: classes5.dex */
    public static final class a extends O1 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull InMobiBanner banner) {
            super(banner);
            Intrinsics.checkNotNullParameter(banner, "banner");
        }

        @Override // com.inmobi.media.O1, com.inmobi.ads.controllers.PublisherCallbacks
        public byte getType() {
            return (byte) 0;
        }

        @Override // com.inmobi.media.O1, com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdFetchFailed(@NotNull InMobiAdRequestStatus status) {
            Intrinsics.checkNotNullParameter(status, "status");
            InMobiBanner inMobiBanner = a().get();
            if (inMobiBanner == null) {
                return;
            }
            H1 mPubListener$media_release = inMobiBanner.getMPubListener$media_release();
            if (mPubListener$media_release != null) {
                mPubListener$media_release.a(inMobiBanner, status);
            }
            inMobiBanner.scheduleRefresh$media_release();
        }

        @Override // com.inmobi.media.O1, com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdFetchSuccessful(@NotNull AdMetaInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            super.onAdFetchSuccessful(info);
            InMobiBanner inMobiBanner = a().get();
            if (inMobiBanner != null) {
                try {
                    R1 mAdManager$media_release = inMobiBanner.getMAdManager$media_release();
                    if (mAdManager$media_release != null) {
                        mAdManager$media_release.G();
                    }
                } catch (IllegalStateException e10) {
                    String access$getTAG$cp = InMobiBanner.access$getTAG$cp();
                    Intrinsics.checkNotNullExpressionValue(access$getTAG$cp, "access$getTAG$cp(...)");
                    AbstractC2984h7.a((byte) 1, access$getTAG$cp, e10.getMessage());
                    H1 mPubListener$media_release = inMobiBanner.getMPubListener$media_release();
                    if (mPubListener$media_release != null) {
                        mPubListener$media_release.a(inMobiBanner, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                    }
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:64:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0141  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public InMobiBanner(@org.jetbrains.annotations.NotNull android.content.Context r14, @org.jetbrains.annotations.NotNull android.util.AttributeSet r15) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.InMobiBanner.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public static final boolean access$checkForRefreshRate(InMobiBanner inMobiBanner) {
        R1 r12;
        long j10 = inMobiBanner.f23392l;
        if (j10 != 0 && (r12 = inMobiBanner.f23384d) != null && !r12.a(j10)) {
            return false;
        }
        inMobiBanner.f23392l = SystemClock.elapsedRealtime();
        return true;
    }

    public static final /* synthetic */ String access$getTAG$cp() {
        return "InMobiBanner";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getFrameSizeString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f23389i);
        sb2.append('x');
        sb2.append(this.f23390j);
        return sb2.toString();
    }

    public final boolean a(boolean z10) {
        InterfaceC3269z5 p10;
        InterfaceC3269z5 p11;
        R1 r12 = this.f23384d;
        if (r12 != null && (p11 = r12.p()) != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((A5) p11).c("InMobiBanner", "checkStateAndLogError");
        }
        if (z10 && this.f23381a == null) {
            R1 r13 = this.f23384d;
            if (r13 != null && (p10 = r13.p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((A5) p10).b("InMobiBanner", "Listener supplied is null, Ignoring your call.");
            }
            return false;
        }
        return true;
    }

    public final boolean b() {
        if (this.f23389i > 0 && this.f23390j > 0) {
            return true;
        }
        return false;
    }

    @UiThread
    public final void destroy() {
        a();
        removeAllViews();
        R1 r12 = this.f23384d;
        if (r12 != null) {
            r12.z();
        }
        this.f23381a = null;
    }

    public final void disableHardwareAcceleration() {
        this.f23394n.f24340d = true;
    }

    @NotNull
    public final D1 getAudioStatusInternal$media_release() {
        return this.f23383c;
    }

    @Nullable
    public final R1 getMAdManager$media_release() {
        return this.f23384d;
    }

    @Nullable
    public final AudioListener getMAudioListener$media_release() {
        return this.f23382b;
    }

    @Nullable
    public final H1 getMPubListener$media_release() {
        return this.f23381a;
    }

    @NotNull
    public final Wa getMPubSettings$media_release() {
        return this.f23394n;
    }

    public final long getPlacementId() {
        return this.f23394n.f24337a;
    }

    @NotNull
    public final PreloadManager getPreloadManager() {
        return this.f23395o;
    }

    @ms.c
    public final void getSignals() {
        InterfaceC3269z5 p10;
        if (a(true)) {
            if (a("getSignals()")) {
                R1 r12 = this.f23384d;
                if (r12 == null || !r12.D()) {
                    Context context = getContext();
                    Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                    a(context, "getToken");
                }
                R1 r13 = this.f23384d;
                if (r13 != null && (p10 = r13.p()) != null) {
                    Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                    ((A5) p10).a("InMobiBanner", "getSignals");
                }
                setEnableAutoRefresh(false);
                R1 r14 = this.f23384d;
                if (r14 != null) {
                    r14.a(this.f23385e);
                    return;
                }
                return;
            }
            this.f23385e.onRequestPayloadCreationFailed(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.CONFIGURATION_ERROR));
        }
    }

    public final boolean isAudioAd() {
        R1 r12 = this.f23384d;
        if (r12 != null) {
            return r12.C();
        }
        return false;
    }

    public final void load(@Nullable byte[] bArr) {
        R1 r12;
        R1 r13;
        if (a(false)) {
            this.f23394n.f24341e = "AB";
            if (getLayoutParams() != null) {
                this.f23389i = B2.b(getLayoutParams().width / U3.b());
                this.f23390j = B2.b(getLayoutParams().height / U3.b());
            }
            R1 r14 = this.f23384d;
            if (r14 == null || !r14.D() || ((r12 = this.f23384d) != null && r12.D() && (r13 = this.f23384d) != null && r13.q() == 0)) {
                Context context = getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                a(context, "banner");
            }
            R1 r15 = this.f23384d;
            if (r15 != null) {
                r15.w();
            }
            a("load(byte[])", new d(this, bArr));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        InterfaceC3269z5 p10;
        try {
            super.onAttachedToWindow();
            R1 r12 = this.f23384d;
            if (r12 != null) {
                r12.F();
            }
            if (getLayoutParams() != null) {
                this.f23389i = B2.b(getLayoutParams().width / U3.b());
                this.f23390j = B2.b(getLayoutParams().height / U3.b());
            }
            if (!b()) {
                setupBannerSizeObserver();
            }
            scheduleRefresh$media_release();
            if (Build.VERSION.SDK_INT >= 29) {
                V3 v32 = U3.f24244a;
                Context context = getContext();
                WindowInsets rootWindowInsets = getRootWindowInsets();
                Intrinsics.checkNotNullExpressionValue(rootWindowInsets, "getRootWindowInsets(...)");
                U3.a(rootWindowInsets, context);
            }
        } catch (Exception e10) {
            R1 r13 = this.f23384d;
            if (r13 != null && (p10 = r13.p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((A5) p10).a("InMobiBanner", "InMobiBanner#onAttachedToWindow() handler threw unexpected error: ", e10);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        InterfaceC3269z5 p10;
        try {
            super.onDetachedFromWindow();
            a();
            R1 r12 = this.f23384d;
            if (r12 != null) {
                r12.L();
            }
        } catch (Exception e10) {
            R1 r13 = this.f23384d;
            if (r13 != null && (p10 = r13.p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((A5) p10).a("InMobiBanner", "InMobiBanner.onDetachedFromWindow() handler threw unexpected error: ", e10);
            }
        }
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NotNull View changedView, int i10) {
        InterfaceC3269z5 p10;
        Intrinsics.checkNotNullParameter(changedView, "changedView");
        try {
            super.onVisibilityChanged(changedView, i10);
            if (i10 == 0) {
                scheduleRefresh$media_release();
            } else {
                a();
            }
        } catch (Exception e10) {
            R1 r12 = this.f23384d;
            if (r12 != null && (p10 = r12.p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((A5) p10).a("InMobiBanner", "InMobiBanner$1.onVisibilityChanged() handler threw unexpected error: ", e10);
            }
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        InterfaceC3269z5 p10;
        try {
            super.onWindowFocusChanged(z10);
            if (z10) {
                scheduleRefresh$media_release();
            } else {
                a();
            }
        } catch (Exception e10) {
            R1 r12 = this.f23384d;
            if (r12 != null && (p10 = r12.p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((A5) p10).a("InMobiBanner", "InMobiBanner$1.onWindowFocusChanged() handler threw unexpected error: ", e10);
            }
        }
    }

    public final void pause() {
        InterfaceC3269z5 p10;
        R1 r12;
        try {
            if (this.f23393m == null && (r12 = this.f23384d) != null) {
                r12.E();
            }
        } catch (Exception e10) {
            R1 r13 = this.f23384d;
            if (r13 != null && (p10 = r13.p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((A5) p10).a("InMobiBanner", "SDK encountered unexpected error in pausing ad; ", e10);
            }
        }
    }

    public final void refreshBanner$media_release() {
        a(this.f23385e, "NonAB", true);
    }

    public final void resume() {
        InterfaceC3269z5 p10;
        R1 r12;
        try {
            if (this.f23393m == null && (r12 = this.f23384d) != null) {
                r12.H();
            }
        } catch (Exception e10) {
            R1 r13 = this.f23384d;
            if (r13 != null && (p10 = r13.p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((A5) p10).a("InMobiBanner", "SDK encountered unexpected error in resuming ad; ", e10);
            }
        }
    }

    public final void scheduleRefresh$media_release() {
        P1 p12;
        if (isShown() && hasWindowFocus()) {
            P1 p13 = this.f23388h;
            if (p13 != null) {
                p13.removeMessages(1);
            }
            R1 r12 = this.f23384d;
            if (r12 != null && r12.y() && this.f23387g && (p12 = this.f23388h) != null) {
                p12.sendEmptyMessageDelayed(1, this.f23386f * 1000);
            }
        }
    }

    public final void setAnimationType(@NotNull AnimationType animationType) {
        Intrinsics.checkNotNullParameter(animationType, "animationType");
        this.f23391k = animationType;
    }

    public final void setAudioListener(@NotNull AudioListener audioListener) {
        AudioStatus audioStatus;
        Intrinsics.checkNotNullParameter(audioListener, "audioListener");
        this.f23382b = audioListener;
        D1 item = this.f23383c;
        if (item != D1.f23556d && audioListener != null) {
            D1.f23554b.getClass();
            Intrinsics.checkNotNullParameter(item, "item");
            int ordinal = item.ordinal();
            if (ordinal != 1) {
                if (ordinal != 2) {
                    audioStatus = AudioStatus.COMPLETED;
                } else {
                    audioStatus = AudioStatus.PAUSED;
                }
            } else {
                audioStatus = AudioStatus.PLAYING;
            }
            audioListener.onAudioStatusChanged(this, audioStatus);
        }
    }

    public final void setAudioStatusInternal$media_release(@NotNull D1 d12) {
        Intrinsics.checkNotNullParameter(d12, "<set-?>");
        this.f23383c = d12;
    }

    public final void setBannerSize(@IntRange(from = 1) int i10, @IntRange(from = 1) int i11) {
        this.f23389i = i10;
        this.f23390j = i11;
    }

    public final void setContentUrl(@NotNull String contentUrl) {
        Intrinsics.checkNotNullParameter(contentUrl, "contentUrl");
        this.f23394n.f24342f = contentUrl;
    }

    public final void setEnableAutoRefresh(boolean z10) {
        InterfaceC3269z5 p10;
        try {
            if (this.f23387g == z10) {
                return;
            }
            this.f23387g = z10;
            if (z10) {
                scheduleRefresh$media_release();
            } else {
                a();
            }
        } catch (Exception e10) {
            R1 r12 = this.f23384d;
            if (r12 != null && (p10 = r12.p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((A5) p10).a("InMobiBanner", "Setting up auto-refresh failed with unexpected error: ", e10);
            }
        }
    }

    public final void setExtras(@Nullable Map<String, String> map) {
        if (map != null) {
            Vc.a(map.get("tp"));
            Vc.b(map.get("tp-v"));
        }
        this.f23394n.f24339c = map;
    }

    public final void setKeywords(@Nullable String str) {
        this.f23394n.f24338b = str;
    }

    public final void setListener(@NotNull BannerAdEventListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f23381a = new I1(listener);
    }

    public final void setMAdManager$media_release(@Nullable R1 r12) {
        this.f23384d = r12;
    }

    public final void setMAudioListener$media_release(@Nullable AudioListener audioListener) {
        this.f23382b = audioListener;
    }

    public final void setMPubListener$media_release(@Nullable H1 h12) {
        this.f23381a = h12;
    }

    public final void setRefreshInterval(int i10) {
        InterfaceC3269z5 p10;
        int i11;
        try {
            this.f23394n.f24341e = "NonAB";
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            a(context, "banner");
            R1 r12 = this.f23384d;
            if (r12 != null) {
                i11 = r12.a(i10, this.f23386f);
            } else {
                i11 = 0;
            }
            this.f23386f = i11;
        } catch (Exception e10) {
            R1 r13 = this.f23384d;
            if (r13 != null && (p10 = r13.p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((A5) p10).a("InMobiBanner", "Setting refresh interval failed with unexpected error: ", e10);
            }
        }
    }

    public final void setWatermarkData(@NotNull WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(watermarkData, "watermarkData");
        R1 r12 = this.f23384d;
        if (r12 != null) {
            r12.a(watermarkData);
        }
    }

    @TargetApi(16)
    public final void setupBannerSizeObserver() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC3189u5(this));
    }

    @UiThread
    public final void swapAdUnitsAndDisplayAd$media_release() {
        InterfaceC3269z5 p10;
        R1 r12 = this.f23384d;
        if (r12 != null) {
            r12.K();
        }
        try {
            Animation a10 = b.a(this.f23391k, getWidth(), getHeight());
            R1 r13 = this.f23384d;
            if (r13 != null) {
                r13.a(this);
            }
            if (a10 != null) {
                startAnimation(a10);
            }
        } catch (Exception e10) {
            R1 r14 = this.f23384d;
            if (r14 != null && (p10 = r14.p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((A5) p10).a("InMobiBanner", "Unexpected error while displaying Banner Ad : ", e10);
            }
        }
    }

    public final void a(PublisherCallbacks publisherCallbacks, String str, boolean z10) {
        InterfaceC3269z5 p10;
        InterfaceC3269z5 p11;
        InterfaceC3269z5 p12;
        InterfaceC3269z5 p13;
        InterfaceC3269z5 p14;
        try {
            this.f23394n.f24341e = str;
            R1 r12 = this.f23384d;
            if (r12 != null && r12.B()) {
                R1 r13 = this.f23384d;
                if (r13 != null) {
                    r13.w();
                }
                R1 r14 = this.f23384d;
                if (r14 != null && (p14 = r14.p()) != null) {
                    Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                    ((A5) p14).a("InMobiBanner", "load called - placementType - " + str + ' ' + this);
                }
                R1 r15 = this.f23384d;
                if (r15 != null && (p13 = r15.p()) != null) {
                    Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                    ((A5) p13).b("InMobiBanner", "load already in progress");
                }
                R1 r16 = this.f23384d;
                if (r16 != null) {
                    r16.b((short) 2169);
                }
                H1 h12 = this.f23381a;
                if (h12 != null) {
                    h12.a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE));
                }
                R1 r17 = this.f23384d;
                if (r17 != null && (p12 = r17.p()) != null) {
                    Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                    ((A5) p12).b("InMobiBanner", "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad.");
                }
                AbstractC2984h7.a((byte) 1, "InMobi", "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad.");
                return;
            }
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            a(context, "banner");
            R1 r18 = this.f23384d;
            if (r18 != null) {
                r18.w();
            }
            R1 r19 = this.f23384d;
            if (r19 != null && (p11 = r19.p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((A5) p11).a("InMobiBanner", "load called - placementType - " + str + ' ' + this);
            }
            a("load", new C3173t5(this, publisherCallbacks, z10));
        } catch (Exception e10) {
            R1 r110 = this.f23384d;
            if (r110 != null) {
                r110.a((short) 2172);
            }
            H1 h13 = this.f23381a;
            if (h13 != null) {
                h13.a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            }
            R1 r111 = this.f23384d;
            if (r111 == null || (p10 = r111.p()) == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((A5) p10).a("InMobiBanner", "Load failed with unexpected error: ", e10);
        }
    }

    @UiThread
    public final void load() {
        if (a(false)) {
            a(this.f23385e, "NonAB", false);
        }
    }

    @ms.c
    public static /* synthetic */ void getPreloadManager$annotations() {
    }

    @UiThread
    public final void load(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (a(false)) {
            this.f23393m = context instanceof Activity ? new WeakReference(context) : null;
            a(this.f23385e, "NonAB", false);
        }
    }

    public final void a(String str, final Function0 function0) {
        InterfaceC3269z5 p10;
        InterfaceC3269z5 p11;
        R1 r12 = this.f23384d;
        if (r12 != null && (p11 = r12.p()) != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((A5) p11).c("InMobiBanner", "validateSizeAndLoad");
        }
        if (!a(str)) {
            R1 r13 = this.f23384d;
            if (r13 != null && (p10 = r13.p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((A5) p10).b("InMobiBanner", "invalid banner size. fail.");
            }
            R1 r14 = this.f23384d;
            if (r14 != null) {
                r14.a((short) 2170);
            }
            H1 h12 = this.f23381a;
            if (h12 != null) {
                h12.a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.CONFIGURATION_ERROR));
            }
        } else if (!b()) {
            Md.a(new Runnable() { // from class: sb.b
                @Override // java.lang.Runnable
                public final void run() {
                    InMobiBanner.a(InMobiBanner.this, function0);
                }
            }, 200L);
        } else {
            function0.invoke();
        }
    }

    public static final void a(InMobiBanner this$0, Function0 onSuccess) {
        InterfaceC3269z5 p10;
        InterfaceC3269z5 p11;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(onSuccess, "$onSuccess");
        try {
            if (this$0.b()) {
                onSuccess.invoke();
                return;
            }
            R1 r12 = this$0.f23384d;
            if (r12 != null && (p11 = r12.p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((A5) p11).b("InMobiBanner", "The height or width of the banner can not be determined");
            }
            R1 r13 = this$0.f23384d;
            if (r13 != null) {
                r13.a((short) 2171);
            }
            H1 h12 = this$0.f23381a;
            if (h12 != null) {
                h12.a(this$0, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.CONFIGURATION_ERROR));
            }
        } catch (Exception e10) {
            R1 r14 = this$0.f23384d;
            if (r14 != null) {
                r14.a((short) 2172);
            }
            H1 h13 = this$0.f23381a;
            if (h13 != null) {
                h13.a(this$0, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            }
            R1 r15 = this$0.f23384d;
            if (r15 == null || (p10 = r15.p()) == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((A5) p10).a("InMobiBanner", "InMobiBanner$4.run() threw unexpected error: ", e10);
        }
    }

    public final boolean a(String str) {
        InterfaceC3269z5 p10;
        InterfaceC3269z5 p11;
        if (b()) {
            return true;
        }
        if (getLayoutParams() == null) {
            R1 r12 = this.f23384d;
            if (r12 != null && (p11 = r12.p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((A5) p11).b("InMobiBanner", "The layout params of the banner must be set before calling " + str + " or call setBannerSize(int widthInDp, int heightInDp) before " + str);
            }
            return false;
        } else if (getLayoutParams().width != -2 && getLayoutParams().height != -2) {
            if (getLayoutParams() != null) {
                this.f23389i = B2.b(getLayoutParams().width / U3.b());
                this.f23390j = B2.b(getLayoutParams().height / U3.b());
                return true;
            }
            return true;
        } else {
            R1 r13 = this.f23384d;
            if (r13 != null && (p10 = r13.p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((A5) p10).b("InMobiBanner", "The height or width of a Banner ad can't be WRAP_CONTENT or call setBannerSize(int widthInDp, int heightInDp) before ".concat(str));
            }
            return false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InMobiBanner(@NotNull Context context, long j10) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f23383c = D1.f23556d;
        this.f23385e = new a(this);
        this.f23387g = true;
        this.f23391k = AnimationType.ROTATE_HORIZONTAL_AXIS;
        Wa wa2 = new Wa();
        this.f23394n = wa2;
        this.f23395o = new e(this);
        if (Uc.q()) {
            if (context instanceof Activity) {
                this.f23393m = new WeakReference(context);
            }
            this.f23384d = new R1();
            wa2.f24337a = j10;
            a(context, "banner");
            R1 r12 = this.f23384d;
            this.f23386f = r12 != null ? r12.A() : 0;
            this.f23388h = new P1(this);
            return;
        }
        Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
        throw new SdkNotInitializedException("InMobiBanner");
    }

    public final void a(Context context, String str) {
        int i10;
        R1 r12 = this.f23384d;
        if (r12 != null) {
            r12.a(context, this.f23394n, getFrameSizeString(), str);
        }
        R1 r13 = this.f23384d;
        if (r13 != null) {
            int i11 = this.f23386f;
            i10 = r13.a(i11, i11);
        } else {
            i10 = 0;
        }
        this.f23386f = i10;
    }

    public final void a() {
        P1 p12 = this.f23388h;
        if (p12 != null) {
            p12.removeMessages(1);
        }
    }
}
