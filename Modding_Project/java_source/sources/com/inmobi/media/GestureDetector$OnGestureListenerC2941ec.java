package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Base64;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import androidx.webkit.Profile;
import com.iab.omid.library.inmobi.Omid;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.adquality.models.AdQualityControl;
import com.inmobi.ads.WatermarkData;
import com.inmobi.ads.rendering.InMobiAdActivity;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.TelemetryConfig;
import com.inmobi.media.GestureDetector$OnGestureListenerC2941ec;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.ec  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class GestureDetector$OnGestureListenerC2941ec extends X1 implements InterfaceC3231x, InterfaceC2897c2, GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener, InterfaceC3162sa, InterfaceC3259yb {
    public static final Gb Y0 = new Gb();
    public static final Eb Z0 = new Eb();

    /* renamed from: a1  reason: collision with root package name */
    public static final String f24663a1 = GestureDetector$OnGestureListenerC2941ec.class.getSimpleName();

    /* renamed from: b1  reason: collision with root package name */
    public static final C3233x1 f24664b1 = new C3233x1((Object) Boolean.FALSE, (Function0) Fb.f23660a, false, true);
    public JSONObject A;
    public InterfaceC2865a4 A0;
    public boolean B;
    public String B0;
    public boolean C;
    public C3146ra C0;
    public boolean D;
    public C3089o0 D0;
    public boolean E;
    public final AtomicBoolean E0;
    public EnumC2927df F;
    public boolean F0;
    public boolean G;
    public I G0;
    public boolean H;
    public String H0;
    public String I;
    public boolean I0;
    public final AtomicBoolean J;
    public Df J0;
    public final Object K;
    public boolean K0;
    public final Object L;
    public Map L0;
    public boolean M;
    public final Jb M0;
    public final boolean N;
    public final C2924dc N0;
    public View O;
    public String O0;
    public WebChromeClient.CustomViewCallback P;
    public final Ub P0;
    public int Q;
    public final Pb Q0;
    public boolean R;
    public final Hb R0;
    public boolean S;
    public boolean S0;
    public long T;
    public C2932e3 T0;
    public String U;
    public final Vb U0;
    public final AtomicBoolean V;
    public final Xb V0;
    public C3085nc W;
    public final Wb W0;
    public Bf X0;

    /* renamed from: a0  reason: collision with root package name */
    public final ms.i f24665a0;

    /* renamed from: b  reason: collision with root package name */
    public final byte f24666b;

    /* renamed from: b0  reason: collision with root package name */
    public Ia f24667b0;

    /* renamed from: c  reason: collision with root package name */
    public final Set f24668c;

    /* renamed from: c0  reason: collision with root package name */
    public final ms.i f24669c0;

    /* renamed from: d  reason: collision with root package name */
    public String f24670d;

    /* renamed from: d0  reason: collision with root package name */
    public String f24671d0;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f24672e;

    /* renamed from: e0  reason: collision with root package name */
    public Map f24673e0;

    /* renamed from: f  reason: collision with root package name */
    public String f24674f;

    /* renamed from: f0  reason: collision with root package name */
    public InterfaceC2880b2 f24675f0;

    /* renamed from: g  reason: collision with root package name */
    public long f24676g;

    /* renamed from: g0  reason: collision with root package name */
    public InterfaceC3231x f24677g0;

    /* renamed from: h  reason: collision with root package name */
    public final C2989hc f24678h;

    /* renamed from: h0  reason: collision with root package name */
    public boolean f24679h0;

    /* renamed from: i  reason: collision with root package name */
    public final InterfaceC3269z5 f24680i;

    /* renamed from: i0  reason: collision with root package name */
    public boolean f24681i0;

    /* renamed from: j  reason: collision with root package name */
    public final Cc f24682j;

    /* renamed from: j0  reason: collision with root package name */
    public InterfaceC2861a0 f24683j0;

    /* renamed from: k  reason: collision with root package name */
    public final tf f24684k;

    /* renamed from: k0  reason: collision with root package name */
    public Xe f24685k0;

    /* renamed from: l  reason: collision with root package name */
    public final Q f24686l;

    /* renamed from: l0  reason: collision with root package name */
    public final boolean f24687l0;

    /* renamed from: m  reason: collision with root package name */
    public Ha f24688m;

    /* renamed from: m0  reason: collision with root package name */
    public int f24689m0;

    /* renamed from: n  reason: collision with root package name */
    public byte f24690n;

    /* renamed from: n0  reason: collision with root package name */
    public String f24691n0;

    /* renamed from: o  reason: collision with root package name */
    public final Bd f24692o;

    /* renamed from: o0  reason: collision with root package name */
    public int[] f24693o0;

    /* renamed from: p  reason: collision with root package name */
    public final ms.i f24694p;

    /* renamed from: p0  reason: collision with root package name */
    public long f24695p0;

    /* renamed from: q  reason: collision with root package name */
    public WeakReference f24696q;

    /* renamed from: q0  reason: collision with root package name */
    public int f24697q0;

    /* renamed from: r  reason: collision with root package name */
    public WeakReference f24698r;

    /* renamed from: r0  reason: collision with root package name */
    public final Ib f24699r0;

    /* renamed from: s  reason: collision with root package name */
    public AbstractC2973gc f24700s;

    /* renamed from: s0  reason: collision with root package name */
    public final Sb f24701s0;

    /* renamed from: t  reason: collision with root package name */
    public final Zb f24702t;

    /* renamed from: t0  reason: collision with root package name */
    public int f24703t0;

    /* renamed from: u  reason: collision with root package name */
    public String f24704u;

    /* renamed from: u0  reason: collision with root package name */
    public int f24705u0;

    /* renamed from: v  reason: collision with root package name */
    public F7 f24706v;

    /* renamed from: v0  reason: collision with root package name */
    public final C3271z7 f24707v0;

    /* renamed from: w  reason: collision with root package name */
    public AdConfig f24708w;

    /* renamed from: w0  reason: collision with root package name */
    public final GestureDetector f24709w0;

    /* renamed from: x  reason: collision with root package name */
    public boolean f24710x;

    /* renamed from: x0  reason: collision with root package name */
    public boolean f24711x0;

    /* renamed from: y  reason: collision with root package name */
    public boolean f24712y;

    /* renamed from: y0  reason: collision with root package name */
    public boolean f24713y0;

    /* renamed from: z  reason: collision with root package name */
    public JSONObject f24714z;

    /* renamed from: z0  reason: collision with root package name */
    public C2899c4 f24715z0;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GestureDetector$OnGestureListenerC2941ec(android.content.Context r17, byte r18, java.util.Set r19, java.lang.String r20, boolean r21, java.lang.String r22, long r23, com.inmobi.media.C2989hc r25, com.inmobi.media.InterfaceC3269z5 r26, com.inmobi.media.Cc r27, com.inmobi.media.tf r28, com.inmobi.media.Q r29, int r30) {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.GestureDetector$OnGestureListenerC2941ec.<init>(android.content.Context, byte, java.util.Set, java.lang.String, boolean, java.lang.String, long, com.inmobi.media.hc, com.inmobi.media.z5, com.inmobi.media.Cc, com.inmobi.media.tf, com.inmobi.media.Q, int):void");
    }

    public static final void a(GestureDetector$OnGestureListenerC2941ec renderView, byte[] overlayBytes, WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(renderView, "this$0");
        Intrinsics.checkNotNullParameter(overlayBytes, "$overlayBytes");
        Intrinsics.checkNotNullParameter(watermarkData, "$watermarkData");
        if (renderView.V.get()) {
            return;
        }
        InterfaceC3269z5 interfaceC3269z5 = renderView.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "adding overlay to renderview");
        }
        Context context = renderView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        FrameLayout overlayLayout = nf.a(context, overlayBytes, watermarkData.getAlpha());
        Intrinsics.checkNotNullParameter(overlayLayout, "overlayLayout");
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (renderView.getParent() != null) {
            ViewParent parent = renderView.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).addView(overlayLayout, 0);
        }
        renderView.getViewableAd().a(overlayLayout, FriendlyObstructionPurpose.NOT_VISIBLE);
        renderView.V.set(true);
    }

    private final TelemetryConfig.LandingPageConfig getLandingPageConfig() {
        return (TelemetryConfig.LandingPageConfig) this.f24669c0.getValue();
    }

    private final AdConfig.MraidConfig getMraidConfig() {
        return getMAdConfig().getMraidConfig();
    }

    private final C2926de getScrollThrottler() {
        return (C2926de) this.f24665a0.getValue();
    }

    private final void setAdSize(String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str2 = f24663a1;
            ((A5) interfaceC3269z5).a(str2, Ob.a(this, str2, "TAG", "setAdSize "));
        }
        V3 v32 = U3.f24244a;
        this.f24689m0 = (int) (U3.b() * Integer.parseInt(((String[]) new Regex(TextureRenderKeys.KEY_IS_X).q(str, 0).toArray(new String[0]))[0]));
        this.f24695p0 = ((int) (U3.b() * Integer.parseInt(((String[]) new Regex(TextureRenderKeys.KEY_IS_X).q(str, 0).toArray(new String[0]))[1]))) * this.f24689m0;
    }

    public final void A() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "updateActivitiesOrientationProperties "));
        }
        Activity activity = (Activity) this.f24696q.get();
        if (activity != null && (activity instanceof InMobiAdActivity)) {
            C3146ra orientationProperties = this.C0;
            Intrinsics.checkNotNullParameter(orientationProperties, "orientationProperties");
            C3046l5 c3046l5 = ((InMobiAdActivity) activity).f23429a;
            if (c3046l5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("orientationHandler");
                c3046l5 = null;
            }
            c3046l5.a(orientationProperties);
        }
    }

    public final void B() {
        ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25480b.getValue()).execute(new Runnable() { // from class: ub.c4
            @Override // java.lang.Runnable
            public final void run() {
                GestureDetector$OnGestureListenerC2941ec.c(GestureDetector$OnGestureListenerC2941ec.this);
            }
        });
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public void b() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "destroyContainer "));
        }
        h();
        this.f24684k.b(Qb.f24046a);
        removeAllViews();
        AdConfig.OmidConfig omidConfig = getMAdConfig().getViewability().getOmidConfig();
        if (this.f24687l0 && omidConfig.isOmidEnabled()) {
            AbstractC3083na.f25061a.getClass();
            if (Omid.isActive()) {
                new C3005ic(this, omidConfig.getWebViewRetainTime()).a();
                return;
            }
        }
        super.destroy();
    }

    public final void c(boolean z10) {
        C3089o0 c3089o0;
        AdQualityControl adQualityControl;
        Activity activity;
        C3089o0 c3089o02;
        AdQualityControl adQualityControl2;
        EnumC2927df enumC2927df = z10 ? EnumC2927df.f24613c : EnumC2927df.f24612b;
        if (this.F == enumC2927df || this.M) {
            return;
        }
        this.F = enumC2927df;
        if (z10) {
            getListener().i(this);
        }
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "fireViewableChange " + this + ' ' + z10);
        }
        c("window.mraidview.broadcastEvent('viewableChange'," + z10 + ");");
        C3089o0 c3089o03 = this.D0;
        if (c3089o03 != null) {
            EnumC2927df adViewableStatus = this.F;
            Intrinsics.checkNotNullParameter(adViewableStatus, "adViewableStatus");
            c3089o03.f25080h = adViewableStatus;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
        if (interfaceC3269z52 != null) {
            String str = f24663a1;
            StringBuilder a10 = H6.a(str, "TAG", "fireAQSession - ");
            a10.append(getAdType());
            a10.append(" type - sdk - ");
            a10.append(Build.VERSION.SDK_INT);
            ((A5) interfaceC3269z52).a(str, a10.toString());
        }
        if (Intrinsics.areEqual(getAdType(), "int") && Build.VERSION.SDK_INT >= 29 && (activity = (Activity) this.f24696q.get()) != null) {
            C3089o0 c3089o04 = this.D0;
            if (c3089o04 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adQualityManager");
                c3089o02 = null;
            } else {
                c3089o02 = c3089o04;
            }
            c3089o02.getClass();
            Intrinsics.checkNotNullParameter(activity, "activity");
            if (!c3089o02.a()) {
                c3089o02.a("session state invalid");
                return;
            }
            c3089o02.a("session start trigger...");
            c3089o02.f25075c.set(true);
            AdQualityControl adQualityControl3 = c3089o02.f25079g;
            if (adQualityControl3 == null || !adQualityControl3.getTakeScreenshot() || (adQualityControl2 = c3089o02.f25079g) == null) {
                return;
            }
            c3089o02.a(activity, adQualityControl2.getScreenshotDelayInSeconds() * 1000, false, (Jb) null);
            return;
        }
        C3089o0 c3089o05 = this.D0;
        if (c3089o05 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adQualityManager");
            c3089o0 = null;
        } else {
            c3089o0 = c3089o05;
        }
        c3089o0.getClass();
        Intrinsics.checkNotNullParameter(this, "adView");
        if (!c3089o0.a()) {
            c3089o0.a("session state invalid");
            return;
        }
        c3089o0.a("session start trigger...");
        c3089o0.f25075c.set(true);
        AdQualityControl adQualityControl4 = c3089o0.f25079g;
        if (adQualityControl4 == null || !adQualityControl4.getTakeScreenshot() || (adQualityControl = c3089o0.f25079g) == null) {
            return;
        }
        c3089o0.a(this, adQualityControl.getScreenshotDelayInSeconds() * 1000, false, (Jb) null);
    }

    public final void d(String str) {
        C3085nc c3085nc = this.W;
        if (c3085nc != null) {
            c3085nc.b();
        }
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str2 = f24663a1;
            ((A5) interfaceC3269z5).a(str2, Ob.a(this, str2, "TAG", "loadDataInWebView "));
        }
        this.M = false;
        if (this.J.get()) {
            return;
        }
        Intrinsics.checkNotNull(str);
        loadDataWithBaseURL("", str, "text/html", "UTF-8", null);
    }

    public final void e(String str) {
        C3085nc c3085nc = this.W;
        if (c3085nc != null) {
            c3085nc.b();
        }
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str2 = f24663a1;
            ((A5) interfaceC3269z5).a(str2, Ob.a(this, str2, "TAG", "loadUrlInWebView "));
        }
        this.M = false;
        if (this.J.get() || str == null) {
            return;
        }
        loadUrl(str);
    }

    @Override // com.inmobi.media.X1
    public final M6 f() {
        S6 s62;
        String str;
        String str2;
        String str3;
        Z z10;
        String b10;
        Z z11;
        String m10;
        Z z12;
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str4 = f24663a1;
            ((A5) interfaceC3269z5).a(str4, Ob.a(this, str4, "TAG", "initLandingPageHandler "));
        }
        N6 n62 = new N6(this.f24672e, this.f24674f, getAdConfig().isCCTEnabled(), getAdConfig().getPartialTabsEnabled());
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        Pb pb2 = this.Q0;
        Ub ub2 = this.P0;
        if (this.f24672e) {
            s62 = null;
        } else {
            C2989hc c2989hc = this.f24678h;
            long l10 = (c2989hc == null || (z12 = c2989hc.f24816a) == null) ? 0L : z12.l();
            String impressionId = getImpressionId();
            String str5 = impressionId == null ? "" : impressionId;
            C2989hc c2989hc2 = this.f24678h;
            String str6 = (c2989hc2 == null || (z11 = c2989hc2.f24816a) == null || (m10 = z11.m()) == null) ? "" : m10;
            C2989hc c2989hc3 = this.f24678h;
            String str7 = (c2989hc3 == null || (z10 = c2989hc3.f24816a) == null || (b10 = z10.b()) == null) ? "" : b10;
            C2989hc c2989hc4 = this.f24678h;
            s62 = new S6(l10, str5, str6, str7, (c2989hc4 == null || (str3 = c2989hc4.f24817b) == null) ? "" : str3, (c2989hc4 == null || (str2 = c2989hc4.f24820e) == null) ? "" : str2, (c2989hc4 == null || (str = c2989hc4.f24818c) == null) ? "" : str, c2989hc4 != null ? c2989hc4.f24822g : false, this.f24674f);
        }
        return new M6(context, n62, pb2, ub2, this, s62, this.f24680i);
    }

    public final void g() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "deferredDestroy "));
        }
        super.destroy();
    }

    @Override // com.inmobi.media.InterfaceC3231x
    @NotNull
    public AdConfig getAdConfig() {
        return getMAdConfig();
    }

    @Nullable
    public final Q getAdMetaData() {
        return this.f24686l;
    }

    @Nullable
    public final InterfaceC2861a0 getAdPodHandler() {
        return this.f24683j0;
    }

    @NotNull
    public final C3089o0 getAdQualityManager() {
        C3089o0 c3089o0 = this.D0;
        if (c3089o0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adQualityManager");
            return null;
        }
        return c3089o0;
    }

    @Override // com.inmobi.media.InterfaceC3231x
    @Nullable
    public String getAdType() {
        return this.f24671d0;
    }

    public final boolean getAllowAutoRedirection() {
        return this.f24681i0;
    }

    public final int getArea() {
        return getHeight() * getWidth();
    }

    @Nullable
    public final String getBeaconUrl() {
        return this.H0;
    }

    @NotNull
    public final Bf getCloseAssetArea() {
        return this.X0;
    }

    public final long getConfiguredArea() {
        return this.f24695p0;
    }

    @NotNull
    public Context getContainerContext() {
        Activity activity = (Activity) this.f24696q.get();
        if (activity == null) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            return context;
        }
        return activity;
    }

    @Nullable
    public final String getContentURL() {
        return this.f24691n0;
    }

    @Nullable
    public final C2932e3 getContextualDataHandler() {
        return this.T0;
    }

    @NotNull
    public final String getCreativeID() {
        String creativeId = getCreativeId();
        if (creativeId == null) {
            return "";
        }
        return creativeId;
    }

    @Override // com.inmobi.media.InterfaceC3231x
    @Nullable
    public String getCreativeId() {
        return this.U;
    }

    @NotNull
    public final String getCurrentPosition() {
        String str;
        JSONObject jSONObject = this.A;
        if (jSONObject != null) {
            str = jSONObject.toString();
        } else {
            str = null;
        }
        if (str == null) {
            return "";
        }
        return str;
    }

    @NotNull
    public final Object getCurrentPositionMonitor() {
        return this.L;
    }

    @WorkerThread
    public final int getCurrentRenderingPodAdIndex() {
        InterfaceC2861a0 interfaceC2861a0 = this.f24683j0;
        if (interfaceC2861a0 != null) {
            return ((S0) interfaceC2861a0).l(this);
        }
        return 0;
    }

    @Override // com.inmobi.media.InterfaceC3231x
    @Nullable
    public Object getDataModel() {
        return null;
    }

    @NotNull
    public final String getDefaultPosition() {
        String str;
        JSONObject jSONObject = this.f24714z;
        if (jSONObject != null) {
            str = jSONObject.toString();
        } else {
            str = null;
        }
        if (str == null) {
            return "";
        }
        return str;
    }

    @NotNull
    public final Object getDefaultPositionMonitor() {
        return this.K;
    }

    @Nullable
    public final InterfaceC2865a4 getEmbeddedBrowserJsCallbacks() {
        return this.A0;
    }

    @Nullable
    public final I getExposureTracker() {
        return this.G0;
    }

    @Nullable
    public Map<View, FriendlyObstructionPurpose> getFriendlyViews() {
        return this.f24673e0;
    }

    @Nullable
    public final Activity getFullScreenActivity() {
        return (Activity) this.f24696q.get();
    }

    @Override // com.inmobi.media.InterfaceC3231x
    @NotNull
    public InterfaceC3215w getFullScreenEventsListener() {
        return this.U0;
    }

    @Override // com.inmobi.media.InterfaceC3231x
    @Nullable
    public String getImpressionId() {
        return this.f24670d;
    }

    public final byte getImpressionType() {
        return this.f24690n;
    }

    @NotNull
    public final String getLandingScheme() {
        return this.f24674f;
    }

    @NotNull
    public final AbstractC2973gc getListener() {
        AbstractC2973gc abstractC2973gc = this.f24700s;
        if (abstractC2973gc == null) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
            if (interfaceC3269z5 != null) {
                String str = f24663a1;
                ((A5) interfaceC3269z5).c(str, Ob.a(this, str, "TAG", "listener getter "));
            }
            Eb eb2 = Z0;
            this.f24700s = eb2;
            return eb2;
        }
        return abstractC2973gc;
    }

    @NotNull
    public final AdConfig getMAdConfig() {
        AdConfig adConfig = this.f24708w;
        if (adConfig != null) {
            return adConfig;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
        return null;
    }

    @Nullable
    public final String getMCreativeType() {
        return this.B0;
    }

    public final int getMImpressionMinPercentageViewed() {
        return this.f24705u0;
    }

    public final int getMImpressionMinTimeViewed() {
        return this.f24703t0;
    }

    @Nullable
    public final Xe getMViewableAd() {
        return this.f24685k0;
    }

    @Override // com.inmobi.media.InterfaceC3231x
    @NotNull
    public String getMarkupType() {
        return this.O0;
    }

    @NotNull
    public final String getMarkupTypeAdUnit() {
        return this.O0;
    }

    @Nullable
    public final F7 getMediaProcessor() {
        return this.f24706v;
    }

    public final int getMinimumPixelsPainted() {
        return this.f24697q0;
    }

    @NotNull
    public final String getMraidJsString() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).c(str, Ob.a(this, str, "TAG", "mraidJsString getter "));
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        String a10 = new Sa(context, "mraid_js_store").a("mraid_js_string");
        if (a10 == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
            if (interfaceC3269z52 != null) {
                String TAG = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z52).a(TAG, "Returning default Mraid Js string.");
            }
            return "var imIsObjValid=function(a){return\"undefined\"!=typeof a&&null!=a?!0:!1},EventListeners=function(a){this.event=a;this.count=0;var b=[];this.add=function(a){b.push(a);++this.count};this.remove=function(a){var e=!1,d=this;b=b.filter(function(b){if(b=b===a)--d.count,e=!0;return!b});return e};this.removeAll=function(){b=[];this.count=0};this.broadcast=function(a){b.forEach(function(e){try{e.apply({},a)}catch(b){}})};this.toString=function(){var c=[a,\":\"];b.forEach(function(a){c.push(\"|\",String(a),\"|\")});\nreturn c.join(\"\")}},InmobiObj=function(){this.listeners=[];this.addEventListener=function(a,b){try{if(imIsObjValid(b)&&imIsObjValid(a)){var c=this.listeners;c[a]||(c[a]=new EventListeners);c[a].add(b);\"micIntensityChange\"==a&&window.imraidview.startListeningMicIntensity();\"deviceMuted\"==a&&window.imraidview.startListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&window.imraidview.startListeningDeviceVolumeChange();\"volumeChange\"==a&&window.imraidview.startListeningVolumeChange();\"headphones\"==a&&\nwindow.imraidview.startListeningHeadphonePluggedEvents();\"backButtonPressed\"==a&&window.imraidview.startListeningForBackButtonPressedEvent();\"downloadStatusChanged\"==a&&window.imraidview.registerDownloaderCallbacks()}}catch(e){this.log(e)}};this.removeEventListener=function(a,b){if(imIsObjValid(a)){var c=this.listeners;imIsObjValid(c[a])&&(imIsObjValid(b)?c[a].remove(b):c[a].removeAll());\"micIntensityChange\"==a&&0==c[a].count&&window.imraidview.stopListeningMicIntensity();\"deviceMuted\"==a&&0==c[a].count&&\nwindow.imraidview.stopListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningDeviceVolumeChange();\"volumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningVolumeChange();\"headphones\"==a&&0==c[a].count&&window.imraidview.stopListeningHeadphonePluggedEvents();\"backButtonPressed\"==a&&0==c[a].count&&window.imraidview.stopListeningForBackButtonPressedEvent();\"downloadStatusChanged\"==a&&0==c[a].count&&window.imraidview.unregisterDownloaderCallbacks()}};\nthis.broadcastEvent=function(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)b[c]=arguments[c];c=b.shift();try{this.listeners[c]&&this.listeners[c].broadcast(b)}catch(e){}}};this.sendSaveContentResult=function(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)if(2==c){var e=arguments[c],e=JSON.parse(e);b[c]=e}else b[c]=arguments[c];e=b[1];\"success\"!=e&&(c=b[0].substring(b[0].indexOf(\"_\")+1),imraid.saveContentIDMap[c]&&delete imraid.saveContentIDMap[c]);\nwindow.imraid.broadcastEvent(b[0],b[1],b[2])}}},__im__iosNativeMessageHandler=void 0;window.webkit&&(window.webkit.messageHandlers&&window.webkit.messageHandlers.nativeMessageHandler)&&(__im__iosNativeMessageHandler=window.webkit.messageHandlers.nativeMessageHandler);\nvar __im__iosNativeCall={nativeCallInFlight:!1,nativeCallQueue:[],executeNativeCall:function(a){this.nativeCallInFlight?this.nativeCallQueue.push(a):(this.nativeCallInFlight=!0,imIsObjValid(__im__iosNativeMessageHandler)?__im__iosNativeMessageHandler.postMessage(a):window.location=a)},nativeCallComplete:function(a){0==this.nativeCallQueue.length?this.nativeCallInFlight=!1:(a=this.nativeCallQueue.shift(),imIsObjValid(__im__iosNativeMessageHandler)?__im__iosNativeMessageHandler.postMessage(a):window.location=\na)}},IOSNativeCall=function(){this.urlScheme=\"\";this.executeNativeCall=function(a){if(imIsObjValid(__im__iosNativeMessageHandler)){e={};e.command=a;e.scheme=this.urlScheme;for(var b={},c=1;c<arguments.length;c+=2)d=arguments[c+1],null!=d&&(b[arguments[c]]=\"\"+d);e.params=b}else for(var e=this.urlScheme+\"://\"+a,d,b=!0,c=1;c<arguments.length;c+=2)d=arguments[c+1],null!=d&&(b?(e+=\"?\",b=!1):e+=\"&\",e+=arguments[c]+\"=\"+escape(d));__im__iosNativeCall.executeNativeCall(e);return\"OK\"};this.nativeCallComplete=\nfunction(a){__im__iosNativeCall.nativeCallComplete(a);return\"OK\"};this.updateKV=function(a,b){this[a]=b;var c=this.broadcastMap[a];c&&this.broadcastEvent(c,b)}};\n(function(){var a=window.mraidview={};a.orientationProperties={allowOrientationChange:!0,forceOrientation:\"none\",direction:\"right\"};var b=[],c=!1;a.detectAndBlockFraud=function(e){a.isPossibleFraud()&&a.fireRedirectFraudBeacon(e);return!1};a.popupBlocked=function(e){a.firePopupBlockedBeacon(e)};a.zeroPad=function(a){var c=\"\";10>a&&(c+=\"0\");return c+a};a.supports=function(a){console.log(\"bridge: supports (MRAID)\");if(\"string\"!=typeof a)window.mraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\n\"supports\");else return\"false\"!=sdkController.supports(\"window.mraidview\",a)};a.useCustomClose=function(a){try{sdkController.useCustomClose(\"window.mraidview\",a)}catch(c){imraidview.showAlert(\"use CustomClose: \"+c)}};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};a.stackCommands=function(a,d){c?b.push(a):(eval(a),d&&(c=!0))};a.setOrientationProperties=function(e){try{e?(\"undefined\"!=typeof e.allowOrientationChange&&(a.orientationProperties.allowOrientationChange=\ne.allowOrientationChange),\"undefined\"!=typeof e.forceOrientation&&(a.orientationProperties.forceOrientation=e.forceOrientation)):e=null,sdkController.setOrientationProperties(\"window.mraidview\",a.stringify(a.orientationProperties))}catch(c){imraidview.showAlert(\"setOrientationProperties: \"+c+\", props = \"+e)}};a.getOrientationProperties=function(){return{forceOrientation:a.orientationProperties.forceOrientation,allowOrientationChange:a.orientationProperties.allowOrientationChange}};a.resizeProps=null;\na.open=function(a){\"undefined\"==typeof a&&(a=null);try{sdkController.open(\"window.mraidview\",a)}catch(c){imraidview.showAlert(\"open: \"+c)}};a.getScreenSize=function(){try{return eval(\"(\"+sdkController.getScreenSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getScreenSize: \"+a)}};a.getMaxSize=function(){try{return eval(\"(\"+sdkController.getMaxSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getMaxSize: \"+a)}};a.getCurrentPosition=function(){try{return eval(\"(\"+sdkController.getCurrentPosition(\"window.mraidview\")+\n\")\")}catch(a){imraidview.showAlert(\"getCurrentPosition: \"+a)}};a.getDefaultPosition=function(){try{return eval(\"(\"+sdkController.getDefaultPosition(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getDefaultPosition: \"+a)}};a.getState=function(){try{return String(sdkController.getState(\"window.mraidview\"))}catch(a){imraidview.showAlert(\"getState: \"+a)}};a.isViewable=function(){if(imraidview.fallbackViewabilityEnabled())return imraidview.checkFallbackViewable();try{return sdkController.isViewable(\"window.mraidview\")}catch(a){imraidview.showAlert(\"isViewable: \"+\na)}};a.getPlacementType=function(){return sdkController.getPlacementType(\"window.mraidview\")};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};\"function\"!=typeof String.prototype.startsWith&&(String.prototype.startsWith=function(a){return 0==this.indexOf(a)});a.playVideo=function(a){var c=\"\";null!=a&&(c=a);try{sdkController.playVideo(\"window.mraidview\",c)}catch(b){imraidview.showAlert(\"playVideo: \"+b)}};a.stringify=function(c){if(\"undefined\"===\ntypeof JSON){var b=\"\",f;if(\"undefined\"==typeof c.length)return a.stringifyArg(c);for(f=0;f<c.length;f++)0<f&&(b+=\",\"),b+=a.stringifyArg(c[f]);return b+\"]\"}return JSON.stringify(c)};a.stringifyArg=function(a){var c,b,g;b=typeof a;c=\"\";if(\"number\"===b||\"boolean\"===b)c+=args;else if(a instanceof Array)c=c+\"[\"+a+\"]\";else if(a instanceof Object){b=!0;c+=\"{\";for(g in a)null!==a[g]&&(b||(c+=\",\"),c=c+'\"'+g+'\":',b=typeof a[g],c=\"number\"===b||\"boolean\"===b?c+a[g]:\"function\"===typeof a[g]?c+'\"\"':a[g]instanceof\nObject?c+this.stringify(args[i][g]):c+'\"'+a[g]+'\"',b=!1);c+=\"}\"}else a=a.replace(/\\\\/g,\"\\\\\\\\\"),a=a.replace(/\"/g,'\\\\\"'),c=c+'\"'+a+'\"';imraidview.showAlert(\"json:\"+c);return c};getPID=function(a){var c=\"\";null!=a&&(\"undefined\"!=typeof a.id&&null!=a.id)&&(c=a.id);return c};a.storePicture=function(c){console.log(\"bridge: storePicture\");if(\"string\"!=typeof c)window.mraid.broadcastEvent(\"error\",\"storePicture method expects url as string parameter\",\"storePicture\");else{if(a.supports(\"storePicture\"))return!window.confirm(\"Do you want to download the file?\")?\n(window.mraid.broadcastEvent(\"error\",\"Store picture on \"+c+\" was cancelled by user.\",\"storePicture\"),!1):sdkController.storePicture(\"window.mraidview\",c);window.mraid.broadcastEvent(\"error\",\"Store picture on \"+c+\" was cancelled because it is unsupported in this device/app.\",\"storePicture\")}};a.fireMediaTrackingEvent=function(a,c){};a.fireMediaErrorEvent=function(a,c){};a.fireMediaTimeUpdateEvent=function(a,c,b){};a.fireMediaCloseEvent=function(a,c,b){};a.fireMediaVolumeChangeEvent=function(a,c,b){};\na.broadcastEvent=function(){window.mraid.broadcastEvent.apply(window.mraid,arguments)};a.unload=function(){try{sdkController.unload(\"window.mraidview\")}catch(a){}};a.getCurrentAppOrientation=function(){var c;switch(a.orientation){case 0:case 180:c=\"portrait\";break;case 90:case 270:c=\"landscape\";break;default:c=\"none\"}return{orientation:c,locked:!1}};a.expand=function(a){try{\"undefined\"==typeof a&&(a=null),sdkController.expand(\"window.mraidview\",a)}catch(c){imraidview.showAlert(\"executeNativeExpand: \"+\nc+\", URL = \"+a)}};a.setExpandProperties=function(c){try{c?this.props=c:c=null;if(\"undefined\"!=typeof c.lockOrientation&&null!=c.lockOrientation&&\"undefined\"!=typeof c.orientation&&null!=c.orientation){var b={};b.allowOrientationChange=!c.lockOrientation;b.forceOrientation=c.orientation;a.setOrientationProperties(b)}sdkController.setExpandProperties(\"window.mraidview\",a.stringify(c))}catch(f){imraidview.showAlert(\"executeNativesetExpandProperties: \"+f+\", props = \"+c)}};a.getExpandProperties=function(){try{return eval(\"(\"+\nsdkController.getExpandProperties(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getExpandProperties: \"+a)}};a.resizeProps=null;a.setResizeProperties=function(c){var b,f;try{b=parseInt(c.width);f=parseInt(c.height);if(isNaN(b)||isNaN(f)||1>b||1>f)throw\"Invalid\";c.width=b;c.height=f;a.resizeProps=c;sdkController.setResizeProperties(\"window.mraidview\",a.stringify(c))}catch(g){window.mraid.broadcastEvent(\"error\",\"Invalid properties.\",\"setResizeProperties\")}};a.getResizeProperties=function(){try{return eval(\"(\"+\nsdkController.getResizeProperties(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getResizeProperties: \"+a)}};a.resize=function(){if(null==a.resizeProps)window.mraid.broadcastEvent(\"error\",\"Valid resize dimensions must be provided before calling resize\",\"resize\");else try{sdkController.resize(\"window.mraidview\")}catch(c){imraidview.showAlert(\"resize called in bridge\")}}})();\n(function(){var a=window.mraid=new InmobiObj,b=window.mraidview,c=!1;b.isAdShownToUser=!1;b.onUserInteraction=function(){imraidview.onUserInteraction();c=!0};b.isPossibleFraud=function(){return a.supports(\"redirectFraudDetection\")&&(!b.isAdShownToUser||!c)};b.fireRedirectFraudBeacon=function(a){if(\"undefined\"!=typeof inmobi&&inmobi.recordEvent){var c={};c.trigger=a;c.isAdShown=b.isAdShownToUser.toString();inmobi.recordEvent(135,c)}};b.getSdkVersionInt=function(){for(var a=imraid.getSdkVersion().split(\".\"),\nc=a.length,b=\"\",g=0;g<c;g++)b+=a[g];return parseInt(b)};b.firePopupBlockedBeacon=function(a){if(\"undefined\"!=typeof inmobi&&inmobi.recordEvent){var c={};c.trigger=a;inmobi.recordEvent(136,c)}};window.onbeforeunload=function(){b.detectAndBlockFraud(\"redirect\")};a.addEventListener(\"viewableChange\",function(a){a&&!b.isAdShownToUser&&(b.isAdShownToUser=!0)});a.useCustomClose=b.useCustomClose;a.close=b.close;a.getExpandProperties=function(){if(1083<=b.getSdkVersionInt())return window.mraid.broadcastEvent(\"error\",\n\"Method not supported\",\"getExpandProperties\"),null;window.mraid.broadcastEvent(\"error\",\"MRAID getExpandProperties is deprecated\",\"getExpandProperties\");return b.getExpandProperties()};a.setExpandProperties=function(c){1083<=b.getSdkVersionInt()?window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"setExpandProperties\"):(\"undefined\"!=typeof c&&(\"useCustomClose\"in c&&\"undefined\"!=typeof a.getState()&&\"expanded\"!=a.getState())&&a.useCustomClose(c.useCustomClose),window.mraid.broadcastEvent(\"error\",\n\"MRAID setExpandProperties is deprecated\",\"setExpandProperties\"),b.setExpandProperties(c))};a.getResizeProperties=function(){if(1083<=b.getSdkVersionInt())return window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"getResizeProperties\"),null;window.mraid.broadcastEvent(\"error\",\"MRAID getResizeProperties is deprecated\",\"getResizeProperties\");return b.getResizeProperties()};a.setResizeProperties=function(a){1083<=b.getSdkVersionInt()?window.mraid.broadcastEvent(\"error\",\"Method not supported\",\n\"setResizeProperties\"):(window.mraid.broadcastEvent(\"error\",\"MRAID setResizeProperties is deprecated\",\"setResizeProperties\"),b.setResizeProperties(a))};a.getOrientationProperties=b.getOrientationProperties;a.setOrientationProperties=b.setOrientationProperties;a.expand=function(a){try{1083<=b.getSdkVersionInt()?\"string\"===typeof a&&\"\"!==a.trim()?b.open(a):window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"expand\"):(window.mraid.broadcastEvent(\"error\",\"MRAID expand is deprecated\",\"expand\"),\nb.expand(a))}catch(c){window.mraid.broadcastEvent(\"error\",\"error\",\"expand\")}};a.getMaxSize=b.getMaxSize;a.getState=b.getState;a.isViewable=b.isViewable;a.createCalendarEvent=function(a){window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"createCalendarEvent\")};a.open=function(c){b.detectAndBlockFraud(\"mraid.open\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"open\"):b.open(c))};a.resize=function(){try{1083<=b.getSdkVersionInt()?window.mraid.broadcastEvent(\"error\",\"MRAID resize not supported\",\n\"resize\"):(window.mraid.broadcastEvent(\"error\",\"MRAID resize is deprecated\",\"resize\"),b.expand())}catch(a){window.mraid.broadcastEvent(\"error\",\"error\",\"expand\")}};a.getVersion=function(){return\"3.0\"};a.getPlacementType=b.getPlacementType;a.playVideo=function(a){b.playVideo(a)};a.getScreenSize=b.getScreenSize;a.getCurrentPosition=b.getCurrentPosition;a.getDefaultPosition=b.getDefaultPosition;a.supports=function(a){return b.supports(a)};a.storePicture=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\n\"Request must specify a valid URL\",\"storePicture\"):b.storePicture(c)};a.unload=function(){b.unload()};a.getCurrentAppOrientation=b.getCurrentAppOrientation;a.getLocation=function(){return null};a.getAudioVolume=b.getAudioVolume})();\n(function(){var a=window.imraidview={},b=!1;a.setOrientationProperties=function(c){try{c?(\"undefined\"!=typeof c.allowOrientationChange&&(mraidview.orientationProperties.allowOrientationChange=c.allowOrientationChange),\"undefined\"!=typeof c.forceOrientation&&(mraidview.orientationProperties.forceOrientation=c.forceOrientation),\"undefined\"!=typeof c.direction&&(mraidview.orientationProperties.direction=c.direction)):c=null,sdkController.setOrientationProperties(\"window.imraidview\",mraidview.stringify(mraidview.orientationProperties))}catch(b){a.showAlert(\"setOrientationProperties: \"+\nb+\", props = \"+c)}};a.getOrientationProperties=function(){return mraidview.orientationProperties};a.firePostStatusEvent=function(a){window.imraid.broadcastEvent(\"postStatus\",a)};a.fireMediaTrackingEvent=function(a,b){var d={};d.name=a;var f=\"inmobi_media_\"+a;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(f=f+\"_\"+b);window.imraid.broadcastEvent(f,d)};a.fireMediaErrorEvent=function(a,b){var d={name:\"error\"};d.code=b;var f=\"inmobi_media_\"+d.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(f=f+\"_\"+a);window.imraid.broadcastEvent(f,\nd)};a.fireMediaTimeUpdateEvent=function(a,b,d){var f={name:\"timeupdate\",target:{}};f.target.currentTime=b;f.target.duration=d;b=\"inmobi_media_\"+f.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,f)};a.saveContent=function(a,b,d){window.imraid.addEventListener(\"saveContent_\"+a,d);sdkController.saveContent(\"window.imraidview\",a,b)};a.cancelSaveContent=function(a){sdkController.cancelSaveContent(\"window.imraidview\",a)};a.disableCloseRegion=function(a){sdkController.disableCloseRegion(\"window.imraidview\",\na)};a.fireGalleryImageSelectedEvent=function(a,b,d){var f=new Image;f.src=\"data:image/jpeg;base64,\"+a;f.width=b;f.height=d;window.imraid.broadcastEvent(\"galleryImageSelected\",f)};a.fireCameraPictureCatpturedEvent=function(a,b,d){var f=new Image;f.src=\"data:image/jpeg;base64,\"+a;f.width=b;f.height=d;window.imraid.broadcastEvent(\"cameraPictureCaptured\",f)};a.fireMediaCloseEvent=function(a,b,d){var f={name:\"close\"};f.viaUserInteraction=b;f.target={};f.target.currentTime=d;b=\"inmobi_media_\"+f.name;\"undefined\"!=\ntypeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,f)};a.fireMediaVolumeChangeEvent=function(a,b,d){var f={name:\"volumechange\",target:{}};f.target.volume=b;f.target.muted=d;b=\"inmobi_media_\"+f.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,f)};a.fireDeviceMuteChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceMuted\",a)};a.fireDeviceVolumeChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceVolumeChange\",a)};a.fireHeadphonePluggedEvent=\nfunction(a){window.imraid.broadcastEvent(\"headphones\",a)};a.showAlert=function(a){sdkController.showAlert(\"window.imraidview\",a)};a.openExternal=function(c,b){try{600<=getSdkVersionInt()?sdkController.openExternal(\"window.imraidview\",c,b):sdkController.openExternal(\"window.imraidview\",c)}catch(d){a.showAlert(\"openExternal: \"+d)}};a.log=function(c){try{sdkController.log(\"window.imraidview\",c)}catch(b){a.showAlert(\"log: \"+b)}};a.getPlatform=function(){return\"android\"};a.asyncPing=function(c){try{sdkController.asyncPing(\"window.imraidview\",\nc)}catch(b){a.showAlert(\"asyncPing: \"+b)}};a.startListeningDeviceMuteEvents=function(){sdkController.registerDeviceMuteEventListener(\"window.imraidview\")};a.stopListeningDeviceMuteEvents=function(){sdkController.unregisterDeviceMuteEventListener(\"window.imraidview\")};a.startListeningDeviceVolumeChange=function(){sdkController.registerDeviceVolumeChangeEventListener(\"window.imraidview\")};a.stopListeningDeviceVolumeChange=function(){sdkController.unregisterDeviceVolumeChangeEventListener(\"window.imraidview\")};\na.startListeningHeadphonePluggedEvents=function(){sdkController.registerHeadphonePluggedEventListener(\"window.imraidview\")};a.stopListeningHeadphonePluggedEvents=function(){sdkController.unregisterHeadphonePluggedEventListener(\"window.imraidview\")};getSdkVersionInt=function(){for(var c=a.getSdkVersion().split(\".\"),b=c.length,d=\"\",f=0;f<b;f++)d+=c[f];return parseInt(d)};a.getSdkVersionInt=getSdkVersionInt;a.getSdkVersion=function(){return window._im_imaiview.getSdkVersion()};a.supports=function(a){console.log(\"bridge: supports (IMRAID)\");\nif(\"string\"!=typeof a)window.imraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\"supports\");else return\"false\"!=sdkController.supports(\"window.imraidview\",a)};a.postToSocial=function(c,b,d,f){window.imraid.broadcastEvent(\"error\",\"Method not supported\",\"postToSocial\");a.log(\"Method postToSocial not supported\")};a.incentCompleted=function(a){if(\"object\"!=typeof a||null==a)sdkController.incentCompleted(\"window.imraidview\",null);else try{sdkController.incentCompleted(\"window.imraidview\",\nJSON.stringify(a))}catch(b){sdkController.incentCompleted(\"window.imraidview\",null)}};a.getOrientation=function(){try{return String(sdkController.getOrientation(\"window.imraidview\"))}catch(c){a.showAlert(\"getOrientation: \"+c)}};a.acceptAction=function(c){try{sdkController.acceptAction(\"window.imraidview\",mraidview.stringify(c))}catch(b){a.showAlert(\"acceptAction: \"+b+\", params = \"+c)}};a.rejectAction=function(c){try{sdkController.rejectAction(\"window.imraidview\",mraidview.stringify(c))}catch(b){a.showAlert(\"rejectAction: \"+\nb+\", params = \"+c)}};a.updateToPassbook=function(c){window.imraid.broadcastEvent(\"error\",\"Method not supported\",\"updateToPassbook\");a.log(\"Method not supported\")};a.isDeviceMuted=function(){return\"false\"!=sdkController.isDeviceMuted(\"window.imraidview\")};a.getDeviceVolume=function(){return 603>=getSdkVersionInt()?-1:sdkController.getDeviceVolume(\"window.imraidview\")};a.isHeadPhonesPlugged=function(){return\"false\"!=sdkController.isHeadphonePlugged(\"window.imraidview\")};a.sendSaveContentResult=function(){window.imraid.sendSaveContentResult.apply(window.imraid,\narguments)};a.broadcastEvent=function(){window.imraid.broadcastEvent.apply(window.imraid,arguments)};a.disableBackButton=function(a){void 0==a||\"boolean\"!=typeof a?console.log(\"disableBackButton called with invalid params\"):sdkController.disableBackButton(\"window.imraidview\",a)};a.isBackButtonDisabled=function(){return sdkController.isBackButtonDisabled(\"window.imraidview\")};a.startListeningForBackButtonPressedEvent=function(){sdkController.registerBackButtonPressedEventListener(\"window.imraidview\")};\na.stopListeningForBackButtonPressedEvent=function(){sdkController.unregisterBackButtonPressedEventListener(\"window.imraidview\")};a.hideStatusBar=function(){};a.setOpaqueBackground=function(){};a.startDownloader=function(a,b,d){682<=getSdkVersionInt()&&sdkController.startDownloader(\"window.imraidview\",a,b,d)};a.registerDownloaderCallbacks=function(){682<=getSdkVersionInt()&&sdkController.registerDownloaderCallbacks(\"window.imraidview\")};a.unregisterDownloaderCallbacks=function(){682<=getSdkVersionInt()&&\nsdkController.unregisterDownloaderCallbacks(\"window.imraidview\")};a.getDownloadProgress=function(){return 682<=getSdkVersionInt()?sdkController.getDownloadProgress(\"window.imraidview\"):-1};a.getDownloadStatus=function(){return 682<=getSdkVersionInt()?sdkController.getDownloadStatus(\"window.imraidview\"):-1};a.fireEvent=function(a){700<=getSdkVersionInt()&&(\"fireSkip\"===a?sdkController.fireSkip(\"window.imraidview\"):\"fireComplete\"===a?sdkController.fireComplete(\"window.imraidview\"):\"showEndCard\"===a&&\nsdkController.showEndCard(\"window.imraidview\"))};a.saveBlob=function(a){700<=getSdkVersionInt()&&sdkController.saveBlob(\"window.imraidview\",a)};a.getBlob=function(a,b){700<=getSdkVersionInt()&&sdkController.getBlob(a,b)};a.setCloseEndCardTracker=function(a){700<=getSdkVersionInt()&&sdkController.setCloseEndCardTracker(\"window.imraidview\",a)};a.getRenderableAdIndexes=function(){try{if(917<=getSdkVersionInt())return sdkController.getRenderableAdIndexes(\"window.imraidview\")}catch(a){}return\"[]\"};a.getCurrentRenderingIndex=\nfunction(){try{if(917<=getSdkVersionInt())return sdkController.getCurrentRenderingIndex(\"window.imraidview\")}catch(a){}return-1};a.showAd=function(a){try{917<=getSdkVersionInt()&&sdkController.showAd(\"window.imraidview\",a)}catch(b){}};a.timeSinceShow=function(){try{if(917<=getSdkVersionInt())return sdkController.timeSinceShow(\"window.imraidview\")}catch(a){}return-1};a.getShowTimeStamp=function(){try{if(917<=getSdkVersionInt())return sdkController.getShowTimeStamp(\"window.imraidview\")}catch(a){}return-1};\na.closeAll=function(){try{917<=getSdkVersionInt()&&sdkController.closeAll(\"window.imraidview\")}catch(a){}};a.loadAd=function(a){try{917<=getSdkVersionInt()&&sdkController.loadAd(\"window.imraidview\",a)}catch(b){}};a.setAdContext=function(a){try{917<=getSdkVersionInt()&&sdkController.setAdContext(\"window.imraidview\",a)}catch(b){}};a.getAdContext=function(){try{if(917<=getSdkVersionInt())return sdkController.getAdContext(\"window.imraidview\")}catch(a){}return\"\"};a.openWithoutTracker=function(a){try{\"undefined\"==\ntypeof a&&(a=null),sdkController.openWithoutTracker(\"window.imraidview\",a)}catch(b){}};a.impressionRendered=function(){window.imraid.broadcastEvent(\"impressionRendered\")};a.customExpandInNative=function(a,b,d){try{void 0==a||\"string\"!=typeof a?console.log(\"url called with invalid params\"):void 0==b||\"number\"!=typeof b?console.log(\"screenPercentage called with invalid params\"):void 0==d||\"boolean\"!=typeof d?console.log(\"hideCloseButton called with invalid params\"):sdkController.customExpandInNative(\"window.imraidview\",\na,b,d)}catch(f){}};a.customExpand=function(b,e,d,f,g){try{void 0==d||\"number\"!=typeof d?console.log(\"screenPercentage called with invalid params\"):void 0==e||\"number\"!=typeof e?console.log(\"inputType called with invalid params\"):void 0==f||\"boolean\"!=typeof f?console.log(\"topNavBarVisible called with invalid params\"):void 0==g||\"boolean\"!=typeof g?console.log(\"bottomNavBarVisible called with invalid params\"):sdkController.customExpand(\"window.imraidview\",b,e,d,f,g)}catch(h){a.showAlert(\"executeNativeCustomExpand: \"+\nh+\", input = \"+b+\", inputType = \"+e+\", screenPercentage = \"+d+\", bottomNavBarVisible = \"+g+\", topNavBarVisible = \"+f)}};a.closeCustomExpand=function(){try{sdkController.closeCustomExpand(\"window.imraidview\")}catch(a){}};a.onGestureDetected=function(a,b){window.imraid.broadcastEvent(\"onGestureDetected\",a,b)};a.onUserLandingCompleted=function(){window.imraid.broadcastEvent(\"onUserLandingCompleted\")};a.onUserInteraction=function(){window.imraid.broadcastEvent(\"onUserInteraction\")};a.impressionFired=\nfunction(){try{sdkController.impressionFired(\"window.imraidview\")}catch(a){}};a.getMaxDeviceVolume=function(){try{return sdkController.getMaxDeviceVolume(\"window.imraidview\")}catch(a){return 15}};a.zoom=function(a){try{sdkController.zoom(\"window.imraidview\",a)}catch(b){}};a.onAudioStateChanged=function(a){try{sdkController.onAudioStateChanged(\"window.imraidview\",a)}catch(b){}};a.submitAdReport=function(a){try{sdkController.submitAdReport(\"window.imraidview\",void 0!=a.adQualityUrl?a.adQualityUrl:null,\nvoid 0!=a.enableUserAdReportScreenshot?a.enableUserAdReportScreenshot:null,void 0!=a.templateInfo?a.templateInfo:null)}catch(b){}};a.logTelemetryEvent=function(a){try{var b=void 0!=a.eventType?a.eventType:null,d=void 0!=a.payload?a.payload:null;a=null;null!=d&&(a=mraidview.stringify(d));sdkController.logTelemetryEvent(\"window.imraidview\",b,a)}catch(f){}};a.onUserAudioMuteInteraction=function(a){try{sdkController.onUserAudioMuteInteraction(\"window.imraidview\",a)}catch(b){}};a.enableFallbackViewabilityFunctionality=\nfunction(){b=!0;a.checkFallbackViewable()&&window.mraid.broadcastEvent(\"viewableChange\",!0);mraid.addEventListener(\"sizeChange\",function(){window.mraid.broadcastEvent(\"viewableChange\",a.checkFallbackViewable())})};a.checkFallbackViewable=function(){try{var b=mraidview.getCurrentPosition(),e=b.height;return 40<=b.width&&40<=e?!0:!1}catch(d){a.showAlert(\"checkFallbackViewable: \"+d)}};a.fallbackViewabilityEnabled=function(){return b};a.getSafeArea=function(){try{return JSON.parse(sdkController.getSafeArea(\"window.imraidview\"))}catch(a){return null}};\na.loadWebView=function(b,e){try{\"string\"!==typeof b?a.showAlert(\"loadWebView: id parameter should be a string\"):\"string\"!==typeof e?a.showAlert(\"loadWebView: html parameter should be a string\"):sdkController.loadWebView(\"window.imraidview\",b,e)}catch(d){a.showAlert(\"loadWebView: \"+d)}};a.showWebView=function(b){try{\"string\"!==typeof b?a.showAlert(\"showWebView: id parameter should be a string\"):sdkController.showWebView(\"window.imraidview\",b)}catch(e){a.showAlert(\"showWebView: \"+e)}};a.sendMessage=\nfunction(b,e){try{\"string\"!==typeof b?a.showAlert(\"sendMessage: id parameter should be a string\"):\"string\"!==typeof e?a.showAlert(\"sendMessage: message parameter should be a string\"):sdkController.sendMessage(\"window.imraidview\",b,e)}catch(d){a.showAlert(\"sendMessage: \"+d)}};a.destroyWebView=function(b){try{\"string\"!==typeof b?a.showAlert(\"destroyWebView: id parameter should be a string\"):sdkController.destroyWebView(\"window.imraidview\",b)}catch(e){a.showAlert(\"destroyWebView: \"+e)}};a.pingV2=function(b){if(\"object\"===\ntypeof b&&null!==b)try{sdkController.pingV2(\"window.imraidview\",JSON.stringify(b))}catch(e){a.showAlert(\"pingV2: \"+e)}else a.showAlert(\"pingV2: pingJson is not a valid JSON object\")}})();\n(function(){var a=window.imraid=new InmobiObj,b=window.imraidview;a.getOrientation=b.getOrientation;a.setOrientationProperties=b.setOrientationProperties;a.getOrientationProperties=b.getOrientationProperties;a.saveContentIDMap={};a.saveContent=function(c,d,f){var g=arguments.length,h,k=null;if(3>g){if(\"function\"===typeof arguments[g-1])h=arguments[g-1];else return;k={reason:1}}else a.saveContentIDMap[c]&&(h=arguments[2],k={reason:11,url:arguments[1]});\"function\"!==!h&&(k?(window.imraid.addEventListener(\"saveContent_failed_\"+\nc,h),window.imraid.sendSaveContentResult(\"saveContent_failed_\"+c,\"failed\",JSON.stringify(k))):(a.removeEventListener(\"saveContent_\"+c),a.saveContentIDMap[c]=!0,b.saveContent(c,d,f)))};a.cancelSaveContent=function(a){b.cancelSaveContent(a)};a.asyncPing=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"asyncPing\"):b.asyncPing(c)};a.disableCloseRegion=b.disableCloseRegion;a.getSdkVersion=b.getSdkVersion;a.log=function(c){\"undefined\"==typeof c?a.broadcastEvent(\"error\",\"message is required.\",\n\"log\"):\"string\"==typeof c?b.log(c):b.log(JSON.stringify(c))};a.getInMobiAIVersion=function(){return\"2.0\"};a.getVendorName=function(){return\"inmobi\"};a.openExternal=function(a,c){console.log(\"openExternal is deprecated, will be removed in future version\");mraidview.detectAndBlockFraud(\"imraid.openExternal\")||b.openExternal(a,c)};a.updateToPassbook=function(c){mraidview.detectAndBlockFraud(\"imraid.updateToPassbook\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"updateToPassbook\"):\nb.updateToPassbook(c))};a.postToSocial=function(a,c,f,g){mraidview.detectAndBlockFraud(\"imraid.postToSocial\")||b.postToSocial(a,c,f,g)};a.getPlatform=b.getPlatform;a.incentCompleted=b.incentCompleted;a.loadSKStore=b.loadSKStore;a.showSKStore=function(a){mraidview.detectAndBlockFraud(\"imraid.showSKStore\")||b.showSKStore(a)};a.pingV2=b.pingV2;a.skoverlay=b.skoverlay;a.skoverlayWithSkan=b.skoverlayWithSkan;a.zoom=b.zoom;a.dismissSKOverlay=b.dismissSKOverlay;a.supports=function(a){return b.supports(a)};\na.isDeviceMuted=function(){return!imIsObjValid(a.listeners.deviceMuted)?-1:b.isDeviceMuted()};a.isHeadPhonesPlugged=function(){return!imIsObjValid(a.listeners.headphones)?!1:b.isHeadPhonesPlugged()};a.getDeviceVolume=function(){return b.getDeviceVolume()};a.setDeviceVolume=function(a){b.setDeviceVolume(a)};a.hideStatusBar=function(){b.hideStatusBar()};a.setOpaqueBackground=function(){b.setOpaqueBackground()};a.getRenderableAdIndexes=b.getRenderableAdIndexes;a.getCurrentRenderingIndex=b.getCurrentRenderingIndex;\na.showAd=b.showAd;a.timeSinceShow=b.timeSinceShow;a.closeAll=b.closeAll;a.loadAd=b.loadAd;a.setAdContext=b.setAdContext;a.getAdContext=b.getAdContext;a.getShowTimeStamp=b.getShowTimeStamp;a.disableBackButton=b.disableBackButton;a.isBackButtonDisabled=b.isBackButtonDisabled;a.startDownloader=b.startDownloader;a.getDownloadProgress=b.getDownloadProgress;a.getDownloadStatus=b.getDownloadStatus;a.fireEvent=b.fireEvent;a.saveBlob=b.saveBlob;a.getBlob=b.getBlob;a.setCloseEndCardTracker=b.setCloseEndCardTracker;\na.openWithoutTracker=b.openWithoutTracker;a.impressionRendered=b.impressionRendered;a.onGestureDetected=b.onGestureDetected;a.onUserLandingCompleted=b.onUserLandingCompleted;a.customExpand=b.customExpand;a.closeCustomExpand=b.closeCustomExpand;a.customExpandInNative=b.customExpandInNative;a.impressionFired=b.impressionFired;a.getImraidVersion=b.getImraidVersion;a.getMaxDeviceVolume=b.getMaxDeviceVolume;a.onAudioStateChanged=b.onAudioStateChanged;a.onUserAudioMuteInteraction=b.onUserAudioMuteInteraction;\na.submitAdReport=b.submitAdReport;a.enableFallbackViewabilityFunctionality=b.enableFallbackViewabilityFunctionality;a.logTelemetryEvent=b.logTelemetryEvent;a.getSafeArea=b.getSafeArea;a.onReceviedSKANCallback=b.onReceviedSKANCallback;a.getOpenMode=b.getOpenMode;a.loadWebView=b.loadWebView;a.showWebView=b.showWebView;a.sendMessage=b.sendMessage;a.destroyWebView=b.destroyWebView;try{a.addEventListener(\"onUserLandingCompleted\",function(){1080>b.getSdkVersionInt()&&a.broadcastEvent(\"onUserLandingInitialized\")})}catch(c){}})();\n(function(){var a=window._im_imaiview={ios:{}};window.imaiview=a;a.broadcastEvent=function(){for(var a=Array(arguments.length),c=0;c<arguments.length;c++)a[c]=arguments[c];c=a.shift();try{window.mraid.broadcastEvent(c,a)}catch(e){}};a.getPlatform=function(){return\"android\"};a.getPlatformVersion=function(){return sdkController.getPlatformVersion(\"window.imaiview\")};a.log=function(a){sdkController.log(\"window.imaiview\",a)};a.openEmbedded=function(a){sdkController.openEmbedded(\"window.imaiview\",a)};\na.openExternal=function(a,c){600<=getSdkVersionInt()?sdkController.openExternal(\"window.imaiview\",a,c):sdkController.openExternal(\"window.imaiview\",a)};a.ping=function(a,c){sdkController.ping(\"window.imaiview\",a,c)};a.pingInWebView=function(a,c){sdkController.pingInWebView(\"window.imaiview\",a,c)};a.getSdkVersion=function(){try{var a=sdkController.getSdkVersion(\"window.imaiview\");if(\"string\"==typeof a&&null!=a)return a}catch(c){return\"3.7.0\"}};a.onUserInteraction=function(a){if(\"object\"!=typeof a||\nnull==a)sdkController.onUserInteraction(\"window.imaiview\",null);else try{sdkController.onUserInteraction(\"window.imaiview\",JSON.stringify(a))}catch(c){sdkController.onUserInteraction(\"window.imaiview\",null)}};a.fireAdReady=function(){sdkController.fireAdReady(\"window.imaiview\")};a.fireAdFailed=function(){sdkController.fireAdFailed(\"window.imaiview\")};a.broadcastEvent=function(){window.imai.broadcastEvent.apply(window.imai,arguments)}})();\n(function(){var a=window._im_imaiview;window._im_imai=new InmobiObj;window._im_imai.ios=new InmobiObj;var b=window._im_imai;window.imai=window._im_imai;b.matchString=function(a,b){if(\"string\"!=typeof a||null==a||null==b)return-1;var d=-1;try{d=a.indexOf(b)}catch(f){}return d};b.isHttpUrl=function(a){return\"string\"!=typeof a||null==a?!1:0==b.matchString(a,\"http://\")?!0:0==b.matchString(a,\"https://\")?!0:!1};b.appendTapParams=function(a,e,d){if(!imIsObjValid(e)||!imIsObjValid(d))return a;b.isHttpUrl(a)&&\n(a=-1==b.matchString(a,\"?\")?a+(\"?u-tap-o=\"+e+\",\"+d):a+(\"&u-tap-o=\"+e+\",\"+d));return a};b.performAdClick=function(a,e){e=e||event;if(imIsObjValid(a)){var d=a.clickConfig,f=a.landingConfig;if(!imIsObjValid(d)&&!imIsObjValid(f))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var g=null,h=null,k=null,m=null,n=null,l=null,q=null,p=null;if(imIsObjValid(e))try{m=e.changedTouches[0].pageX,n=e.changedTouches[0].pageY}catch(r){n=\nm=0}imIsObjValid(f)?imIsObjValid(d)?(l=f.url,q=f.fallbackUrl,p=f.urlType,g=d.url,h=d.pingWV,k=d.fr):(l=f.url,p=f.urlType):(l=d.url,p=d.urlType);d=b.getPlatform();try{if(\"boolean\"!=typeof k&&\"number\"!=typeof k||null==k)k=!0;if(0>k||1<k)k=!0;if(\"boolean\"!=typeof h&&\"number\"!=typeof h||null==h)h=!0;if(0>h||1<h)h=!0;if(\"number\"!=typeof p||null==p)p=0;g=b.appendTapParams(g,m,n);imIsObjValid(g)?!0==h?b.pingInWebView(g,k):b.ping(g,k):b.log(\"clickurl provided is null.\");if(imIsObjValid(l))switch(imIsObjValid(g)||\n(l=b.appendTapParams(l,m,n)),p){case 1:b.openEmbedded(l);break;case 2:\"ios\"==d?b.ios.openItunesProductView(l):this.broadcastEvent(\"error\",\"Cannot process openItunesProductView for os\"+d);break;default:b.openExternal(l,q)}else b.log(\"Landing url provided is null.\")}catch(s){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.performActionClick=function(a,e){e=e||event;if(imIsObjValid(a)){var d=a.clickConfig,f=a.landingConfig;\nif(!imIsObjValid(d)&&!imIsObjValid(f))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var g=null,h=null,k=null,m=null,n=null;if(imIsObjValid(e))try{m=e.changedTouches[0].pageX,n=e.changedTouches[0].pageY}catch(l){n=m=0}imIsObjValid(d)&&(g=d.url,h=d.pingWV,k=d.fr);try{if(\"boolean\"!=typeof k&&\"number\"!=typeof k||null==k)k=!0;if(0>k||1<k)k=!0;if(\"boolean\"!=typeof h&&\"number\"!=typeof h||null==h)h=\n!0;if(0>h||1<h)h=!0;g=b.appendTapParams(g,m,n);imIsObjValid(g)?!0==h?b.pingInWebView(g,k):b.ping(g,k):b.log(\"clickurl provided is null.\");b.onUserInteraction(f)}catch(q){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.getVersion=function(){return\"1.0\"};b.getPlatform=a.getPlatform;b.getPlatformVersion=a.getPlatformVersion;b.log=a.log;b.openEmbedded=function(b){console.log(\"openEmbedded is deprecated, will be removed in future version\");\nmraidview.detectAndBlockFraud(\"imai.openEmbedded\")||a.openEmbedded(b)};b.openExternal=function(b,e){console.log(\"openExternal is deprecated, will be removed in future version\");mraidview.detectAndBlockFraud(\"imai.openExternal\")||a.openExternal(b,e)};b.ping=a.ping;b.pingInWebView=a.pingInWebView;b.onUserInteraction=a.onUserInteraction;b.getSdkVersion=a.getSdkVersion;b.loadSKStore=a.loadSKStore;b.showSKStore=function(b){mraidview.detectAndBlockFraud(\"imai.showSKStore\")||a.showSKStore(b)};b.ios.openItunesProductView=\nfunction(b){mraidview.detectAndBlockFraud(\"imai.ios.openItunesProductView\")||a.ios.openItunesProductView(b)};b.fireAdReady=a.fireAdReady;b.fireAdFailed=a.fireAdFailed})();";
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f24680i;
        if (interfaceC3269z53 != null) {
            String TAG2 = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) interfaceC3269z53).a(TAG2, "Returning fetched Mraid Js string.");
            return a10;
        }
        return a10;
    }

    @NotNull
    public final C3146ra getOrientationProperties() {
        return this.C0;
    }

    public final long getPlacementId() {
        return this.T;
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public byte getPlacementType() {
        return this.f24666b;
    }

    @Nullable
    public InterfaceC3231x getReferenceContainer() {
        return this.f24677g0;
    }

    @Nullable
    public final C3085nc getRenderViewTelemetry() {
        return this.W;
    }

    @WorkerThread
    @NotNull
    public final JSONArray getRenderableAdIndexes() {
        JSONArray N;
        InterfaceC2861a0 interfaceC2861a0 = this.f24683j0;
        if (interfaceC2861a0 == null || (N = ((S0) interfaceC2861a0).N()) == null) {
            return new JSONArray();
        }
        return N;
    }

    @NotNull
    public final AdConfig.RenderingConfig getRenderingConfig() {
        return getMAdConfig().getRendering();
    }

    @NotNull
    public final Cc getRoute() {
        return this.f24682j;
    }

    @Nullable
    public final JSONObject getSafeArea() {
        Cf cf2;
        Df df2 = this.J0;
        if (df2 == null) {
            return null;
        }
        Integer f10 = U3.f();
        if (f10 != null || (f10 = U3.f24250g) != null) {
            cf2 = (Cf) df2.f23607d.get(f10);
        } else {
            cf2 = null;
        }
        if (cf2 == null) {
            return null;
        }
        return cf2.a();
    }

    public final boolean getShouldFireLandingPageBeacons() {
        return this.I0;
    }

    @WorkerThread
    public final long getShowTimeStamp() {
        InterfaceC2861a0 interfaceC2861a0 = this.f24683j0;
        if (interfaceC2861a0 != null) {
            return ((S0) interfaceC2861a0).O();
        }
        return 0L;
    }

    @NotNull
    public final C2891bd getSiblingWebviewManager() {
        return (C2891bd) this.f24694p.getValue();
    }

    @Nullable
    public Map<String, U0> getTelemetryManagerMap() {
        return this.L0;
    }

    @NotNull
    public Yd getTelemetryOnAdImpression() {
        U0 u02;
        Map<String, U0> telemetryManagerMap = getTelemetryManagerMap();
        if (telemetryManagerMap != null) {
            u02 = telemetryManagerMap.get("AdImpressionSuccessful");
        } else {
            u02 = null;
        }
        return new Yd(u02, this.B0, getCreativeId(), getMarkupType());
    }

    @VisibleForTesting
    public final boolean getUnloaded() {
        return this.K0;
    }

    @NotNull
    public final ef getVISIBILITY_CHANGE_LISTENER() {
        return this.R0;
    }

    @Override // com.inmobi.media.InterfaceC3231x
    @Nullable
    public View getVideoContainerView() {
        return null;
    }

    @NotNull
    public final String getViewState() {
        return this.f24704u;
    }

    @Override // com.inmobi.media.InterfaceC3259yb
    public long getViewTouchTimestamp() {
        return this.f24676g;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0092 A[Catch: Exception -> 0x0064, TryCatch #0 {Exception -> 0x0064, blocks: (B:13:0x004f, B:15:0x0054, B:17:0x0061, B:21:0x0068, B:23:0x0070, B:27:0x0086, B:29:0x0092, B:32:0x0099, B:35:0x00b3, B:37:0x00b7, B:38:0x00c7, B:40:0x00cb), top: B:47:0x004f }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b3 A[Catch: Exception -> 0x0064, TryCatch #0 {Exception -> 0x0064, blocks: (B:13:0x004f, B:15:0x0054, B:17:0x0061, B:21:0x0068, B:23:0x0070, B:27:0x0086, B:29:0x0092, B:32:0x0099, B:35:0x00b3, B:37:0x00b7, B:38:0x00c7, B:40:0x00cb), top: B:47:0x004f }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00b7 A[SYNTHETIC] */
    @Override // com.inmobi.media.InterfaceC3231x
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.inmobi.media.Xe getViewableAd() {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.GestureDetector$OnGestureListenerC2941ec.getViewableAd():com.inmobi.media.Xe");
    }

    @Nullable
    public final int[] getViewableFrameArray() {
        return this.f24693o0;
    }

    public final int getVisibilityTrackingMinPercentage() {
        if (Intrinsics.areEqual("audio", getAdType())) {
            return getMAdConfig().getViewability().getAudioImpressionMinPercentageViewed();
        }
        return getMAdConfig().getViewability().getWebImpressionMinPercentageViewed();
    }

    @NotNull
    public final tf getWebViewFactory() {
        return this.f24684k;
    }

    @NotNull
    public final Af getWindowInsetListener() {
        return this.N0;
    }

    @NotNull
    public final Bd getWvStateMachine() {
        return this.f24692o;
    }

    public final void h() {
        if (this.J.get()) {
            return;
        }
        if (!this.E) {
            this.E = true;
            return;
        }
        this.J.set(true);
        tf tfVar = this.f24684k;
        String id2 = this.f24682j.f23551b;
        tfVar.getClass();
        Intrinsics.checkNotNullParameter(id2, "id");
        tfVar.f25315b.remove(id2);
        InterfaceC3269z5 interfaceC3269z5 = tfVar.f25314a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("SiblingWebViewManager", AbstractC2977h0.a("Unregistered bridge for WebView ID: ", id2));
        }
        Df df2 = this.J0;
        if (df2 != null) {
            df2.a();
        }
        C2932e3 c2932e3 = this.T0;
        if (c2932e3 != null) {
            c2932e3.b();
        }
        this.M = true;
        this.Q = -1;
        removeJavascriptInterface("sdkController");
        F7 f72 = this.f24706v;
        ViewGroup viewGroup = null;
        if (f72 != null) {
            C3159s7 c3159s7 = f72.f23648d;
            if (c3159s7 != null) {
                c3159s7.a();
            }
            f72.f23648d = null;
            C3159s7 c3159s72 = f72.f23649e;
            if (c3159s72 != null) {
                c3159s72.a();
            }
            f72.f23649e = null;
            C3159s7 c3159s73 = f72.f23650f;
            if (c3159s73 != null) {
                c3159s73.a();
            }
            f72.f23650f = null;
        }
        this.f24696q.clear();
        WeakReference weakReference = this.f24698r;
        if (weakReference != null) {
            weakReference.clear();
        }
        Xe xe2 = this.f24685k0;
        if (xe2 != null) {
            xe2.e();
        }
        Xe xe3 = this.f24685k0;
        if (xe3 != null) {
            xe3.a();
        }
        Ia ia2 = this.f24667b0;
        if (ia2 != null) {
            C2883b5 c2883b5 = Aa.f23471a;
            if (c2883b5 != null) {
                String id3 = ia2.f23741c;
                Intrinsics.checkNotNullParameter(id3, "id");
                c2883b5.f23856b.remove(id3);
                Iterator it = c2883b5.f23856b.entrySet().iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    Intrinsics.checkNotNullExpressionValue(next, "next(...)");
                    if (((WeakReference) ((Map.Entry) next).getValue()).get() == null) {
                        it.remove();
                    }
                }
            }
            F3 f32 = Aa.f23472b;
            if (f32 != null) {
                String id4 = ia2.f23741c;
                Intrinsics.checkNotNullParameter(id4, "id");
                f32.f23856b.remove(id4);
                Iterator it2 = f32.f23856b.entrySet().iterator();
                while (it2.hasNext()) {
                    Object next2 = it2.next();
                    Intrinsics.checkNotNullExpressionValue(next2, "next(...)");
                    if (((WeakReference) ((Map.Entry) next2).getValue()).get() == null) {
                        it2.remove();
                    }
                }
            }
            ia2.f23742d.set(true);
        }
        this.f24667b0 = null;
        x();
        InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
        if (interfaceC3269z52 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z52).a(str, Ob.a(this, str, "TAG", "stopTrackingAudioVolume "));
        }
        C3151s c3151s = C3151s.f25254a;
        C3151s.c(this.f24680i, this.f24699r0);
        Map<View, FriendlyObstructionPurpose> friendlyViews = getFriendlyViews();
        if (friendlyViews != null) {
            friendlyViews.clear();
        }
        setFriendlyViews(null);
        this.A0 = null;
        this.f24700s = null;
        this.f24677g0 = null;
        this.f24683j0 = null;
        this.f24711x0 = false;
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            viewGroup = (ViewGroup) parent;
        }
        if (viewGroup != null) {
            viewGroup.removeView(this);
        }
    }

    public void i() {
        InterfaceC2861a0 interfaceC2861a0;
        Activity fullScreenActivity;
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "dismissCurrentViewContainer "));
        }
        F7 f72 = this.f24706v;
        if (f72 != null) {
            C3207v7 c3207v7 = f72.f23647c;
            if (c3207v7 != null) {
                c3207v7.b();
            }
            f72.f23647c = null;
        }
        if (Intrinsics.areEqual(Profile.DEFAULT_PROFILE_NAME, this.f24704u)) {
            setAndUpdateViewState("Hidden");
            ViewParent parent = getParent();
            boolean z10 = parent instanceof ViewGroup;
            if (z10) {
                this.f24684k.b(Rb.f24071a);
            }
            if (1 == this.f24666b) {
                InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
                if (interfaceC3269z52 != null) {
                    String str2 = f24663a1;
                    ((A5) interfaceC3269z52).a(str2, Ob.a(this, str2, "TAG", "finishFullScreenActivity "));
                }
                SparseArray sparseArray = InMobiAdActivity.f23426k;
                Intrinsics.checkNotNullParameter(this, "container");
                InMobiAdActivity.f23426k.remove(hashCode());
                if (getFullScreenActivity() != null) {
                    InterfaceC2861a0 interfaceC2861a02 = this.f24683j0;
                    if (interfaceC2861a02 == null || !interfaceC2861a02.a(this)) {
                        Activity fullScreenActivity2 = getFullScreenActivity();
                        Intrinsics.checkNotNull(fullScreenActivity2, "null cannot be cast to non-null type com.inmobi.ads.rendering.InMobiAdActivity");
                        ((InMobiAdActivity) fullScreenActivity2).f23433e = true;
                        Activity fullScreenActivity3 = getFullScreenActivity();
                        if (fullScreenActivity3 != null) {
                            fullScreenActivity3.finish();
                        }
                        if (this.Q != -1 && (fullScreenActivity = getFullScreenActivity()) != null) {
                            fullScreenActivity.overridePendingTransition(0, this.Q);
                        }
                    }
                } else {
                    if (Intrinsics.areEqual(Profile.DEFAULT_PROFILE_NAME, this.f24704u)) {
                        setAndUpdateViewState("Hidden");
                    }
                    z();
                }
            } else if (z10) {
                ((ViewGroup) parent).removeAllViews();
            }
        }
        if (this.F == EnumC2927df.f24613c && (interfaceC2861a0 = this.f24683j0) != null) {
            interfaceC2861a0.a(this, getFullScreenActivity());
        }
    }

    public final void j() {
        if (this.K0) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
            if (interfaceC3269z5 != null) {
                String TAG = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z5).a(TAG, "fireAdFailed " + this + " - Ad is already unloaded");
                return;
            }
            return;
        }
        this.f24713y0 = true;
        C3085nc c3085nc = this.W;
        if (c3085nc != null) {
            Map a10 = c3085nc.a();
            long j10 = c3085nc.f25064c;
            ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
            a10.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j10));
            String a11 = c3085nc.a("FireAdFailed");
            Pd pd2 = Pd.f23988a;
            Pd.b(a11, a10, Td.f24224a);
        }
        getListener().g(this);
    }

    public final void k() {
        if (this.J.get()) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
            if (interfaceC3269z5 != null) {
                String TAG = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z5).b(TAG, "fireAdReady called on destroyed view");
            }
        } else if (this.K0) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
            if (interfaceC3269z52 != null) {
                String TAG2 = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z52).a(TAG2, "fireAdReady " + this + " - Ad is already unloaded");
            }
        } else {
            C3085nc c3085nc = this.W;
            if (c3085nc != null) {
                Map a10 = c3085nc.a();
                long j10 = c3085nc.f25064c;
                ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
                long elapsedRealtime = SystemClock.elapsedRealtime() - j10;
                a10.put("latency", Long.valueOf(elapsedRealtime));
                c3085nc.f25069h = elapsedRealtime;
                String a11 = c3085nc.a("FireAdReady");
                Pd pd2 = Pd.f23988a;
                Pd.b(a11, a10, Td.f24224a);
            }
            InterfaceC3269z5 interfaceC3269z53 = this.f24680i;
            if (interfaceC3269z53 != null) {
                String str = f24663a1;
                ((A5) interfaceC3269z53).a(str, Ob.a(this, str, "TAG", "fireAdReady "));
            }
            this.f24711x0 = true;
            if (this.f24690n == 0) {
                m();
            }
            B();
            getListener().h(this);
        }
    }

    public final void l() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "fireClickTrackers "));
        }
        C2932e3 c2932e3 = this.T0;
        if (c2932e3 != null && !c2932e3.f24628g.get()) {
            c2932e3.f24625d.f24849g = 1;
            Intrinsics.checkNotNull(c2932e3.f24624c);
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
        if (interfaceC3269z52 != null) {
            String str2 = f24663a1;
            ((A5) interfaceC3269z52).a(str2, Ob.a(this, str2, "TAG", "fireOnUserInteraction "));
        }
        c("window.imraidview.onUserInteraction();");
        getListener().b(this);
    }

    public void m() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "fireImpression "));
        }
        if (!Intrinsics.areEqual("video", this.B0) && !Intrinsics.areEqual("audio", this.B0)) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
            if (interfaceC3269z52 != null) {
                String str2 = f24663a1;
                ((A5) interfaceC3269z52).a(str2, Ob.a(this, str2, "TAG", "recordContextualData "));
            }
            C2932e3 c2932e3 = this.T0;
            if (c2932e3 != null) {
                c2932e3.a();
            }
            c("window.imraidview.impressionRendered();");
            getListener().c(this);
        }
    }

    public final boolean n() {
        if ((Intrinsics.areEqual(getAdType(), "banner") && getAdConfig().getMraid3Config().getBannerEnabled()) || (Intrinsics.areEqual(getAdType(), "int") && getAdConfig().getMraid3Config().getInterstitialEnabled())) {
            return true;
        }
        return false;
    }

    public void o() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "onImpressionFired "));
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
        if (interfaceC3269z52 != null) {
            String str2 = f24663a1;
            ((A5) interfaceC3269z52).a(str2, Ob.a(this, str2, "TAG", "recordContextualData "));
        }
        C2932e3 c2932e3 = this.T0;
        if (c2932e3 != null) {
            c2932e3.a();
        }
        getListener().a(getTelemetryOnAdImpression());
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        Set<View> keySet;
        ViewGroup viewGroup;
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "onAttachedToWindow "));
        }
        super.onAttachedToWindow();
        F7 f72 = this.f24706v;
        if (f72 != null) {
            C3159s7 c3159s7 = f72.f23648d;
            if (c3159s7 != null) {
                c3159s7.b();
            }
            C3159s7 c3159s72 = f72.f23649e;
            if (c3159s72 != null) {
                c3159s72.b();
            }
            C3159s7 c3159s73 = f72.f23650f;
            if (c3159s73 != null) {
                c3159s73.b();
            }
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
        if (interfaceC3269z52 != null) {
            String str2 = f24663a1;
            ((A5) interfaceC3269z52).c(str2, Ob.a(this, str2, "TAG", "setIsViewHardwareAccelerated "));
        }
        this.f24710x = isHardwareAccelerated();
        Set set = null;
        if (this.f24698r == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewGroup) {
                viewGroup = (ViewGroup) parent;
            } else {
                viewGroup = null;
            }
            this.f24698r = new WeakReference(viewGroup);
        }
        y();
        InterfaceC3269z5 interfaceC3269z53 = this.f24680i;
        if (interfaceC3269z53 != null) {
            String str3 = f24663a1;
            ((A5) interfaceC3269z53).a(str3, Ob.a(this, str3, "TAG", "startTrackingExposure "));
        }
        if (n() && !this.f24672e) {
            Map<View, FriendlyObstructionPurpose> friendlyViews = getFriendlyViews();
            if (friendlyViews != null && (keySet = friendlyViews.keySet()) != null) {
                set = CollectionsKt.h1(keySet);
            }
            this.G0 = new I(this, set, getAdConfig().getMraid3Config().getExposureChangeInterval(), this.f24701s0, this.f24680i);
        } else {
            InterfaceC3269z5 interfaceC3269z54 = this.f24680i;
            if (interfaceC3269z54 != null) {
                String TAG = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z54).b(TAG, "exposureTracker is already initialized");
            }
        }
        I i10 = this.G0;
        if (i10 != null) {
            if (i10.f23716j.compareAndSet(false, true)) {
                Throwable g10 = Result.g(C2.a(new F(i10)));
                if (g10 != null) {
                    InterfaceC3269z5 interfaceC3269z55 = i10.f23711e;
                    if (interfaceC3269z55 != null) {
                        ((A5) interfaceC3269z55).b("AdExposureTracker", "Error starting exposure tracking - " + g10.getMessage());
                    }
                    i10.f23716j.set(false);
                    S5 s52 = S5.f24132a;
                    C2947f2 event = new C2947f2(g10);
                    Intrinsics.checkNotNullParameter(event, "event");
                    S5.f24135d.a(event);
                }
            } else {
                InterfaceC3269z5 interfaceC3269z56 = i10.f23711e;
                if (interfaceC3269z56 != null) {
                    ((A5) interfaceC3269z56).c("AdExposureTracker", "Exposure tracking is already started");
                }
            }
        }
        InterfaceC3269z5 interfaceC3269z57 = this.f24680i;
        if (interfaceC3269z57 != null) {
            String str4 = f24663a1;
            ((A5) interfaceC3269z57).a(str4, Ob.a(this, str4, "TAG", "startTrackingAudioVolume "));
        }
        if (n() && !this.f24672e) {
            C3151s c3151s = C3151s.f25254a;
            C3151s.a(this.f24680i, this.f24699r0);
        }
        InterfaceC3269z5 interfaceC3269z58 = this.f24680i;
        if (interfaceC3269z58 != null) {
            String TAG2 = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) interfaceC3269z58).a(TAG2, "==== CHECKPOINT REACHED - VISIBLE ====");
        }
        InterfaceC3269z5 interfaceC3269z59 = this.f24680i;
        if (interfaceC3269z59 != null) {
            ((A5) interfaceC3269z59).b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "onDetachedFromWindow "));
        }
        C2899c4 c2899c4 = this.f24715z0;
        C3089o0 c3089o0 = null;
        if (c2899c4 != null) {
            C2899c4.a(c2899c4, 8, true, null, 12);
        }
        F7 f72 = this.f24706v;
        if (f72 != null) {
            C3159s7 c3159s7 = f72.f23648d;
            if (c3159s7 != null) {
                c3159s7.a();
            }
            C3159s7 c3159s72 = f72.f23649e;
            if (c3159s72 != null) {
                c3159s72.a();
            }
            C3159s7 c3159s73 = f72.f23650f;
            if (c3159s73 != null) {
                c3159s73.a();
            }
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
        if (interfaceC3269z52 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z52).a(TAG, "Detached from window");
        }
        C3089o0 c3089o02 = this.D0;
        if (c3089o02 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adQualityManager");
        } else {
            c3089o0 = c3089o02;
        }
        if (c3089o0.f25076d.get()) {
            c3089o0.a("session end is already triggered");
        } else if (!c3089o0.f25073a.getEnabled()) {
            c3089o0.a("config kill switch - false. ad quality will skip");
        } else if (c3089o0.f25079g == null) {
            c3089o0.a("setup not done. ignore trigger");
        } else {
            c3089o0.f25076d.set(true);
            c3089o0.a(false);
        }
        if (this.E0.get()) {
            ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25480b.getValue()).schedule(new Runnable() { // from class: ub.e4
                @Override // java.lang.Runnable
                public final void run() {
                    GestureDetector$OnGestureListenerC2941ec.a(GestureDetector$OnGestureListenerC2941ec.this);
                }
            }, 1L, TimeUnit.SECONDS);
        }
        y();
        x();
        InterfaceC3269z5 interfaceC3269z53 = this.f24680i;
        if (interfaceC3269z53 != null) {
            String str2 = f24663a1;
            ((A5) interfaceC3269z53).a(str2, Ob.a(this, str2, "TAG", "stopTrackingAudioVolume "));
        }
        C3151s c3151s = C3151s.f25254a;
        C3151s.c(this.f24680i, this.f24699r0);
        try {
            super.onDetachedFromWindow();
        } catch (IllegalArgumentException e10) {
            InterfaceC3269z5 interfaceC3269z54 = this.f24680i;
            if (interfaceC3269z54 != null) {
                String str3 = f24663a1;
                StringBuilder a10 = H6.a(str3, "TAG", "Detaching WebView from window encountered an error ( ");
                a10.append(e10.getMessage());
                a10.append(" )");
                ((A5) interfaceC3269z54).b(str3, a10.toString());
            }
        }
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        if (!this.f24672e && getRenderingConfig().getSupportedGestures().contains(1)) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
            if (interfaceC3269z5 != null) {
                String TAG = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z5).a(TAG, "onDoubleTapEvent detected \n " + e10);
            }
            setViewTouchTimestamp(SystemClock.elapsedRealtime());
            if (e10.getAction() == 1) {
                JSONArray jSONArray = new JSONArray();
                try {
                    jSONArray.put(B2.c(e10.getX()));
                    jSONArray.put(B2.c(e10.getY()));
                } catch (JSONException e11) {
                    InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
                    if (interfaceC3269z52 != null) {
                        String TAG2 = f24663a1;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((A5) interfaceC3269z52).a(TAG2, "Exception in onDoubleTap", e11);
                    }
                }
                JSONArray jSONArray2 = new JSONArray();
                jSONArray2.put(jSONArray);
                c("window.imraidview.onGestureDetected('1', '" + jSONArray2 + "');");
            }
            return false;
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f24680i;
        if (interfaceC3269z53 != null) {
            String TAG3 = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            ((A5) interfaceC3269z53).c(TAG3, "Double tap gesture is disabled from config");
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTapEvent(MotionEvent e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent e22, float f10, float f11) {
        JSONArray jSONArray;
        Intrinsics.checkNotNullParameter(e22, "e2");
        if (!this.f24672e && getRenderingConfig().getSupportedGestures().contains(6)) {
            JSONArray jSONArray2 = new JSONArray();
            try {
                if (motionEvent == null) {
                    jSONArray = new JSONArray();
                } else {
                    jSONArray = new JSONArray((Collection) CollectionsKt.q(Integer.valueOf(B2.c(motionEvent.getX())), Integer.valueOf(B2.c(motionEvent.getY()))));
                }
                jSONArray2.put(jSONArray);
                jSONArray2.put(new JSONArray((Collection) CollectionsKt.q(Integer.valueOf(B2.c(e22.getX())), Integer.valueOf(B2.c(e22.getY())))));
                jSONArray2.put(new JSONArray((Collection) CollectionsKt.q(Float.valueOf(f10), Float.valueOf(f11))));
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
                if (interfaceC3269z5 != null) {
                    String TAG = f24663a1;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((A5) interfaceC3269z5).a(TAG, "Exception in onFling", e10);
                }
            }
            c("window.imraidview.onGestureDetected('6', '" + jSONArray2 + "');");
            return false;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
        if (interfaceC3269z52 != null) {
            String TAG2 = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) interfaceC3269z52).c(TAG2, "fling gesture is disabled from config");
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onLongPress(MotionEvent e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        if (!this.f24672e && getRenderingConfig().getSupportedGestures().contains(5)) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
            if (interfaceC3269z5 != null) {
                String TAG = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z5).a(TAG, "onLongPress detected \n " + e10);
            }
            JSONArray jSONArray = new JSONArray();
            try {
                jSONArray.put(B2.c(e10.getX()));
                jSONArray.put(B2.c(e10.getY()));
            } catch (JSONException e11) {
                InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
                if (interfaceC3269z52 != null) {
                    String TAG2 = f24663a1;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((A5) interfaceC3269z52).a(TAG2, "Exception in onLongPress", e11);
                }
            }
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(jSONArray);
            c("window.imraidview.onGestureDetected('5', '" + jSONArray2 + "');");
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f24680i;
        if (interfaceC3269z53 != null) {
            String TAG3 = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            ((A5) interfaceC3269z53).c(TAG3, "LongPress gesture is disabled from config");
        }
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent e22, float f10, float f11) {
        JSONArray jSONArray;
        Intrinsics.checkNotNullParameter(e22, "e2");
        boolean z10 = this.f24672e;
        if (z10 && !this.S) {
            this.S = true;
            SparseArray sparseArray = InMobiAdActivity.f23426k;
            Y0.getClass();
            JSONObject jsonObject = Gb.a("IN_CUSTOM_BROWSER", "onScroll");
            Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = InMobiAdActivity.f23427l;
            if (gestureDetector$OnGestureListenerC2941ec != null) {
                gestureDetector$OnGestureListenerC2941ec.a(jsonObject);
                return false;
            }
            return false;
        } else if (!z10) {
            C2926de scrollThrottler = getScrollThrottler();
            scrollThrottler.getClass();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (elapsedRealtime - scrollThrottler.f24610b < scrollThrottler.f24609a) {
                scrollThrottler.f24610b = elapsedRealtime;
                return false;
            }
            scrollThrottler.f24610b = elapsedRealtime;
            if (getRenderingConfig().getSupportedGestures().contains(8)) {
                JSONArray jSONArray2 = new JSONArray();
                try {
                    if (motionEvent == null) {
                        jSONArray = new JSONArray();
                    } else {
                        jSONArray = new JSONArray((Collection) CollectionsKt.q(Integer.valueOf(B2.c(motionEvent.getX())), Integer.valueOf(B2.c(motionEvent.getY()))));
                    }
                    jSONArray2.put(jSONArray);
                    jSONArray2.put(new JSONArray((Collection) CollectionsKt.q(Integer.valueOf(B2.c(e22.getX())), Integer.valueOf(B2.c(e22.getY())))));
                } catch (Exception e10) {
                    InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
                    if (interfaceC3269z5 != null) {
                        String TAG = f24663a1;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        ((A5) interfaceC3269z5).a(TAG, "Exception in onScroll", e10);
                    }
                }
                c("window.imraidview.onGestureDetected('8', '" + jSONArray2 + "');");
                return false;
            }
            return false;
        } else {
            return false;
        }
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onShowPress(MotionEvent e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onSingleTapConfirmed(MotionEvent e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        if (!this.f24672e && getRenderingConfig().getSupportedGestures().contains(0)) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
            if (interfaceC3269z5 != null) {
                String TAG = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z5).a(TAG, "onSingleTapConfirmed detected \n " + e10);
            }
            JSONArray jSONArray = new JSONArray();
            try {
                jSONArray.put(B2.c(e10.getX()));
                jSONArray.put(B2.c(e10.getY()));
            } catch (JSONException e11) {
                InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
                if (interfaceC3269z52 != null) {
                    String TAG2 = f24663a1;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((A5) interfaceC3269z52).a(TAG2, "Exception in onSingleTapConfirmed", e11);
                }
            }
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(jSONArray);
            c("window.imraidview.onGestureDetected('0', '" + jSONArray2 + "');");
            return false;
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f24680i;
        if (interfaceC3269z53 != null) {
            String TAG3 = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            ((A5) interfaceC3269z53).c(TAG3, "Click gesture is disabled from config");
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "onSingleTapUp detected \n " + e10);
        }
        setViewTouchTimestamp(SystemClock.elapsedRealtime());
        return false;
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onSizeChanged(int i10, int i11, int i12, int i13) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).c(str, Ob.a(this, str, "TAG", "onSizeChanged "));
        }
        super.onSizeChanged(i10, i11, i12, i13);
        InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
        if (interfaceC3269z52 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z52).a(TAG, "onSizeChanged (" + i10 + ", " + i11 + ')');
        }
        if (i10 != 0 && i11 != 0) {
            int b10 = B2.b(i10 / U3.b());
            int b11 = B2.b(i11 / U3.b());
            InterfaceC3269z5 interfaceC3269z53 = this.f24680i;
            if (interfaceC3269z53 != null) {
                String TAG2 = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z53).a(TAG2, "fireSizeChanged " + this + " w-" + b10 + " h-" + b11);
            }
            c("window.mraidview.broadcastEvent('sizeChange'," + b10 + ',' + b11 + ");");
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!Float.isNaN(event.getX()) && !Float.isNaN(event.getY())) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
            if (interfaceC3269z5 != null) {
                String str = f24663a1;
                ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "onTouchEvent "));
            }
            if (this.f24672e && !this.R) {
                this.R = true;
                SparseArray sparseArray = InMobiAdActivity.f23426k;
                Y0.getClass();
                JSONObject jsonObject = Gb.a("IN_CUSTOM_BROWSER", "onInteraction");
                Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
                GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = InMobiAdActivity.f23427l;
                if (gestureDetector$OnGestureListenerC2941ec != null) {
                    gestureDetector$OnGestureListenerC2941ec.a(jsonObject);
                }
            }
            if (this.f24666b == 1) {
                this.f24707v0.a(event);
            }
            this.f24709w0.onTouchEvent(event);
            setViewTouchTimestamp(SystemClock.elapsedRealtime());
            return super.onTouchEvent(event);
        }
        if (!this.F0) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
            if (interfaceC3269z52 != null) {
                String TAG = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z52).b(TAG, "onTouchEvent Invalid Coordinates " + event);
            }
            this.F0 = true;
        }
        return super.onTouchEvent(event);
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onWindowFocusChanged(boolean z10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "onWindowFocusChanged " + this + " - " + z10);
        }
        super.onWindowFocusChanged(z10);
        if (z10) {
            if (isShown()) {
                P4 p42 = S4.f24121k;
                if (p42.a(this, this, this.f24705u0, null) && p42.a(this, this, this.f24705u0)) {
                    z10 = true;
                }
            }
            z10 = false;
        }
        Activity fullScreenActivity = getFullScreenActivity();
        if (fullScreenActivity == null || !fullScreenActivity.isInMultiWindowMode()) {
            c(z10);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onWindowVisibilityChanged(int i10) {
        boolean z10;
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onWindowVisibilityChanged " + this + ' ' + i10);
        }
        super.onWindowVisibilityChanged(i10);
        boolean z11 = false;
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            int visibilityTrackingMinPercentage = getVisibilityTrackingMinPercentage();
            if (isShown()) {
                P4 p42 = S4.f24121k;
                if (p42.a(this, this, visibilityTrackingMinPercentage, null) && p42.a(this, this, visibilityTrackingMinPercentage)) {
                    z11 = true;
                }
            }
        } else {
            z11 = z10;
        }
        c(z11);
    }

    public final void p() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "onUserLandingCompleted "));
        }
        c("window.imraid.broadcastEvent('onUserLandingCompleted');");
    }

    public final void q() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "processUnload "));
        }
        if (this.J.get()) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
            if (interfaceC3269z52 != null) {
                String TAG = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z52).b(TAG, "unload called on destroyed view");
            }
        } else if (!n()) {
            InterfaceC3269z5 interfaceC3269z53 = this.f24680i;
            if (interfaceC3269z53 != null) {
                String TAG2 = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z53).b(TAG2, "mraid 3.0 is not enabled");
            }
        } else if (this.f24713y0) {
            InterfaceC3269z5 interfaceC3269z54 = this.f24680i;
            if (interfaceC3269z54 != null) {
                String TAG3 = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((A5) interfaceC3269z54).b(TAG3, "unload called on failed view");
            }
        } else if (!this.K0) {
            this.K0 = true;
            ExecutorC3096o7 executorC3096o7 = (ExecutorC3096o7) AbstractC3268z4.f25482d.getValue();
            Runnable runnable = new Runnable() { // from class: ub.b4
                @Override // java.lang.Runnable
                public final void run() {
                    GestureDetector$OnGestureListenerC2941ec.b(GestureDetector$OnGestureListenerC2941ec.this);
                }
            };
            executorC3096o7.getClass();
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            executorC3096o7.f25116a.post(runnable);
        }
    }

    public final void r() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).c(str, Ob.a(this, str, "TAG", "setCurrentPosition "));
        }
        this.A = new JSONObject();
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        try {
            JSONObject jSONObject = this.A;
            if (jSONObject != null) {
                jSONObject.put(TextureRenderKeys.KEY_IS_X, B2.b(iArr[0] / U3.b()));
            }
            JSONObject jSONObject2 = this.A;
            if (jSONObject2 != null) {
                jSONObject2.put(TextureRenderKeys.KEY_IS_Y, B2.b(iArr[1] / U3.b()));
            }
            int b10 = B2.b(getWidth() / U3.b());
            int b11 = B2.b(getHeight() / U3.b());
            JSONObject jSONObject3 = this.A;
            if (jSONObject3 != null) {
                jSONObject3.put("width", b10);
            }
            JSONObject jSONObject4 = this.A;
            if (jSONObject4 != null) {
                jSONObject4.put("height", b11);
            }
        } catch (JSONException unused) {
        }
        synchronized (this.L) {
            this.C = false;
            this.L.notifyAll();
            Unit unit = Unit.f60915a;
        }
    }

    public final void s() {
        int i10;
        int i11;
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        ViewGroup viewGroup4;
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).c(str, Ob.a(this, str, "TAG", "setDefaultPosition "));
        }
        int[] iArr = new int[2];
        this.f24714z = new JSONObject();
        ViewGroup viewGroup5 = null;
        if (this.f24698r == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewGroup) {
                viewGroup4 = (ViewGroup) parent;
            } else {
                viewGroup4 = null;
            }
            this.f24698r = new WeakReference(viewGroup4);
        }
        WeakReference weakReference = this.f24698r;
        if (weakReference != null) {
            viewGroup5 = (ViewGroup) weakReference.get();
        }
        try {
            if (viewGroup5 != null) {
                WeakReference weakReference2 = this.f24698r;
                if (weakReference2 != null && (viewGroup3 = (ViewGroup) weakReference2.get()) != null) {
                    viewGroup3.getLocationOnScreen(iArr);
                }
                JSONObject jSONObject = this.f24714z;
                if (jSONObject != null) {
                    jSONObject.put(TextureRenderKeys.KEY_IS_X, B2.b(iArr[0] / U3.b()));
                }
                JSONObject jSONObject2 = this.f24714z;
                if (jSONObject2 != null) {
                    jSONObject2.put(TextureRenderKeys.KEY_IS_Y, B2.b(iArr[1] / U3.b()));
                }
                WeakReference weakReference3 = this.f24698r;
                if (weakReference3 != null && (viewGroup2 = (ViewGroup) weakReference3.get()) != null) {
                    i10 = viewGroup2.getWidth();
                } else {
                    i10 = 0;
                }
                int b10 = B2.b(i10 / U3.b());
                WeakReference weakReference4 = this.f24698r;
                if (weakReference4 != null && (viewGroup = (ViewGroup) weakReference4.get()) != null) {
                    i11 = viewGroup.getHeight();
                } else {
                    i11 = 0;
                }
                int b11 = B2.b(i11 / U3.b());
                JSONObject jSONObject3 = this.f24714z;
                if (jSONObject3 != null) {
                    jSONObject3.put("width", b10);
                }
                JSONObject jSONObject4 = this.f24714z;
                if (jSONObject4 != null) {
                    jSONObject4.put("height", b11);
                }
            } else {
                JSONObject jSONObject5 = this.f24714z;
                if (jSONObject5 != null) {
                    jSONObject5.put(TextureRenderKeys.KEY_IS_X, 0);
                }
                JSONObject jSONObject6 = this.f24714z;
                if (jSONObject6 != null) {
                    jSONObject6.put(TextureRenderKeys.KEY_IS_Y, 0);
                }
                JSONObject jSONObject7 = this.f24714z;
                if (jSONObject7 != null) {
                    jSONObject7.put("width", 0);
                }
                JSONObject jSONObject8 = this.f24714z;
                if (jSONObject8 != null) {
                    jSONObject8.put("height", 0);
                }
            }
        } catch (JSONException unused) {
        }
        synchronized (this.K) {
            this.B = false;
            this.K.notifyAll();
            Unit unit = Unit.f60915a;
        }
    }

    public final void setAdPodHandler(@Nullable InterfaceC2861a0 interfaceC2861a0) {
        this.f24683j0 = interfaceC2861a0;
    }

    public void setAdType(@Nullable String str) {
        this.f24671d0 = str;
    }

    public final void setAllowAutoRedirection(boolean z10) {
        this.f24681i0 = z10;
    }

    public final void setAndUpdateViewState(@NotNull String state) {
        Intrinsics.checkNotNullParameter(state, "state");
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).c(str, Ob.a(this, str, "TAG", "setAndUpdateViewState "));
        }
        this.f24704u = state;
        InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
        if (interfaceC3269z52 != null) {
            String str2 = f24663a1;
            StringBuilder a10 = H6.a(str2, "TAG", "set state:");
            a10.append(this.f24704u);
            ((A5) interfaceC3269z52).a(str2, a10.toString());
        }
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = state.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        InterfaceC3269z5 interfaceC3269z53 = this.f24680i;
        if (interfaceC3269z53 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z53).a(TAG, "fireStateChange " + this + ' ' + lowerCase);
        }
        c("window.mraidview.broadcastEvent('stateChange','" + lowerCase + "');");
    }

    public final void setBackButtonDisabled(boolean z10) {
        this.H = z10;
    }

    public final void setBeaconUrl(@Nullable String str) {
        this.H0 = str;
    }

    public final void setBlobProvider(@Nullable InterfaceC2880b2 interfaceC2880b2) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).c(str, Ob.a(this, str, "TAG", "setBlobProvider "));
        }
        this.f24675f0 = interfaceC2880b2;
    }

    public final void setCloseAssetArea(@NotNull Bf value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (!this.S0) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            if (!B2.a(context)) {
                return;
            }
        }
        this.X0 = new Bf(0, value.f23522b, value.f23523c, 0);
    }

    public final void setCloseEndCardTracker(@Nullable String url) {
        C2904c9 c2904c9;
        Ve d10;
        Le le2;
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "setCloseEndCardTracker "));
        }
        InterfaceC3231x referenceContainer = getReferenceContainer();
        if ((referenceContainer instanceof C2870a9) && url != null) {
            C2870a9 c2870a9 = (C2870a9) referenceContainer;
            c2870a9.getClass();
            Intrinsics.checkNotNullParameter(url, "url");
            InterfaceC3269z5 interfaceC3269z52 = c2870a9.W;
            if (interfaceC3269z52 != null) {
                String str2 = c2870a9.X;
                ((A5) interfaceC3269z52).c(str2, I6.a(str2, "TAG", "Setting close end tracker with URL : ", url));
            }
            View videoContainerView = c2870a9.getVideoContainerView();
            if (videoContainerView instanceof C3066m9) {
                Object tag = ((C3066m9) videoContainerView).getVideoView().getTag();
                if (tag instanceof C2904c9) {
                    c2904c9 = (C2904c9) tag;
                } else {
                    c2904c9 = null;
                }
                if (c2904c9 != null && (d10 = c2904c9.d()) != null && (le2 = ((Ue) d10).f24288j) != null) {
                    U8 tracker = new U8(url, 0, "closeEndCard", null);
                    Intrinsics.checkNotNullParameter(tracker, "tracker");
                    le2.f23826f.add(tracker);
                }
            }
        }
    }

    public final void setConfiguredArea(long j10) {
        this.f24695p0 = getWidth() * getHeight();
    }

    public final void setContentURL(@Nullable String str) {
        this.f24691n0 = str;
    }

    public final void setContextualDataHandler(@Nullable C2932e3 c2932e3) {
        this.T0 = c2932e3;
    }

    public void setCreativeId(@Nullable String str) {
        this.U = str;
    }

    public final void setDisableBackButton(boolean z10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "setDisableBackButton "));
        }
        this.H = z10;
    }

    public final void setEmbeddedBrowserJsCallbacks(@Nullable InterfaceC2865a4 interfaceC2865a4) {
        this.A0 = interfaceC2865a4;
    }

    public void setExitAnimation(int i10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).c(str, Ob.a(this, str, "TAG", "setExitAnimation "));
        }
        this.Q = i10;
    }

    public final void setExposureTracker(@Nullable I i10) {
        this.G0 = i10;
    }

    public void setFriendlyViews(@Nullable Map<View, FriendlyObstructionPurpose> map) {
        this.f24673e0 = map;
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public void setFullScreenActivityContext(@Nullable Activity activity) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "setFullScreenActivityContext "));
        }
        this.f24696q = new WeakReference(activity);
        A();
        if (!this.f24672e && activity != null) {
            Df df2 = this.J0;
            if (df2 != null) {
                df2.a();
            }
            this.J0 = new Df(activity, this.N0, this.f24680i);
        }
    }

    public final void setImmersiveMode(boolean z10) {
        this.S0 = z10;
    }

    public void setImpressionId(@Nullable String str) {
        this.f24670d = str;
    }

    public final void setLandingPageTelemetryControlInfoOnWebViewClient(@Nullable R6 r62) {
        C2899c4 c2899c4 = this.f24715z0;
        if (c2899c4 != null) {
            c2899c4.f24546j = r62;
            c2899c4.f24547k = new O6(r62, c2899c4);
        }
    }

    public final void setLandingScheme(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f24674f = str;
    }

    public final void setMAdConfig(@NotNull AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(adConfig, "<set-?>");
        this.f24708w = adConfig;
    }

    public final void setMCreativeType(@Nullable String str) {
        this.B0 = str;
    }

    public final void setMImpressionMinPercentageViewed(int i10) {
        this.f24705u0 = i10;
    }

    public final void setMImpressionMinTimeViewed(int i10) {
        this.f24703t0 = i10;
    }

    public final void setMViewableAd(@Nullable Xe xe2) {
        this.f24685k0 = xe2;
    }

    public final void setMarkupTypeAdUnit(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.O0 = str;
    }

    public final void setOrientationProperties(@NotNull C3146ra c3146ra) {
        Intrinsics.checkNotNullParameter(c3146ra, "<set-?>");
        this.C0 = c3146ra;
    }

    @VisibleForTesting
    public final void setPingAckListener(@NotNull Ha pingAckListener) {
        Intrinsics.checkNotNullParameter(pingAckListener, "pingAckListener");
        this.f24688m = pingAckListener;
    }

    @VisibleForTesting
    public final void setPingManager(@NotNull Ia pingManager) {
        Intrinsics.checkNotNullParameter(pingManager, "pingManager");
        this.f24667b0 = pingManager;
    }

    public final void setPlacementId(long j10) {
        this.T = j10;
    }

    public final void setPreloadView(boolean z10) {
        this.f24679h0 = z10;
    }

    public void setReferenceContainer(@Nullable InterfaceC3231x interfaceC3231x) {
        this.f24677g0 = interfaceC3231x;
    }

    public final void setRenderViewEventListener(@Nullable AbstractC2973gc abstractC2973gc) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).c(str, Ob.a(this, str, "TAG", "setRenderViewEventListener "));
        }
        this.f24700s = abstractC2973gc;
    }

    public final void setRenderViewTelemetry(@Nullable C3085nc c3085nc) {
        this.W = c3085nc;
    }

    public final void setScrollable(boolean z10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).c(str, Ob.a(this, str, "TAG", "setScrollable "));
        }
        setScrollContainer(z10);
        setVerticalScrollBarEnabled(z10);
        setHorizontalScrollBarEnabled(z10);
    }

    public final void setShouldFireLandingPageBeacons(boolean z10) {
        this.I0 = z10;
    }

    public void setTelemetryManagerMap(@Nullable Map<String, U0> map) {
        this.L0 = map;
    }

    @VisibleForTesting
    public final void setUnloaded(boolean z10) {
        this.K0 = z10;
    }

    public final void setUseCustomClose(boolean z10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "setUseCustomClose " + this + ' ' + z10);
        }
        this.D = z10;
    }

    public void setViewTouchTimestamp(long j10) {
        this.f24676g = j10;
    }

    public final void setWatermark(@NotNull final WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(watermarkData, "watermarkData");
        if (getAdConfig().getWatermarkEnabled()) {
            final byte[] decode = Base64.decode(watermarkData.getWatermarkBase64EncodedString(), 0);
            Intrinsics.checkNotNullExpressionValue(decode, "decode(...)");
            getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: ub.a4
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public final void onGlobalLayout() {
                    GestureDetector$OnGestureListenerC2941ec.a(GestureDetector$OnGestureListenerC2941ec.this, decode, watermarkData);
                }
            });
            return;
        }
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "Watermark disabled from config. ignoring...");
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "stopLoading "));
        }
        if (!this.J.get()) {
            super.stopLoading();
        }
    }

    public final void t() {
        int webImpressionMinPercentageViewed;
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "setFallbackImpressionMinPercentageViewed "));
        }
        if (Intrinsics.areEqual("video", this.B0)) {
            webImpressionMinPercentageViewed = getMAdConfig().getViewability().getVideoImpressionMinPercentageViewed();
        } else if (Intrinsics.areEqual("audio", this.B0)) {
            if (Intrinsics.areEqual("audio", getAdType())) {
                webImpressionMinPercentageViewed = getMAdConfig().getViewability().getAudioImpressionMinPercentageViewed();
            } else {
                webImpressionMinPercentageViewed = getMAdConfig().getViewability().getWebImpressionMinPercentageViewed();
            }
        } else {
            webImpressionMinPercentageViewed = getMAdConfig().getViewability().getWebImpressionMinPercentageViewed();
        }
        this.f24705u0 = webImpressionMinPercentageViewed;
    }

    public final void u() {
        int webImpressionMinTimeViewed;
        if (Intrinsics.areEqual("video", this.B0)) {
            webImpressionMinTimeViewed = getMAdConfig().getViewability().getVideoImpressionMinTimeViewed();
        } else if (Intrinsics.areEqual("audio", this.B0)) {
            if (Intrinsics.areEqual("audio", getAdType())) {
                webImpressionMinTimeViewed = getMAdConfig().getViewability().getAudioImpressionMinTimeViewed();
            } else {
                webImpressionMinTimeViewed = getMAdConfig().getViewability().getWebImpressionMinTimeViewed();
            }
        } else {
            webImpressionMinTimeViewed = getMAdConfig().getViewability().getWebImpressionMinTimeViewed();
        }
        this.f24703t0 = webImpressionMinTimeViewed;
    }

    public final void v() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "setFallbackImpressionParams "));
        }
        u();
        t();
        w();
    }

    public final void w() {
        byte interstitialImpressionType;
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "setFallbackImpressionType "));
        }
        String adType = getAdType();
        if (Intrinsics.areEqual(adType, "banner")) {
            interstitialImpressionType = getMAdConfig().getViewability().getBannerImpressionType();
        } else if (Intrinsics.areEqual(adType, "audio")) {
            interstitialImpressionType = getMAdConfig().getViewability().getAudioImpressionType();
        } else {
            interstitialImpressionType = getMAdConfig().getViewability().getInterstitialImpressionType();
        }
        this.f24690n = interstitialImpressionType;
    }

    public final void x() {
        InterfaceC3269z5 interfaceC3269z5;
        InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
        if (interfaceC3269z52 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z52).a(str, Ob.a(this, str, "TAG", "stopTrackingExposure "));
        }
        I i10 = this.G0;
        if (i10 != null) {
            if (i10.f23716j.compareAndSet(true, false)) {
                Throwable g10 = Result.g(C2.a(new G(i10)));
                if (g10 != null && (interfaceC3269z5 = i10.f23711e) != null) {
                    ((A5) interfaceC3269z5).b("AdExposureTracker", "Error stopping exposure tracking - " + g10.getMessage());
                    return;
                }
                return;
            }
            InterfaceC3269z5 interfaceC3269z53 = i10.f23711e;
            if (interfaceC3269z53 != null) {
                ((A5) interfaceC3269z53).c("AdExposureTracker", "Exposure tracking is already stopped");
            }
        }
    }

    public final void y() {
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec;
        ms.i iVar = AbstractC3117pc.f25160a;
        Intrinsics.checkNotNullParameter(this, "<this>");
        if (!Intrinsics.areEqual(getRoute().f23551b, DataLoaderHelper.PRELOAD_DEFAULT_SCENE)) {
            tf webViewFactory = getWebViewFactory();
            webViewFactory.getClass();
            Intrinsics.checkNotNullParameter(DataLoaderHelper.PRELOAD_DEFAULT_SCENE, "id");
            gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) webViewFactory.f25315b.get(DataLoaderHelper.PRELOAD_DEFAULT_SCENE);
        } else {
            gestureDetector$OnGestureListenerC2941ec = this;
        }
        if (gestureDetector$OnGestureListenerC2941ec != null) {
            new A2(gestureDetector$OnGestureListenerC2941ec, !this.D, !this.G, this.f24680i).a(this.X0);
        }
    }

    public final void z() {
        getListener().d(this);
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "ad dismissed");
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).a();
        }
        C3089o0 c3089o0 = this.D0;
        if (c3089o0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adQualityManager");
            c3089o0 = null;
        }
        if (c3089o0.f25076d.get()) {
            c3089o0.a("session end is already triggered");
        } else if (!c3089o0.f25073a.getEnabled()) {
            c3089o0.a("config kill switch - false. ad quality will skip");
        } else if (c3089o0.f25079g == null) {
            c3089o0.a("setup not done. ignore trigger");
        } else {
            c3089o0.f25076d.set(true);
            c3089o0.a(false);
        }
    }

    public final void d(boolean z10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "processDisableCloseRegionRequest " + this + ' ' + z10);
        }
        this.G = z10;
        y();
    }

    public final void e(boolean z10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "processUseCustomCloseRequest " + this + ' ' + z10);
        }
        setUseCustomClose(z10);
        y();
    }

    public final void a(String url, String templateInfoStr, boolean z10) {
        Activity activity;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(templateInfoStr, "templateInfoStr");
        try {
            JSONObject jSONObject = new JSONObject(templateInfoStr);
            InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
            if (interfaceC3269z5 != null) {
                String TAG = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z5).a(TAG, "report - " + getAdType() + " type - sdk - " + Build.VERSION.SDK_INT);
            }
            if (Intrinsics.areEqual(getAdType(), "int") && Build.VERSION.SDK_INT >= 29 && (activity = (Activity) this.f24696q.get()) != null) {
                ScheduledExecutorService scheduledExecutorService = C2945f0.f24716a;
                C2945f0.a(activity, this, url, z10, jSONObject, this.M0);
                return;
            }
            ScheduledExecutorService scheduledExecutorService2 = C2945f0.f24716a;
            C2945f0.a(this, this, url, z10, jSONObject, this.M0);
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
            if (interfaceC3269z52 != null) {
                String TAG2 = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z52).a(TAG2, "issue wile reporting ad", e10);
            }
        }
    }

    @Override // com.inmobi.media.InterfaceC3259yb
    public final boolean d() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "canRedirectExternally Called");
        }
        return !getRenderingConfig().getAutoRedirectionEnforcement() || (getViewTouchTimestamp() != -1 && SystemClock.elapsedRealtime() - getViewTouchTimestamp() < getRenderingConfig().getUserTouchResetTime());
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public final void e() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).c(str, Ob.a(this, str, "TAG", "disableHardwareAcceleration called. "));
        }
        try {
            setLayerType(1, null);
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    public static final void b(GestureDetector$OnGestureListenerC2941ec this$0, String js2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(js2, "$js");
        try {
            if (this$0.J.get()) {
                return;
            }
            String str = "javascript:try{" + js2 + "}catch(e){}";
            InterfaceC3269z5 interfaceC3269z5 = this$0.f24680i;
            if (interfaceC3269z5 != null) {
                String TAG = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z5).a(TAG, "Injecting javascript");
            }
            InterfaceC3269z5 interfaceC3269z52 = this$0.f24680i;
            if (interfaceC3269z52 != null) {
                String TAG2 = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z52).c(TAG2, "evaluateScript " + this$0);
            }
            this$0.evaluateJavascript(str, null);
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z53 = this$0.f24680i;
            if (interfaceC3269z53 != null) {
                String str2 = f24663a1;
                ((A5) interfaceC3269z53).b(str2, rf.a(e10, H6.a(str2, "TAG", "SDK encountered an unexpected error injecting JavaScript in the Ad container; ")));
            }
        }
    }

    public static /* synthetic */ void getAdType$annotations() {
    }

    @VisibleForTesting(otherwise = 2)
    public static /* synthetic */ void getCloseAssetArea$annotations() {
    }

    public static /* synthetic */ void getImpressionType$annotations() {
    }

    public static /* synthetic */ void getMarkupType$annotations() {
    }

    public static /* synthetic */ void getMarkupTypeAdUnit$annotations() {
    }

    public static /* synthetic */ void getPlacementType$annotations() {
    }

    public static /* synthetic */ void getViewState$annotations() {
    }

    @VisibleForTesting(otherwise = 2)
    public static /* synthetic */ void getWindowInsetListener$annotations() {
    }

    public static final void a(GestureDetector$OnGestureListenerC2941ec this$0) {
        InterfaceC3269z5 interfaceC3269z5;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.isAttachedToWindow() || (interfaceC3269z5 = this$0.f24680i) == null) {
            return;
        }
        ((A5) interfaceC3269z5).a();
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0375  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0378  */
    /* JADX WARN: Removed duplicated region for block: B:158:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.inmobi.media.AbstractC2973gc r24, com.inmobi.commons.core.configs.AdConfig r25) {
        /*
            Method dump skipped, instructions count: 892
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.GestureDetector$OnGestureListenerC2941ec.a(com.inmobi.media.gc, com.inmobi.commons.core.configs.AdConfig):void");
    }

    public final void b(String str, String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str2 = f24663a1;
            ((A5) interfaceC3269z5).a(str2, Ob.a(this, str2, "TAG", "processMediaPlaybackRequest "));
        }
        if (this.K0) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
            if (interfaceC3269z52 != null) {
                String TAG = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z52).b(TAG, "Media playback is not allowed after unload! Ignoring request ...");
            }
        } else if (1 != this.f24666b) {
            InterfaceC3269z5 interfaceC3269z53 = this.f24680i;
            if (interfaceC3269z53 != null) {
                String TAG2 = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z53).b(TAG2, "Media playback is only supported on full screen ads! Ignoring request ...");
            }
        } else {
            Activity activity = (Activity) this.f24696q.get();
            if (activity == null) {
                InterfaceC3269z5 interfaceC3269z54 = this.f24680i;
                if (interfaceC3269z54 != null) {
                    String TAG3 = f24663a1;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((A5) interfaceC3269z54).b(TAG3, "Media playback is  not allowed before it is visible! Ignoring request ...");
                }
                a(str, "Media playback is  not allowed before it is visible! Ignoring request ...", "playVideo");
                return;
            }
            F7 f72 = this.f24706v;
            if (f72 != null) {
                f72.a(url, activity);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean f(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.GestureDetector$OnGestureListenerC2941ec.f(java.lang.String):boolean");
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public final boolean c() {
        return this.J.get();
    }

    public final void c(final String value) {
        Intrinsics.checkNotNullParameter(value, "js");
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "injectJavaScript " + this + " - " + value);
        }
        Intrinsics.checkNotNullParameter(value, "value");
        new Handler(getContainerContext().getMainLooper()).postAtFrontOfQueue(new Runnable() { // from class: ub.d4
            @Override // java.lang.Runnable
            public final void run() {
                GestureDetector$OnGestureListenerC2941ec.b(GestureDetector$OnGestureListenerC2941ec.this, value);
            }
        });
    }

    public static final void b(GestureDetector$OnGestureListenerC2941ec this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getListener().j(this$0);
    }

    public final void b(String str, String contentId, String url) {
        Intrinsics.checkNotNullParameter(contentId, "contentId");
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str2 = f24663a1;
            ((A5) interfaceC3269z5).c(str2, Ob.a(this, str2, "TAG", "processSaveContentRequest "));
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
        if (interfaceC3269z52 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z52).a(TAG, "saveContent called: content ID: " + contentId + "; URL: " + url);
        }
        if (!f("saveContent")) {
            InterfaceC3269z5 interfaceC3269z53 = this.f24680i;
            if (interfaceC3269z53 != null) {
                String TAG2 = f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z53).b(TAG2, "saveContent called despite the fact that it is not supported");
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("url", url);
                jSONObject.put("reason", 7);
            } catch (JSONException unused) {
            }
            String jSONObject2 = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
            String P = StringsKt.P(jSONObject2, "\"", "\\\"", false, 4, null);
            a(str, "sendSaveContentResult(\"saveContent_" + contentId + "\", 'failed', \"" + P + "\");");
            return;
        }
        HashSet hashSet = new HashSet();
        hashSet.add(new C3243xb((byte) -1, url));
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
        C3024k c3024k = new C3024k(uuid, hashSet, this.W0, contentId, 2);
        c3024k.f24906c = str;
        C3169t1.a(c3024k);
    }

    public static final void c(GestureDetector$OnGestureListenerC2941ec this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        synchronized (this$0.f24702t) {
            try {
                if (Intrinsics.areEqual("Loading", this$0.f24704u)) {
                    InterfaceC3269z5 interfaceC3269z5 = this$0.f24680i;
                    if (interfaceC3269z5 != null) {
                        String TAG = f24663a1;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        ((A5) interfaceC3269z5).a(TAG, "updateWebViewLoaded " + this$0);
                    }
                    this$0.getListener().f(this$0);
                    this$0.setAndUpdateViewState(Profile.DEFAULT_PROFILE_NAME);
                    InterfaceC3269z5 interfaceC3269z52 = this$0.f24680i;
                    if (interfaceC3269z52 != null) {
                        String TAG2 = f24663a1;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((A5) interfaceC3269z52).a(TAG2, "updateWebViewLoaded state changed to " + this$0.f24704u);
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void b(boolean z10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).c(str, Ob.a(this, str, "TAG", "fireNextAdShowComplete "));
        }
        String str2 = "window.imraidview.broadcastEvent('adShowSuccess'," + z10 + ");";
        InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
        if (interfaceC3269z52 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z52).a(TAG, str2 + " Index: " + getCurrentRenderingPodAdIndex());
        }
        c(str2);
    }

    public final void b(String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        if (getAdConfig().getPingsV2Config().getEnabled()) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
            if (interfaceC3269z5 != null) {
                String str = f24663a1;
                ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "handlePing "));
            }
            if (this.f24667b0 == null) {
                this.f24667b0 = new Ia(this.f24688m, this.W);
            }
            Ia ia2 = this.f24667b0;
            Intrinsics.checkNotNull(ia2);
            ia2.b(json);
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
        if (interfaceC3269z52 != null) {
            String str2 = f24663a1;
            ((A5) interfaceC3269z52).a(str2, Ob.a(this, str2, "TAG", "pings v2 is disabled "));
        }
        C3085nc c3085nc = this.W;
        if (c3085nc != null) {
            Intrinsics.checkNotNullParameter("unknown", HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY);
            Map a10 = c3085nc.a();
            a10.put("errorCode", (short) 2257);
            a10.put("trigger", "unknown");
            a10.put("retryCount", String.valueOf(0));
            Oa.a("PingFailed", a10);
        }
        Ha ha2 = this.f24688m;
        EnumC3077n4[] enumC3077n4Arr = EnumC3077n4.f25050a;
        ((Yb) ha2).a("", -100, "Ping V2 is disabled from SDK config", System.currentTimeMillis(), 0);
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public final void a(byte b10, Map map) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "fireEvent " + this + " 2");
        }
    }

    @Override // com.inmobi.media.InterfaceC3259yb
    public final void a(String mraidApi) {
        Intrinsics.checkNotNullParameter(mraidApi, "mraidApi");
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "sendFraudBeaconAndTelemetryEvent "));
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
        if (interfaceC3269z52 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z52).a(TAG, "fireDetectAutoRedirectFraud " + this + ' ' + mraidApi);
        }
        c("window.mraidview.fireRedirectFraudBeacon('" + mraidApi + "')");
        String adType = getAdType();
        if (adType == null) {
            adType = "banner";
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f24680i;
        if (interfaceC3269z53 != null) {
            String TAG2 = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) interfaceC3269z53).c(TAG2, "sendTelemetryForAutoRedirectFraud " + this + ' ' + mraidApi + ' ' + adType);
        }
        HashMap hashMap = new HashMap();
        String creativeId = getCreativeId();
        if (creativeId != null) {
            hashMap.put("creativeId", creativeId);
        }
        hashMap.put("trigger", mraidApi);
        String impressionId = getImpressionId();
        if (impressionId != null) {
            hashMap.put("impressionId", impressionId);
        }
        hashMap.put("adType", adType);
        InterfaceC3269z5 interfaceC3269z54 = this.f24680i;
        if (interfaceC3269z54 != null) {
            String str2 = f24663a1;
            ((A5) interfaceC3269z54).a(str2, Ob.a(this, str2, "TAG", "processTelemetryEvent "));
        }
        getListener().a("BlockAutoRedirection", hashMap);
    }

    public final void a(boolean z10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "fireNextAdLoadComplete "));
        }
        String str2 = "window.imraidview.broadcastEvent('adLoadSuccess'," + z10 + ");";
        InterfaceC3269z5 interfaceC3269z52 = this.f24680i;
        if (interfaceC3269z52 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z52).c(TAG, str2 + " Index: " + getCurrentRenderingPodAdIndex());
        }
        c(str2);
    }

    public final void a(String str, JSONObject message) {
        short s10;
        Intrinsics.checkNotNullParameter(message, "message");
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "fireError " + this + " - " + message);
        }
        c("window.imraidview.broadcastEvent('error','" + message + "', '" + str + "');");
        Object a10 = C2.a(new C2907cc(message.optString("errorCode")));
        if (Result.j(a10)) {
            short shortValue = ((Number) a10).shortValue();
            C3085nc c3085nc = this.W;
            if (c3085nc != null) {
                Map a11 = c3085nc.a();
                switch (shortValue) {
                    case 101:
                        s10 = 2261;
                        break;
                    case 102:
                        s10 = 2262;
                        break;
                    case 103:
                        s10 = 2263;
                        break;
                    case 104:
                        s10 = 2267;
                        break;
                    case 105:
                        s10 = 2266;
                        break;
                    case 106:
                        s10 = 2265;
                        break;
                    case 107:
                        s10 = 2264;
                        break;
                    default:
                        switch (shortValue) {
                            case 301:
                                s10 = 2268;
                                break;
                            case 302:
                                s10 = 2269;
                                break;
                            case 303:
                                s10 = 2270;
                                break;
                            case 304:
                                s10 = 2271;
                                break;
                            case 305:
                                s10 = 2272;
                                break;
                            case 306:
                                s10 = 2273;
                                break;
                            case 307:
                                s10 = 2274;
                                break;
                            case 308:
                                s10 = 2275;
                                break;
                            case 309:
                                s10 = 2276;
                                break;
                            case 310:
                                s10 = 2277;
                                break;
                            case 311:
                                s10 = 2278;
                                break;
                            case 312:
                                s10 = 2280;
                                break;
                            case 313:
                                s10 = 2281;
                                break;
                            default:
                                s10 = shortValue;
                                break;
                        }
                }
                a11.put("errorCode", Short.valueOf(s10));
                long j10 = c3085nc.f25064c;
                ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
                a11.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j10));
                Pd pd2 = Pd.f23988a;
                Pd.b("CompanionWebViewLoadFailed", a11, Td.f24224a);
            }
        }
    }

    public final void a(String str, String message, String str2) {
        Intrinsics.checkNotNullParameter(message, "message");
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "fireError " + this + " - " + message + " - " + str2);
        }
        if (str == null || str2 == null) {
            return;
        }
        a(str, "broadcastEvent('error',\"" + message + "\", \"" + str2 + "\")");
    }

    public final void a(String str, String callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str2 = f24663a1;
            ((A5) interfaceC3269z5).a(str2, Ob.a(this, str2, "TAG", "fireJavaScriptCallback "));
        }
        if (str == null) {
            return;
        }
        c(str + '.' + callback);
    }

    public void a(C3146ra orientationProperties) {
        Intrinsics.checkNotNullParameter(orientationProperties, "orientationProperties");
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "setOrientationProperties "));
        }
        this.C0 = orientationProperties;
        A();
    }

    @Override // com.inmobi.media.InterfaceC3162sa
    public final void a(EnumC3115pa orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "onOrientationUpdate "));
        }
    }

    public static final boolean a(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec, JsResult jsResult) {
        InterfaceC3269z5 interfaceC3269z5 = gestureDetector$OnGestureListenerC2941ec.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(gestureDetector$OnGestureListenerC2941ec, str, "TAG", "shouldRenderPopup "));
        }
        if (gestureDetector$OnGestureListenerC2941ec.getRenderingConfig().shouldRenderPopup()) {
            return true;
        }
        jsResult.cancel();
        InterfaceC3269z5 interfaceC3269z52 = gestureDetector$OnGestureListenerC2941ec.f24680i;
        if (interfaceC3269z52 != null) {
            String str2 = f24663a1;
            ((A5) interfaceC3269z52).a(str2, Ob.a(gestureDetector$OnGestureListenerC2941ec, str2, "TAG", "firePopupBlockedEvent "));
        }
        gestureDetector$OnGestureListenerC2941ec.c("window.mraidview.popupBlocked('popupBlocked')");
        return false;
    }

    @Override // com.inmobi.media.InterfaceC3259yb
    public final boolean a() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            StringBuilder a10 = H6.a(str, "TAG", "hasUserInteracted ");
            a10.append(getViewTouchTimestamp());
            a10.append(' ');
            a10.append(getRenderingConfig().getUserTouchResetTime());
            ((A5) interfaceC3269z5).a(str, a10.toString());
        }
        return !getRenderingConfig().getAutoRedirectionEnforcement() || this.f24681i0 || (getViewTouchTimestamp() != -1 && SystemClock.elapsedRealtime() - getViewTouchTimestamp() < getRenderingConfig().getUserTouchResetTime());
    }

    public static final void a(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec, String str, String str2, String str3) {
        InterfaceC3269z5 interfaceC3269z5 = gestureDetector$OnGestureListenerC2941ec.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "onUserLandingInitialized " + gestureDetector$OnGestureListenerC2941ec + " isInAppBrowser: " + gestureDetector$OnGestureListenerC2941ec.f24672e);
        }
        gestureDetector$OnGestureListenerC2941ec.c("window.imraid.broadcastEvent('onUserLandingInitialized');");
        if (str2 == null) {
            return;
        }
        gestureDetector$OnGestureListenerC2941ec.a(str2, "broadcastEvent('" + str + "Successful','" + str3 + "');");
    }

    public final void a(JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        if (getLandingPageConfig().getEnableOnLpLifeCycleEvent()) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
            if (interfaceC3269z5 != null) {
                String str = f24663a1;
                ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "onLpLifeCycleEvent "));
            }
            c("window.imraid.broadcastEvent('onLpLifeCycleEvent', " + jsonObject + ");");
        }
    }

    public final void a(String trackerName, Map macros) {
        Intrinsics.checkNotNullParameter(trackerName, "trackerName");
        Intrinsics.checkNotNullParameter(macros, "macros");
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(this, str, "TAG", "fireLandingPageTracker "));
        }
        getListener().a(this, trackerName, macros);
    }

    public final void a(boolean z10, short s10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "fireRenderProcessGoneTelemetry");
        }
        C3085nc c3085nc = this.W;
        if (c3085nc != null) {
            String a10 = c3085nc.a("WebViewRenderProcessGoneEvent");
            String str = c3085nc.f25062a.f24826k;
            if (str == null) {
                str = "";
            }
            Pair a11 = ms.k.a("trigger", str);
            long j10 = c3085nc.f25064c;
            ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
            Pair a12 = ms.k.a("latency", Long.valueOf(SystemClock.elapsedRealtime() - j10));
            Map o10 = kotlin.collections.p0.o(a11, a12, ms.k.a("source", "render_view_" + c3085nc.f25062a.f24816a.b()), ms.k.a("isCrashed", Boolean.valueOf(z10)), ms.k.a("creativeId", c3085nc.f25062a.f24821f), ms.k.a("errorCode", Short.valueOf(s10)));
            Pd pd2 = Pd.f23988a;
            Pd.b(a10, o10, Td.f24224a);
        }
    }

    public final void a(GestureDetector$OnGestureListenerC2941ec sourceView, String targetId) {
        Intrinsics.checkNotNullParameter(sourceView, "sourceView");
        Intrinsics.checkNotNullParameter(targetId, "targetId");
        InterfaceC3269z5 interfaceC3269z5 = this.f24680i;
        if (interfaceC3269z5 != null) {
            String str = f24663a1;
            ((A5) interfaceC3269z5).c(str, Ob.a(this, str, "TAG", "fireShowWebViewSuccess "));
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", targetId);
        sourceView.c("window.imraidview.broadcastEvent('webViewShown'," + jSONObject + ");");
    }
}
