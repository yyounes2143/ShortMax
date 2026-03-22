package com.inmobi.media;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseArray;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.iab.omid.library.inmobi.Omid;
import com.inmobi.adquality.models.AdQualityControl;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.WatermarkData;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.TelemetryConfig;
import com.inmobi.media.S0;
import com.inmobi.unification.sdk.model.Initialization.TimeoutConfigurations$ABConfig;
import com.inmobi.unification.sdk.model.Initialization.TimeoutConfigurations$AdABConfig;
import com.inmobi.unification.sdk.model.Initialization.TimeoutConfigurations$AdNonABConfig;
import com.inmobi.unification.sdk.model.Initialization.TimeoutConfigurations$AdPreloadConfig;
import com.inmobi.unification.sdk.model.Initialization.TimeoutConfigurations$MediationConfig;
import com.inmobi.unification.sdk.model.Initialization.TimeoutConfigurations$NonABConfig;
import com.inmobi.unification.sdk.model.Initialization.TimeoutConfigurations$PreloadConfig;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.ttvideoengine.DataLoaderHelper;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class S0 extends AbstractC2973gc implements InterfaceC2880b2, InterfaceC2943ee, Te, InterfaceC2861a0 {
    public static final /* synthetic */ int M = 0;
    public boolean A;
    public String B;
    public final A C;
    public N D;
    public C2967g6 E;
    public C3255y7 F;
    public final Handler G;
    public final LinkedHashMap H;
    public final U0 I;
    public WatermarkData J;
    public final ms.i K;
    public final K0 L;

    /* renamed from: a  reason: collision with root package name */
    public byte f24074a;

    /* renamed from: b  reason: collision with root package name */
    public AdConfig f24075b;

    /* renamed from: c  reason: collision with root package name */
    public WeakReference f24076c;

    /* renamed from: d  reason: collision with root package name */
    public C3087ne f24077d;

    /* renamed from: e  reason: collision with root package name */
    public B0 f24078e;

    /* renamed from: f  reason: collision with root package name */
    public WeakReference f24079f;

    /* renamed from: g  reason: collision with root package name */
    public ArrayList f24080g;

    /* renamed from: h  reason: collision with root package name */
    public T7 f24081h;

    /* renamed from: i  reason: collision with root package name */
    public HashMap f24082i;

    /* renamed from: j  reason: collision with root package name */
    public InterfaceC3269z5 f24083j;

    /* renamed from: k  reason: collision with root package name */
    public byte f24084k;

    /* renamed from: l  reason: collision with root package name */
    public Handler f24085l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f24086m;

    /* renamed from: n  reason: collision with root package name */
    public GestureDetector$OnGestureListenerC2941ec f24087n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f24088o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f24089p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f24090q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f24091r;

    /* renamed from: s  reason: collision with root package name */
    public C2905ca f24092s;

    /* renamed from: t  reason: collision with root package name */
    public Z f24093t;

    /* renamed from: u  reason: collision with root package name */
    public C3248y0 f24094u;

    /* renamed from: v  reason: collision with root package name */
    public C2975ge f24095v;

    /* renamed from: w  reason: collision with root package name */
    public int f24096w;

    /* renamed from: x  reason: collision with root package name */
    public int f24097x;

    /* renamed from: y  reason: collision with root package name */
    public long f24098y;

    /* renamed from: z  reason: collision with root package name */
    public TreeSet f24099z;

    public S0(@NotNull Context context, @NotNull Z adPlacement, @Nullable F0 f02) {
        boolean z10;
        Boolean o10;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adPlacement, "adPlacement");
        this.f24080g = new ArrayList();
        this.f24098y = -1L;
        this.f24099z = new TreeSet();
        this.C = A.f23444a;
        this.G = new Handler(Looper.getMainLooper());
        this.H = new LinkedHashMap();
        this.I = new U0(this);
        this.K = kotlin.c.b(new R0(this));
        this.L = new K0(this);
        Intrinsics.checkNotNullExpressionValue("S0", "TAG");
        toString();
        this.f24076c = new WeakReference(context);
        this.f24093t = adPlacement;
        WeakReference weakReference = new WeakReference(f02);
        this.f24079f = weakReference;
        String q10 = q();
        C3248y0 c3248y0 = this.f24094u;
        if (c3248y0 != null && (o10 = c3248y0.o()) != null) {
            z10 = o10.booleanValue();
        } else {
            z10 = false;
        }
        this.D = new N(weakReference, q10, z10);
        n0();
    }

    public static final tf c(S0 s02) {
        return (tf) s02.K.getValue();
    }

    public static final /* synthetic */ String e() {
        return "S0";
    }

    public final int A() {
        return this.f24097x;
    }

    @WorkerThread
    public long A0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "timeSincePodShow ", this));
        }
        if (this.A) {
            return System.currentTimeMillis() - this.f24098y;
        }
        return -1L;
    }

    @NotNull
    public final TreeSet<Integer> B() {
        return this.f24099z;
    }

    public final Ue B0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "trySetTheLocalVideoDescriptor ", this));
        }
        C2976h m10 = m();
        if (m10 != null) {
            if (m10 instanceof W8) {
                W8 w82 = (W8) m10;
                C3008j b10 = Nc.a().b(w82.f24330a);
                if (b10 != null && b10.a()) {
                    String str = b10.f24870c;
                    String str2 = w82.f24331b;
                    String str3 = w82.f24332c;
                    ArrayList arrayList = w82.f24333d;
                    ArrayList arrayList2 = w82.f24334e;
                    AdConfig adConfig = this.f24075b;
                    Intrinsics.checkNotNull(adConfig);
                    return new Ue(str, str2, str3, arrayList, arrayList2, adConfig.getVastVideo());
                }
                throw new IllegalStateException("Asset not available in cache");
            }
            return null;
        }
        throw new IllegalStateException("No ad");
    }

    public final long C() {
        return this.f24098y;
    }

    public final void C0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).b("S0", "ad unloaded");
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z52).d("S0", "AdUnit " + this + " state - UNLOADED");
        }
        d((byte) 8);
    }

    @Nullable
    public final Handler D() {
        return this.f24085l;
    }

    @NotNull
    public final String E() {
        String u10;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "markupType getter ", this));
        }
        C2976h m10 = m();
        if (m10 == null || (u10 = m10.u()) == null) {
            return "unknown";
        }
        return u10;
    }

    @Nullable
    public Integer F() {
        return null;
    }

    @Nullable
    public final T7 G() {
        return this.f24081h;
    }

    @Nullable
    public final C2905ca H() {
        return this.f24092s;
    }

    @NotNull
    public final Z I() {
        return this.f24093t;
    }

    public abstract byte J();

    @WorkerThread
    @Nullable
    public String K() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "getPodAdContext ", this));
        }
        if (this.A) {
            return this.B;
        }
        return null;
    }

    @Nullable
    public final String L() {
        return d(0);
    }

    @Nullable
    public final Map<String, String> M() {
        return this.f24093t.f();
    }

    @WorkerThread
    @NotNull
    public JSONArray N() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "getRenderableAdIndexes ", this));
        }
        JSONArray jSONArray = new JSONArray();
        Iterator it = this.f24099z.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            Intrinsics.checkNotNull(num);
            jSONArray.put(num.intValue());
        }
        return jSONArray;
    }

    @WorkerThread
    public long O() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "getShowTimeStamp ", this));
        }
        if (this.A) {
            return this.f24098y;
        }
        return -1L;
    }

    @NotNull
    public final Unit P() {
        F0 r10 = r();
        long currentTimeMillis = System.currentTimeMillis();
        if (a(r10, currentTimeMillis)) {
            return Unit.f60915a;
        }
        this.f24091r = true;
        if (this.f24092s == null) {
            this.f24092s = new C2905ca(this);
        }
        A a10 = this.C;
        int hashCode = hashCode();
        H4 h42 = new H4(this, currentTimeMillis, this.f24083j);
        a10.getClass();
        A.a(hashCode, h42);
        return Unit.f60915a;
    }

    @UiThread
    public final byte Q() {
        return this.f24074a;
    }

    public final String S() {
        LinkedList<C2976h> f10;
        C2976h c2976h;
        String w10;
        C3248y0 c3248y0 = this.f24094u;
        if (c3248y0 == null || (f10 = c3248y0.f()) == null || (c2976h = (C2976h) CollectionsKt.firstOrNull(f10)) == null || (w10 = c2976h.w()) == null) {
            return "";
        }
        return w10;
    }

    public final byte T() {
        return this.f24084k;
    }

    public final void V() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "handleInterActive ", this));
        }
        A a10 = this.C;
        int hashCode = hashCode();
        J0 j02 = new J0(this);
        a10.getClass();
        A.a(hashCode, j02);
    }

    public final boolean W() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "hasAdExpired ", this));
        }
        C2976h m10 = m();
        if (m10 != null) {
            AdConfig adConfig = this.f24075b;
            Intrinsics.checkNotNull(adConfig);
            return m10.a(adConfig.getCacheConfig(q()).getTimeToLive());
        }
        return false;
    }

    @VisibleForTesting
    public final boolean X() {
        AdConfig.RenderingConfig rendering;
        AdConfig adConfig = this.f24075b;
        if (adConfig != null && (rendering = adConfig.getRendering()) != null && rendering.getEnablePubMuteControl() && Uc.o()) {
            return true;
        }
        return false;
    }

    @SuppressLint({"SwitchIntDef"})
    public final boolean Y() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).c("S0", "isBlockingStateForLoadWithResponse getter " + this + " state=" + ((int) this.f24074a));
        }
        if (!G4.f23672a.a()) {
            g();
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.GDPR_COMPLIANCE_ENFORCED), true, (short) 2141);
            return true;
        } else if (f0()) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                StringBuilder a10 = H6.a("S0", "TAG", "Some of the dependency libraries for ");
                a10.append(q());
                a10.append(" not found");
                ((A5) interfaceC3269z52).b("S0", a10.toString());
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES), true, (short) 2007);
            return true;
        } else {
            byte b10 = this.f24074a;
            if (b10 == 1) {
                InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
                if (interfaceC3269z53 != null) {
                    Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                    ((A5) interfaceC3269z53).b("S0", "load with reasponse called while loading");
                }
                b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOAD_WITH_RESPONSE_CALLED_WHILE_LOADING), false, (short) 2001);
                return true;
            } else if (b10 != 7) {
                return false;
            } else {
                InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
                if (interfaceC3269z54 != null) {
                    Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                    ((A5) interfaceC3269z54).b("S0", "ad active before load");
                }
                b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE), false, (short) 2003);
                return true;
            }
        }
    }

    public final boolean Z() {
        return this.f24088o;
    }

    @WorkerThread
    public abstract /* synthetic */ void a(int i10, @NotNull GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec);

    @Override // com.inmobi.media.AbstractC2973gc
    public void a(@NotNull GestureDetector$OnGestureListenerC2941ec renderView, boolean z10) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).c("S0", "onRenderProcessGone didCrash=" + z10 + " state=" + ((int) this.f24074a));
        }
        byte b10 = this.f24074a;
        if (b10 == 0) {
            short s10 = z10 ? (short) 2214 : (short) 2213;
            m0();
            renderView.a(z10, s10);
        } else if (b10 == 1) {
            short s11 = z10 ? (short) 2216 : (short) 2215;
            m0();
            b(s11);
            F0 r10 = r();
            if (r10 != null) {
                r10.a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            }
        } else if (b10 == 3) {
            renderView.a(z10, z10 ? (short) 2226 : (short) 2225);
        } else if (b10 == 2) {
            m0();
            b(z10 ? (short) 2218 : (short) 2217);
            F0 r11 = r();
            if (r11 != null) {
                r11.a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            }
        } else if (b10 == 4 || b10 == 6 || b10 == 7 || b10 != 8) {
        } else {
            renderView.a(z10, z10 ? (short) 2240 : (short) 2241);
        }
    }

    public final boolean a0() {
        return this.f24086m;
    }

    @WorkerThread
    public abstract /* synthetic */ void b();

    public final boolean b0() {
        return this.A;
    }

    @UiThread
    public void c0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "load  ", this));
        }
        U0 u02 = this.I;
        u02.getClass();
        u02.f24230c = SystemClock.elapsedRealtime();
        a(new L0(this), new M0(this));
    }

    public final void d(byte b10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            StringBuilder a10 = H6.a("S0", "TAG", "from ");
            a10.append((int) this.f24074a);
            a10.append(" to ");
            a10.append((int) b10);
            a10.append(' ');
            a10.append(this);
            ((A5) interfaceC3269z5).d("S0", a10.toString());
        }
        this.f24074a = b10;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d0() throws java.lang.IllegalStateException {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.S0.d0():void");
    }

    public final void e0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "makeUnitActive ", this));
        }
        this.f24088o = false;
    }

    @UiThread
    public final void f(int i10) {
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "initializeHtmlAdContainer ", this));
        }
        Context t10 = t();
        if (t10 == null) {
            return;
        }
        try {
            if (this.f24080g.get(i10) != null && ((gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) this.f24080g.get(i10)) == null || !gestureDetector$OnGestureListenerC2941ec.J.get())) {
                return;
            }
            C2976h b10 = b(i10);
            Q a10 = a(i10);
            GestureDetector$OnGestureListenerC2941ec a11 = ((tf) this.K.getValue()).a(new Cc("adUnit-" + i10, DataLoaderHelper.PRELOAD_DEFAULT_SCENE), t10, (short) 0, a10);
            this.f24080g.set(i10, a11);
            AdConfig adConfig = this.f24075b;
            Intrinsics.checkNotNull(adConfig);
            a11.a(this, adConfig);
            InterfaceC3269z5 interfaceC3269z52 = a11.f24680i;
            if (interfaceC3269z52 != null) {
                String str = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                ((A5) interfaceC3269z52).c(str, Ob.a(a11, str, "TAG", "initContextualData "));
            }
            a11.T0 = new C2932e3(b10, a11.T);
        } catch (Exception e10) {
            a((GestureDetector$OnGestureListenerC2941ec) this.f24080g.get(this.f24096w), (short) 2136);
            InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
            if (interfaceC3269z53 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z53).a("S0", "Exception while initializing WebView", e10);
            }
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    public boolean f0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "missingPrerequisitesForAd ", this));
        }
        try {
            Reflection.getOrCreateKotlinClass(RecyclerView.class).getSimpleName();
            Reflection.getOrCreateKotlinClass(CustomTabsClient.class).getSimpleName();
            return false;
        } catch (NoClassDefFoundError unused) {
            return true;
        }
    }

    public final void g(@Nullable F0 f02) {
        Boolean o10;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "adUnitEventListener setter ", this));
        }
        WeakReference weakReference = new WeakReference(f02);
        this.f24079f = weakReference;
        String q10 = q();
        C3248y0 c3248y0 = this.f24094u;
        N n10 = new N(weakReference, q10, (c3248y0 == null || (o10 = c3248y0.o()) == null) ? false : o10.booleanValue());
        this.D = n10;
        InterfaceC3269z5 logger = this.f24083j;
        if (logger != null) {
            Intrinsics.checkNotNullParameter(logger, "logger");
            n10.f23870f = logger;
        }
    }

    public void g0() {
        U0 u02 = this.I;
        u02.getClass();
        u02.f24235h = SystemClock.elapsedRealtime();
    }

    public final void h(int i10) {
        this.f24096w = i10;
    }

    @WorkerThread
    @NotNull
    public final T h0() {
        Z9 z92;
        String str;
        String jSONArray;
        boolean z10;
        int i10;
        Integer num;
        Integer num2;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "prepareAdRequest ", this));
        }
        Context t10 = t();
        X9 x92 = null;
        if (t10 != null) {
            z92 = new Z9(t10, this.f24083j);
        } else {
            z92 = null;
        }
        AdConfig adConfig = this.f24075b;
        if (adConfig != null) {
            str = adConfig.getUrl();
        } else {
            str = null;
        }
        AdConfig adConfig2 = this.f24075b;
        Intrinsics.checkNotNull(adConfig2);
        C3198ue c3198ue = new C3198ue(adConfig2.getIncludeIdParams());
        ArrayList a10 = Nc.a().a();
        if (a10.isEmpty()) {
            jSONArray = null;
        } else {
            JSONArray jSONArray2 = new JSONArray();
            Iterator it = a10.iterator();
            while (it.hasNext()) {
                try {
                    jSONArray2.put(URLEncoder.encode(((C3008j) it.next()).f24869b, "UTF-8"));
                } catch (UnsupportedEncodingException unused) {
                }
            }
            jSONArray = jSONArray2.toString();
        }
        Z z11 = this.f24093t;
        if (z92 != null) {
            if (!z92.f24452d) {
                InterfaceC3269z5 interfaceC3269z52 = z92.f24450b;
                if (interfaceC3269z52 != null) {
                    ((A5) interfaceC3269z52).a("NovatiqDataHandler", "Novatiq disabled. skip");
                }
                x92 = new X9(kotlin.collections.p0.i());
            } else {
                x92 = new X9(kotlin.collections.p0.k(ms.k.a("n-h-id", z92.f24451c)));
            }
        }
        X9 x93 = x92;
        InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
        AdConfig adConfig3 = this.f24075b;
        if (adConfig3 != null) {
            z10 = adConfig3.getApplyGzipReq();
        } else {
            z10 = false;
        }
        T t11 = new T(str, c3198ue, jSONArray, z11, x93, interfaceC3269z53, z10);
        t11.C = this.f24093t.i();
        t11.B = q();
        Intrinsics.checkNotNullParameter("unifiedSdkJson", "<set-?>");
        t11.A = "unifiedSdkJson";
        t11.D = o();
        C3255y7 c3255y7 = this.F;
        int i11 = 15000;
        if (c3255y7 != null && (num2 = c3255y7.f25457d) != null) {
            i10 = num2.intValue();
        } else {
            i10 = 15000;
        }
        t11.f23900p = i10;
        C3255y7 c3255y72 = this.F;
        if (c3255y72 != null && (num = c3255y72.f25457d) != null) {
            i11 = num.intValue();
        }
        t11.f23901q = i11;
        t11.f23899o = X();
        return t11;
    }

    public final void i(int i10) {
        this.f24097x = i10;
    }

    @NotNull
    public C3087ne i0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "provideTimeoutConfigurations ", this));
        }
        C3087ne c3087ne = this.f24077d;
        Intrinsics.checkNotNull(c3087ne);
        return c3087ne;
    }

    @Nullable
    public final AdConfig j() {
        return this.f24075b;
    }

    @UiThread
    public abstract void j0();

    @Nullable
    public final InterfaceC3231x k() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "adMarkupContainer getter ", this));
        }
        byte b10 = this.f24074a;
        String E = E();
        int hashCode = E.hashCode();
        if (hashCode != -1084172778) {
            if (hashCode != 3213227) {
                if (hashCode == 1236050372 && E.equals("htmlUrl") && b10 != 0 && 1 != b10 && 3 != b10 && 8 != b10) {
                    return w();
                }
            } else if (E.equals("html") && b10 != 0 && 1 != b10 && 3 != b10 && 8 != b10) {
                return w();
            }
        } else if (E.equals("inmobiJson") && b10 != 0 && 1 != b10 && 3 != b10 && 2 != b10) {
            return this.f24081h;
        }
        return null;
    }

    @CallSuper
    @UiThread
    public void k0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "resetContainersForNextAd ", this));
        }
        T7 t72 = this.f24081h;
        if (t72 != null) {
            t72.b();
        }
        this.f24081h = null;
        int size = this.f24080g.size();
        int i10 = this.f24097x;
        if (size > i10 && this.f24080g.get(i10) != null) {
            a(this.f24097x, false);
        }
    }

    @Nullable
    public final AdMetaInfo l() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "adMetaInfo getter ", this));
        }
        C2976h m10 = m();
        if (m10 != null) {
            return m10.d();
        }
        return null;
    }

    public final S6 l0() {
        String str;
        String str2;
        String str3;
        boolean z10;
        String str4;
        String t10;
        Boolean o10;
        String w10;
        String p10;
        String s10;
        long l10 = this.f24093t.l();
        C2976h u10 = u();
        if (u10 == null || (s10 = u10.s()) == null) {
            str = "";
        } else {
            str = s10;
        }
        String valueOf = String.valueOf(this.f24093t.m());
        String q10 = q();
        String E = E();
        C2976h u11 = u();
        if (u11 == null || (p10 = u11.p()) == null) {
            str2 = "";
        } else {
            str2 = p10;
        }
        C2976h u12 = u();
        if (u12 == null || (w10 = u12.w()) == null) {
            str3 = "";
        } else {
            str3 = w10;
        }
        C3248y0 c3248y0 = this.f24094u;
        if (c3248y0 != null && (o10 = c3248y0.o()) != null) {
            z10 = o10.booleanValue();
        } else {
            z10 = false;
        }
        boolean z11 = z10;
        C2976h u13 = u();
        if (u13 == null || (t10 = u13.t()) == null) {
            str4 = "";
        } else {
            str4 = t10;
        }
        return new S6(l10, str, valueOf, q10, E, str2, str3, z11, str4);
    }

    @Nullable
    public final C2976h m() {
        return b(0);
    }

    public final void m0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).d("S0", "AdUnit " + this + " state - FAILED");
        }
        d((byte) 3);
        b((byte) 1);
    }

    @Nullable
    public final String n() {
        C3248y0 c3248y0 = this.f24094u;
        if (c3248y0 != null) {
            return c3248y0.c();
        }
        return null;
    }

    public final void n0() {
        Intrinsics.checkNotNullExpressionValue("S0", "TAG");
        toString();
        String b10 = Uc.b();
        LinkedHashMap linkedHashMap = O2.f23923a;
        AdConfig adConfig = null;
        Config a10 = M2.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, b10, null);
        if (a10 instanceof AdConfig) {
            adConfig = (AdConfig) a10;
        }
        this.f24075b = adConfig;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "timeOutConfiguration getter ", this));
        }
        AdConfig adConfig2 = this.f24075b;
        Intrinsics.checkNotNull(adConfig2);
        this.f24077d = adConfig2.getTimeouts();
        d((byte) 0);
        this.f24078e = new B0(this, this, this.f24093t);
        this.f24082i = new HashMap();
        this.f24084k = (byte) -1;
        this.f24085l = new Handler(Looper.getMainLooper());
        this.f24086m = false;
        this.f24095v = new C2975ge(this);
    }

    public HashMap o() {
        return new HashMap();
    }

    public final boolean o0() {
        Unit unit;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "shouldBlockLoadAd ", this));
        }
        C2976h m10 = m();
        if (m10 != null && 4 == this.f24074a && !W()) {
            F0 r10 = r();
            if (r10 != null) {
                InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
                if (interfaceC3269z52 != null) {
                    Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                    ((A5) interfaceC3269z52).a("S0", "ad is ready - load success");
                }
                f(r10);
                unit = Unit.f60915a;
            } else {
                unit = null;
            }
            if (unit == null) {
                b((short) 2188);
            }
            return true;
        } else if (m10 == null) {
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE), true, (short) 2131);
            InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
            if (interfaceC3269z53 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z53).b("S0", "ad no longer available");
            }
            return true;
        } else if (2 != this.f24074a) {
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE), true, (short) 2132);
            InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
            if (interfaceC3269z54 != null) {
                StringBuilder a10 = H6.a("S0", "TAG", "ad no longer available. state - ");
                a10.append((int) this.f24074a);
                ((A5) interfaceC3269z54).b("S0", a10.toString());
            }
            return true;
        } else if (W()) {
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE), true, (short) 2133);
            InterfaceC3269z5 interfaceC3269z55 = this.f24083j;
            if (interfaceC3269z55 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z55).b("S0", "ad is expired");
            }
            return true;
        } else {
            return false;
        }
    }

    @NotNull
    public final B0 p() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "adStore getter ", this));
        }
        if (this.f24078e == null) {
            this.f24078e = new B0(this, this, this.f24093t);
        }
        B0 b02 = this.f24078e;
        Intrinsics.checkNotNull(b02);
        return b02;
    }

    public final boolean p0() {
        AdConfig adConfig;
        if (Intrinsics.areEqual(this.f24093t.m(), "AB") && (adConfig = this.f24075b) != null && adConfig.getSkipNetCheckHB()) {
            return true;
        }
        return false;
    }

    @NotNull
    public abstract String q();

    public void q0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "signalAvailabilityChange ", this));
        }
    }

    @Nullable
    public final F0 r() {
        InterfaceC3269z5 interfaceC3269z5;
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).c("S0", D0.a("S0", "TAG", "adUnitEventListener getter ", this));
        }
        F0 f02 = (F0) this.f24079f.get();
        if (f02 == null && (interfaceC3269z5 = this.f24083j) != null) {
            ((A5) interfaceC3269z5).b("InMobi", "Listener was garbage collected. Unable to give callback");
        }
        return f02;
    }

    public void r0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "signalSuccess ", this));
        }
    }

    @NotNull
    public final U0 s() {
        return this.I;
    }

    @UiThread
    public final void s0() {
        String str;
        LinkedList<C2976h> f10;
        C2976h c2976h;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "startLoadingHTMLAd ", this));
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = null;
        try {
            f(this.f24096w);
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                StringBuilder sb2 = new StringBuilder("Loading ad with impressionId : ");
                C3248y0 c3248y0 = this.f24094u;
                if (c3248y0 != null && (f10 = c3248y0.f()) != null && (c2976h = f10.get(this.f24096w)) != null) {
                    str = c2976h.s();
                } else {
                    str = null;
                }
                sb2.append(str);
                ((A5) interfaceC3269z52).a("S0", sb2.toString());
            }
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = (GestureDetector$OnGestureListenerC2941ec) this.f24080g.get(this.f24096w);
            String E = E();
            if (Intrinsics.areEqual(E, "html")) {
                InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
                if (interfaceC3269z53 != null) {
                    Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                    ((A5) interfaceC3269z53).a("S0", "loading into weview for " + E());
                }
                if (gestureDetector$OnGestureListenerC2941ec2 != null) {
                    gestureDetector$OnGestureListenerC2941ec2.d(d(this.f24096w));
                }
            } else if (Intrinsics.areEqual(E, "htmlUrl")) {
                InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
                if (interfaceC3269z54 != null) {
                    Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                    ((A5) interfaceC3269z54).a("S0", "loading into weview for " + E());
                }
                if (gestureDetector$OnGestureListenerC2941ec2 != null) {
                    gestureDetector$OnGestureListenerC2941ec2.e(d(this.f24096w));
                }
            }
            a(true, gestureDetector$OnGestureListenerC2941ec2);
            if (gestureDetector$OnGestureListenerC2941ec2 != null && Intrinsics.areEqual(E(), "htmlUrl")) {
                k(gestureDetector$OnGestureListenerC2941ec2);
            }
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z55 = this.f24083j;
            if (interfaceC3269z55 != null) {
                ((A5) interfaceC3269z55).a("S0", rf.a(e10, H6.a("S0", "TAG", "Loading ad markup into container encountered an unexpected error: ")));
            }
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            int i10 = this.f24096w;
            if (i10 >= 0 && i10 < this.f24080g.size()) {
                gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) this.f24080g.get(this.f24096w);
            }
            a(gestureDetector$OnGestureListenerC2941ec, (short) 2135);
        }
    }

    @Nullable
    public final Context t() {
        WeakReference weakReference = this.f24076c;
        if (weakReference != null) {
            return (Context) weakReference.get();
        }
        return null;
    }

    public final void t0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "submitAdLoadCalled ", this));
        }
        HashMap hashMap = new HashMap();
        c(hashMap);
        c("AdLoadCalled", hashMap);
    }

    public final C2976h u() {
        if (this.A) {
            return b(this.f24096w);
        }
        return m();
    }

    public final void u0() {
        Boolean o10;
        String p10;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            StringBuilder a10 = H6.a("S0", "TAG", "submitAdLoadSuccessfulEvent ADunit markuptype : ");
            a10.append(E());
            a10.append(' ');
            a10.append(this);
            ((A5) interfaceC3269z5).c("S0", a10.toString());
        }
        HashMap hashMap = new HashMap();
        long j10 = this.I.f24230c;
        ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
        hashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j10));
        hashMap.put("markupType", E());
        C2976h u10 = u();
        if (u10 != null && (p10 = u10.p()) != null) {
            hashMap.put("creativeType", "\"" + p10 + '\"');
        }
        C2967g6 c2967g6 = this.E;
        if (c2967g6 != null) {
            hashMap.put("retryCount", Integer.valueOf(c2967g6.f24767b));
        }
        C3248y0 c3248y0 = this.f24094u;
        if (c3248y0 != null && (o10 = c3248y0.o()) != null) {
            hashMap.put("isRewarded", o10);
        }
        if (S().length() > 0) {
            hashMap.put("metadataBlob", S());
        }
        c(hashMap);
        c("AdLoadSuccessful", hashMap);
    }

    @NotNull
    public final A v() {
        return this.C;
    }

    public final void v0() {
        String p10;
        Boolean o10;
        HashMap hashMap = new HashMap();
        c(hashMap);
        hashMap.put("markupType", E());
        long j10 = this.I.f24235h;
        ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
        hashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j10));
        hashMap.put("metadataBlob", S());
        C2967g6 c2967g6 = this.E;
        if (c2967g6 != null) {
            hashMap.put("retryCount", Integer.valueOf(c2967g6.f24767b));
        }
        C3248y0 c3248y0 = this.f24094u;
        if (c3248y0 != null && (o10 = c3248y0.o()) != null) {
            hashMap.put("isRewarded", o10);
        }
        C2976h u10 = u();
        if (u10 != null && (p10 = u10.p()) != null) {
            hashMap.put("creativeType", "\"" + p10 + '\"');
        }
        c("ParseSuccess", hashMap);
    }

    @Nullable
    public GestureDetector$OnGestureListenerC2941ec w() {
        if (this.f24080g.size() > 0 && this.f24097x < this.f24080g.size()) {
            return (GestureDetector$OnGestureListenerC2941ec) this.f24080g.get(this.f24097x);
        }
        return null;
    }

    public final void w0() {
        C2976h m10;
        Boolean o10;
        String p10;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "submitAdShowCalled ", this));
        }
        U0 u02 = this.I;
        u02.getClass();
        u02.f24232e = SystemClock.elapsedRealtime();
        HashMap hashMap = new HashMap();
        hashMap.put("markupType", E());
        long j10 = this.I.f24236i;
        ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
        hashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j10));
        if (this.A) {
            m10 = b(this.f24097x);
        } else {
            m10 = m();
        }
        if (m10 != null && (p10 = m10.p()) != null) {
            hashMap.put("creativeType", "\"" + p10 + '\"');
        }
        C3248y0 c3248y0 = this.f24094u;
        if (c3248y0 != null && (o10 = c3248y0.o()) != null) {
            hashMap.put("isRewarded", o10);
        }
        if (S().length() > 0) {
            hashMap.put("metadataBlob", S());
        }
        c(hashMap);
        c("AdShowCalled", hashMap);
    }

    @Nullable
    public final GestureDetector$OnGestureListenerC2941ec x() {
        return this.f24087n;
    }

    public final void x0() {
        C2976h m10;
        Boolean o10;
        String p10;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "submitAdShowSuccess ", this));
        }
        HashMap hashMap = new HashMap();
        long j10 = this.I.f24232e;
        ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
        hashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j10));
        hashMap.put("markupType", E());
        if (this.A) {
            m10 = b(this.f24097x);
        } else {
            m10 = m();
        }
        if (m10 != null && (p10 = m10.p()) != null) {
            hashMap.put("creativeType", "\"" + p10 + '\"');
        }
        C3248y0 c3248y0 = this.f24094u;
        if (c3248y0 != null && (o10 = c3248y0.o()) != null) {
            hashMap.put("isRewarded", o10);
        }
        if (S().length() > 0) {
            hashMap.put("metadataBlob", S());
        }
        c(hashMap);
        c("AdShowSuccessful", hashMap);
    }

    @Nullable
    public final C3248y0 y() {
        return this.f24094u;
    }

    public final void y0() {
        HashMap hashMap = new HashMap();
        c(hashMap);
        c("AdGetSignalsCalled", hashMap);
    }

    public final int z() {
        return this.f24096w;
    }

    public final void z0() {
        C2976h m10;
        Boolean o10;
        String p10;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            StringBuilder a10 = H6.a("S0", "TAG", "submitRenderSuccessEvent ADunit markuptype : ");
            a10.append(E());
            a10.append(' ');
            a10.append(this);
            ((A5) interfaceC3269z5).c("S0", a10.toString());
        }
        HashMap hashMap = new HashMap();
        long j10 = this.I.f24234g;
        ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
        hashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j10));
        hashMap.put("markupType", E());
        if (this.A) {
            m10 = b(this.f24097x);
        } else {
            m10 = m();
        }
        if (m10 != null && (p10 = m10.p()) != null) {
            hashMap.put("creativeType", "\"" + p10 + '\"');
        }
        C2967g6 c2967g6 = this.E;
        if (c2967g6 != null) {
            hashMap.put("retryCount", Integer.valueOf(c2967g6.f24767b));
        }
        hashMap.put("plType", Byte.valueOf(J()));
        C3248y0 c3248y0 = this.f24094u;
        if (c3248y0 != null && (o10 = c3248y0.o()) != null) {
            hashMap.put("isRewarded", o10);
        }
        if (S().length() > 0) {
            hashMap.put("metadataBlob", S());
        }
        c(hashMap);
        c((Map) hashMap);
        c("RenderSuccess", hashMap);
    }

    public final void e(@Nullable C3248y0 c3248y0) {
        this.f24094u = c3248y0;
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public void h(@NotNull final GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "onRenderViewSignaledAdReady ", this));
        }
        if (!this.f24088o && t() != null) {
            Handler handler = this.f24085l;
            if (handler != null) {
                handler.post(new Runnable() { // from class: ub.w1
                    @Override // java.lang.Runnable
                    public final void run() {
                        S0.c(S0.this, renderView);
                    }
                });
                return;
            } else {
                b((short) 2187);
                return;
            }
        }
        b((short) 2186);
    }

    public final void i() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "fireAdServedBeacon ", this));
        }
        InterfaceC3231x k10 = k();
        if (k10 == null) {
            return;
        }
        k10.a((byte) 2, null);
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public void j(@NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        byte b10 = this.f24074a;
        if (b10 == 2) {
            C0();
            b((byte) 1);
            F0 r10 = r();
            InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR);
            if (r10 != null) {
                r10.a(this, inMobiAdRequestStatus);
            } else {
                InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
                if (interfaceC3269z5 != null) {
                    ((A5) interfaceC3269z5).a();
                }
            }
            b((short) 2238);
            renderView.b();
        } else if (b10 == 4) {
            n(renderView);
            renderView.b();
            b((byte) 4);
        } else if (b10 == 6 || b10 == 7) {
            o(renderView);
        } else {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                StringBuilder a10 = H6.a("S0", "TAG", "onUnloadCalled - invalid state - ");
                a10.append((int) this.f24074a);
                ((A5) interfaceC3269z52).b("S0", a10.toString());
            }
        }
    }

    public void m(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            StringBuilder a10 = H6.a("S0", "TAG", "Render view signaled ad ready, for index ");
            a10.append(this.f24080g.indexOf(gestureDetector$OnGestureListenerC2941ec));
            a10.append(' ');
            a10.append(this);
            ((A5) interfaceC3269z5).a("S0", a10.toString());
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z52).a("S0", "==== CHECKPOINT REACHED - LOAD SUCCESS ====");
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
        if (interfaceC3269z53 != null) {
            ((A5) interfaceC3269z53).b();
        }
    }

    public void n(@NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        int l10;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).c("S0", "onAdUnloadedAfterLoadSuccess");
        }
        if (this.A && (l10 = l(renderView)) > this.f24097x) {
            this.f24099z.remove(Integer.valueOf(l10));
        } else {
            C0();
        }
    }

    public void o(@NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).c("S0", "onAdUnloadedAfterShowSuccess");
        }
        renderView.i();
        b((byte) 4);
    }

    public final void b(boolean z10) {
        this.f24086m = z10;
    }

    public final void c(boolean z10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "setIsAssetReady ", this));
        }
        this.f24089p = z10;
    }

    public final Set e(int i10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "getViewabilityTrackers ", this));
        }
        HashMap hashMap = this.f24082i;
        if (hashMap != null) {
            return (Set) hashMap.get(Integer.valueOf(i10));
        }
        return null;
    }

    @VisibleForTesting(otherwise = 2)
    public final boolean b(@Nullable C2976h c2976h) {
        C3136r0 q10;
        AdConfig.RenderingConfig rendering;
        AdConfig adConfig = this.f24075b;
        boolean z10 = false;
        boolean enableImmersive = (adConfig == null || (rendering = adConfig.getRendering()) == null) ? false : rendering.getEnableImmersive();
        boolean z11 = U3.f24252i;
        boolean a10 = (c2976h == null || (q10 = c2976h.q()) == null) ? false : q10.a(false);
        if (enableImmersive && z11 && a10) {
            z10 = true;
        }
        if (!z10) {
            b(enableImmersive, z11, a10);
        }
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).a("S0", "Immersive support - config, device, adResponse - (" + enableImmersive + ' ' + z11 + ' ' + a10 + ')');
        }
        return z10;
    }

    @Nullable
    public final String d(int i10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "getPubContent ", this));
        }
        if (i10 > 0 && !this.A) {
            return "";
        }
        C2976h b10 = b(i10);
        if (b10 != null) {
            return b10.x();
        }
        return null;
    }

    @WorkerThread
    public int l(@NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "getCurrentRenderingPodAdIndex ", this));
        }
        if (this.A) {
            int indexOf = this.f24080g.indexOf(renderView);
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).c("S0", X8.a("S0", "TAG", "getCurrentRenderingPodAdIndex ", indexOf));
                return indexOf;
            }
            return indexOf;
        }
        return -1;
    }

    public final boolean c(int i10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).c("S0", "getAllowAutoRedirectionForIndex " + this + " index - " + i10);
        }
        C2976h b10 = b(i10);
        return b10 != null && b10.i();
    }

    public final void e(@NotNull F0 listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "onFetchSuccess ", this));
        }
        v0();
        AdMetaInfo l10 = l();
        if (l10 == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z52).b("S0", "ad meta info null. fail");
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2106);
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
        if (interfaceC3269z53 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z53).a("S0", "callback - onAdFetchSuccess");
        }
        listener.b(l10);
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public void i(@NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            StringBuilder a10 = H6.a("S0", "TAG", "RenderView visible, for index ");
            a10.append(this.f24080g.indexOf(renderView));
            a10.append(' ');
            a10.append(this);
            ((A5) interfaceC3269z5).a("S0", a10.toString());
        }
    }

    @UiThread
    public final void h() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "destroyAllContainer ", this));
        }
        int size = this.f24080g.size();
        for (int i10 = 0; i10 < size; i10++) {
            a(this, i10, false, 2, null);
        }
    }

    @UiThread
    public final void c(@NotNull C3248y0 adSet) {
        Intrinsics.checkNotNullParameter(adSet, "adSet");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "onAdFetchSuccessful ", this));
        }
        if (this.f24074a == 1) {
            this.f24094u = adSet;
        }
        if (!this.f24088o && t() != null) {
            a(adSet);
            return;
        }
        b((short) 2185);
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z52).b("S0", "adUnit is destroyed");
        }
    }

    @UiThread
    public void g() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "clear ", this));
        }
        if (this.f24088o) {
            return;
        }
        this.f24088o = true;
        Handler handler = this.f24085l;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).a("S0", D0.a("S0", "TAG", "clearAdPods ", this));
        }
        if (this.A) {
            h();
            this.f24080g.clear();
            this.f24096w = 0;
            this.f24097x = 0;
            this.f24099z.clear();
        }
        C2967g6 c2967g6 = this.E;
        if (c2967g6 != null) {
            c2967g6.f24767b = 0;
        }
        HashMap hashMap = this.f24082i;
        if (hashMap != null) {
            hashMap.clear();
        }
        k0();
        d((byte) 0);
        InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
        if (interfaceC3269z53 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z53).d("S0", "AdUnit " + this + " state - CREATED");
        }
        A a10 = this.C;
        int hashCode = hashCode();
        a10.getClass();
        SparseArray sparseArray = A.f23445b;
        sparseArray.remove(hashCode);
        Intrinsics.checkNotNullExpressionValue(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "TAG");
        sparseArray.size();
        this.f24090q = false;
        this.f24087n = null;
        this.f24086m = false;
        this.f24089p = false;
        this.f24091r = false;
        this.f24094u = null;
        this.A = false;
    }

    public final void d(@NotNull F0 listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "onAdDisplayed ", this));
        }
        AdMetaInfo l10 = l();
        if (l10 == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z52).b("S0", "callback onAdDisplayed failed. ad meta info is null");
            }
            a(listener, (short) 85);
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
        if (interfaceC3269z53 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z53).a("S0", "callback - onAdDisplayed");
        }
        listener.a(l10);
    }

    public final void k(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
        List<String> c10;
        int indexOf = this.f24080g.indexOf(gestureDetector$OnGestureListenerC2941ec);
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).a("S0", "fireLoadAdTokenUrlSuccessful : " + indexOf + ' ' + this);
        }
        C2976h b10 = b(indexOf);
        if (b10 == null || (c10 = b10.c(C2976h.LOAD_AD_TOKEN_URL)) == null) {
            return;
        }
        for (String str : c10) {
            C3234x2.f25412a.a(str, true, this.f24083j);
        }
    }

    @VisibleForTesting
    public final void b(boolean z10, boolean z11, boolean z12) {
        Pair<String, Short> a10 = a(z10, z11, z12);
        short shortValue = a10.d().shortValue();
        HashMap hashMap = new HashMap();
        hashMap.put("reason", a10.b());
        hashMap.put("errorCode", Short.valueOf(shortValue));
        c("ImmersiveNotSupported", hashMap);
    }

    public static /* synthetic */ void R() {
    }

    public static /* synthetic */ void U() {
    }

    public static final void e(S0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (6 == this$0.f24074a) {
            this$0.a(true, (short) 2158);
        }
    }

    @Nullable
    public final C2976h b(int i10) {
        Iterable n10;
        LinkedList<C2976h> f10;
        LinkedList<C2976h> f11;
        Intrinsics.checkNotNullExpressionValue("S0", "TAG");
        toString();
        C3248y0 c3248y0 = this.f24094u;
        if (c3248y0 == null || (f11 = c3248y0.f()) == null || (n10 = CollectionsKt.o(f11)) == null) {
            n10 = CollectionsKt.n();
        }
        if (CollectionsKt.g0(n10, Integer.valueOf(i10))) {
            C3248y0 c3248y02 = this.f24094u;
            if (c3248y02 != null && (f10 = c3248y02.f()) != null) {
                return f10.get(i10);
            }
        } else {
            C3248y0 c3248y03 = this.f24094u;
            if (c3248y03 != null) {
                return c3248y03.p();
            }
        }
        return null;
    }

    public static final void a(Context context, S0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C3099oa c3099oa = AbstractC3083na.f25061a;
        AdConfig adConfig = this$0.f24075b;
        c3099oa.getClass();
        try {
            if (!Omid.isActive()) {
                Omid.activate(context);
            } else {
                c3099oa.a(adConfig);
            }
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    public void c(@NotNull String monetizationContext) {
        Intrinsics.checkNotNullParameter(monetizationContext, "monetizationContext");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "setMonetizationContext ", this));
        }
        this.f24093t.b(monetizationContext);
    }

    @UiThread
    public final void d(@NotNull C3248y0 adSet) {
        Intrinsics.checkNotNullParameter(adSet, "adSet");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "onAuctionNotClosed ", this));
        }
        if (this.f24088o || t() == null) {
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).c("S0", D0.a("S0", "TAG", "handleAuctionNotClosed ", this));
        }
        if (this.f24074a == 1) {
            this.f24094u = adSet;
            this.A = adSet != null ? adSet.n() : false;
            F0 r10 = r();
            if (r10 != null) {
                r10.a(this.f24093t, adSet);
            }
        }
    }

    @SuppressLint({"SwitchIntDef"})
    @UiThread
    public final boolean e(byte b10) {
        int Y;
        Integer num;
        long j10;
        Integer num2;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "startTimer ", this));
        }
        if (b10 == 0) {
            C3255y7 c3255y7 = this.F;
            if (c3255y7 != null && (num2 = c3255y7.f25457d) != null) {
                Y = num2.intValue();
                j10 = Y;
            }
            j10 = 15000;
        } else if (b10 == 1) {
            C3255y7 c3255y72 = this.F;
            if (c3255y72 != null) {
                Y = c3255y72.f25456c;
                j10 = Y;
            }
            j10 = 15000;
        } else {
            if (b10 == 2) {
                C3255y7 c3255y73 = this.F;
                if (c3255y73 != null && (num = c3255y73.f25458e) != null) {
                    Y = num.intValue();
                }
                j10 = 15000;
            } else if (b10 == 4) {
                C3087ne c3087ne = this.f24077d;
                Intrinsics.checkNotNull(c3087ne);
                Y = c3087ne.Y();
            } else {
                InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
                if (interfaceC3269z52 != null) {
                    Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                    ((A5) interfaceC3269z52).b("S0", "Invalid value for timeOutScenario passed!. Please pass a valid value");
                }
                return false;
            }
            j10 = Y;
        }
        C2975ge c2975ge = this.f24095v;
        if (c2975ge != null) {
            Intrinsics.checkNotNullExpressionValue("ge", "TAG");
            if (c2975ge.f24780b.containsKey(Byte.valueOf(b10))) {
                Intrinsics.checkNotNullExpressionValue("ge", "TAG");
                Timer timer = (Timer) c2975ge.f24780b.get(Byte.valueOf(b10));
                if (timer != null) {
                    timer.cancel();
                    c2975ge.f24780b.remove(Byte.valueOf(b10));
                }
            }
            try {
                Timer timer2 = new Timer("ge");
                c2975ge.f24780b.put(Byte.valueOf(b10), timer2);
                timer2.schedule(new C2959fe(c2975ge, b10), j10);
                return true;
            } catch (InternalError e10) {
                Intrinsics.checkNotNullExpressionValue("ge", "TAG");
                e10.toString();
                return false;
            } catch (OutOfMemoryError unused) {
                Intrinsics.checkNotNullExpressionValue("ge", "TAG");
                AbstractC2984h7.a((byte) 1, "ge", "Could not execute timer due to OutOfMemory.");
                c2975ge.f24779a.c(b10);
                return false;
            }
        }
        return false;
    }

    public final int b(String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "parseViewabilityResponseValue ", this));
        }
        if (StringsKt.V(str, "track_", false, 2, null)) {
            str = str.substring(6);
            Intrinsics.checkNotNullExpressionValue(str, "this as java.lang.String).substring(startIndex)");
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x013f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final short c(@org.jetbrains.annotations.NotNull com.inmobi.media.F0 r25) {
        /*
            Method dump skipped, instructions count: 389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.S0.c(com.inmobi.media.F0):short");
    }

    public final void f(@NotNull F0 listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "onLoadSuccess ", this));
        }
        AdMetaInfo l10 = l();
        if (l10 == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z52).b("S0", "load success - ad unit null");
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2107);
            return;
        }
        b((byte) 1);
        InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
        if (interfaceC3269z53 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z53).a("S0", "callback - onAdLoadSucceeded");
        }
        listener.c(l10);
    }

    @UiThread
    public final void b(@NotNull InMobiAdRequestStatus requestStatus, boolean z10, short s10) {
        Intrinsics.checkNotNullParameter(requestStatus, "requestStatus");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).b("S0", "handleAdLoadFailure " + this + " errorCode - " + ((int) s10));
        }
        if (this.f24074a == 1 && z10) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).b("S0", X8.a("S0", "TAG", "load failed - ", s10));
            }
            InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
            if (interfaceC3269z53 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z53).d("S0", "AdUnit " + this + " state - FAILED");
            }
            d((byte) 3);
            b((byte) 1);
        }
        F0 r10 = r();
        if (r10 != null) {
            r10.a(this, requestStatus);
        } else {
            InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
            if (interfaceC3269z54 != null) {
                ((A5) interfaceC3269z54).a();
            }
        }
        if (s10 != 0) {
            b(s10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void d(com.inmobi.media.S0 r9) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.S0.d(com.inmobi.media.S0):void");
    }

    public final void a(@Nullable AdConfig adConfig) {
        this.f24075b = adConfig;
    }

    public final void a(@Nullable Handler handler) {
        this.f24085l = handler;
    }

    public final void a(@Nullable C2905ca c2905ca) {
        this.f24092s = c2905ca;
    }

    public final void a(long j10) {
        this.f24098y = j10;
    }

    public final void a(@NotNull TreeSet<Integer> treeSet) {
        Intrinsics.checkNotNullParameter(treeSet, "<set-?>");
        this.f24099z = treeSet;
    }

    public final void a(@NotNull Context context, @NotNull Z adPlacement, @Nullable F0 f02) {
        String placementType;
        String adTypes;
        TimeoutConfigurations$AdNonABConfig banner;
        C3255y7 c3255y7;
        TimeoutConfigurations$AdPreloadConfig banner2;
        TimeoutConfigurations$AdABConfig banner3;
        InterfaceC3269z5 interfaceC3269z5;
        InterfaceC3269z5 interfaceC3269z52;
        InterfaceC3269z5 interfaceC3269z53;
        Boolean o10;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adPlacement, "adPlacement");
        Intrinsics.checkNotNullExpressionValue("S0", "TAG");
        toString();
        a(context);
        WeakReference weakReference = new WeakReference(f02);
        this.f24079f = weakReference;
        String q10 = q();
        C3248y0 c3248y0 = this.f24094u;
        this.D = new N(weakReference, q10, (c3248y0 == null || (o10 = c3248y0.o()) == null) ? false : o10.booleanValue());
        this.f24093t = adPlacement;
        InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
        if (interfaceC3269z54 != null) {
            ((A5) interfaceC3269z54).a("S0", D0.a("S0", "TAG", "initTelemetry ", this));
        }
        this.H.put("AdImpressionSuccessful", this.I);
        InterfaceC3269z5 interfaceC3269z55 = this.f24083j;
        if (interfaceC3269z55 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z55).c("S0", "initInternetAvailabilityAdRetry");
        }
        if (this.f24075b == null && (interfaceC3269z53 = this.f24083j) != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z53).c("S0", "adConfig is null");
            Unit unit = Unit.f60915a;
        }
        if (this.f24093t.m() == null && (interfaceC3269z52 = this.f24083j) != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z52).c("S0", "placement.placementType is null");
            Unit unit2 = Unit.f60915a;
        }
        if (this.f24093t.b() == null && (interfaceC3269z5 = this.f24083j) != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).c("S0", "placement.adType is null");
            Unit unit3 = Unit.f60915a;
        }
        AdConfig adConfig = this.f24075b;
        if (adConfig != null && (placementType = this.f24093t.m()) != null && (adTypes = this.f24093t.b()) != null) {
            TimeoutConfigurations$MediationConfig mediationConfig = adConfig.getTimeouts().X();
            String d10 = Vc.d();
            Intrinsics.checkNotNullParameter(mediationConfig, "mediationConfig");
            Intrinsics.checkNotNullParameter(placementType, "placementType");
            Intrinsics.checkNotNullParameter(adTypes, "adTypes");
            if (placementType.equals("AB")) {
                TimeoutConfigurations$ABConfig aBConfig = mediationConfig.getABConfig();
                int hashCode = adTypes.hashCode();
                if (hashCode == -1396342996) {
                    if (adTypes.equals("banner")) {
                        banner3 = aBConfig.getBanner();
                        c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner3.getRetryInterval()), AbstractC3239x7.a(d10, banner3.getMaxRetries()), AbstractC3239x7.a(d10, banner3.getLoadTimeout()), (Integer) null, 24);
                    }
                    banner3 = aBConfig.getBanner();
                    c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner3.getRetryInterval()), AbstractC3239x7.a(d10, banner3.getMaxRetries()), AbstractC3239x7.a(d10, banner3.getLoadTimeout()), (Integer) null, 24);
                } else if (hashCode == -1052618729) {
                    if (adTypes.equals("native")) {
                        banner3 = aBConfig.getNative();
                        c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner3.getRetryInterval()), AbstractC3239x7.a(d10, banner3.getMaxRetries()), AbstractC3239x7.a(d10, banner3.getLoadTimeout()), (Integer) null, 24);
                    }
                    banner3 = aBConfig.getBanner();
                    c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner3.getRetryInterval()), AbstractC3239x7.a(d10, banner3.getMaxRetries()), AbstractC3239x7.a(d10, banner3.getLoadTimeout()), (Integer) null, 24);
                } else if (hashCode == 104431) {
                    if (adTypes.equals("int")) {
                        banner3 = aBConfig.getInterstitial();
                        c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner3.getRetryInterval()), AbstractC3239x7.a(d10, banner3.getMaxRetries()), AbstractC3239x7.a(d10, banner3.getLoadTimeout()), (Integer) null, 24);
                    }
                    banner3 = aBConfig.getBanner();
                    c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner3.getRetryInterval()), AbstractC3239x7.a(d10, banner3.getMaxRetries()), AbstractC3239x7.a(d10, banner3.getLoadTimeout()), (Integer) null, 24);
                } else {
                    if (hashCode == 93166550 && adTypes.equals("audio")) {
                        banner3 = aBConfig.getAudio();
                        c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner3.getRetryInterval()), AbstractC3239x7.a(d10, banner3.getMaxRetries()), AbstractC3239x7.a(d10, banner3.getLoadTimeout()), (Integer) null, 24);
                    }
                    banner3 = aBConfig.getBanner();
                    c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner3.getRetryInterval()), AbstractC3239x7.a(d10, banner3.getMaxRetries()), AbstractC3239x7.a(d10, banner3.getLoadTimeout()), (Integer) null, 24);
                }
            } else if (placementType.equals("Preload")) {
                TimeoutConfigurations$PreloadConfig preloadConfig = mediationConfig.getPreloadConfig();
                int hashCode2 = adTypes.hashCode();
                if (hashCode2 == -1396342996) {
                    if (adTypes.equals("banner")) {
                        banner2 = preloadConfig.getBanner();
                        c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner2.getRetryInterval()), AbstractC3239x7.a(d10, banner2.getMaxRetries()), AbstractC3239x7.a(d10, banner2.getLoadTimeout()), Integer.valueOf(AbstractC3239x7.a(d10, banner2.getMuttTimeout())), Integer.valueOf(AbstractC3239x7.a(d10, banner2.getPreloadTimeout())));
                    }
                    banner2 = preloadConfig.getBanner();
                    c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner2.getRetryInterval()), AbstractC3239x7.a(d10, banner2.getMaxRetries()), AbstractC3239x7.a(d10, banner2.getLoadTimeout()), Integer.valueOf(AbstractC3239x7.a(d10, banner2.getMuttTimeout())), Integer.valueOf(AbstractC3239x7.a(d10, banner2.getPreloadTimeout())));
                } else if (hashCode2 == -1052618729) {
                    if (adTypes.equals("native")) {
                        banner2 = preloadConfig.getNative();
                        c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner2.getRetryInterval()), AbstractC3239x7.a(d10, banner2.getMaxRetries()), AbstractC3239x7.a(d10, banner2.getLoadTimeout()), Integer.valueOf(AbstractC3239x7.a(d10, banner2.getMuttTimeout())), Integer.valueOf(AbstractC3239x7.a(d10, banner2.getPreloadTimeout())));
                    }
                    banner2 = preloadConfig.getBanner();
                    c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner2.getRetryInterval()), AbstractC3239x7.a(d10, banner2.getMaxRetries()), AbstractC3239x7.a(d10, banner2.getLoadTimeout()), Integer.valueOf(AbstractC3239x7.a(d10, banner2.getMuttTimeout())), Integer.valueOf(AbstractC3239x7.a(d10, banner2.getPreloadTimeout())));
                } else if (hashCode2 == 104431) {
                    if (adTypes.equals("int")) {
                        banner2 = preloadConfig.getInterstitial();
                        c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner2.getRetryInterval()), AbstractC3239x7.a(d10, banner2.getMaxRetries()), AbstractC3239x7.a(d10, banner2.getLoadTimeout()), Integer.valueOf(AbstractC3239x7.a(d10, banner2.getMuttTimeout())), Integer.valueOf(AbstractC3239x7.a(d10, banner2.getPreloadTimeout())));
                    }
                    banner2 = preloadConfig.getBanner();
                    c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner2.getRetryInterval()), AbstractC3239x7.a(d10, banner2.getMaxRetries()), AbstractC3239x7.a(d10, banner2.getLoadTimeout()), Integer.valueOf(AbstractC3239x7.a(d10, banner2.getMuttTimeout())), Integer.valueOf(AbstractC3239x7.a(d10, banner2.getPreloadTimeout())));
                } else {
                    if (hashCode2 == 93166550 && adTypes.equals("audio")) {
                        banner2 = preloadConfig.getAudio();
                        c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner2.getRetryInterval()), AbstractC3239x7.a(d10, banner2.getMaxRetries()), AbstractC3239x7.a(d10, banner2.getLoadTimeout()), Integer.valueOf(AbstractC3239x7.a(d10, banner2.getMuttTimeout())), Integer.valueOf(AbstractC3239x7.a(d10, banner2.getPreloadTimeout())));
                    }
                    banner2 = preloadConfig.getBanner();
                    c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner2.getRetryInterval()), AbstractC3239x7.a(d10, banner2.getMaxRetries()), AbstractC3239x7.a(d10, banner2.getLoadTimeout()), Integer.valueOf(AbstractC3239x7.a(d10, banner2.getMuttTimeout())), Integer.valueOf(AbstractC3239x7.a(d10, banner2.getPreloadTimeout())));
                }
            } else {
                TimeoutConfigurations$NonABConfig nonABConfig = mediationConfig.getNonABConfig();
                int hashCode3 = adTypes.hashCode();
                if (hashCode3 == -1396342996) {
                    if (adTypes.equals("banner")) {
                        banner = nonABConfig.getBanner();
                        c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner.getRetryInterval()), AbstractC3239x7.a(d10, banner.getMaxRetries()), AbstractC3239x7.a(d10, banner.getLoadTimeout()), Integer.valueOf(AbstractC3239x7.a(d10, banner.getMuttTimeout())), 16);
                    }
                    banner = nonABConfig.getBanner();
                    c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner.getRetryInterval()), AbstractC3239x7.a(d10, banner.getMaxRetries()), AbstractC3239x7.a(d10, banner.getLoadTimeout()), Integer.valueOf(AbstractC3239x7.a(d10, banner.getMuttTimeout())), 16);
                } else if (hashCode3 == -1052618729) {
                    if (adTypes.equals("native")) {
                        banner = nonABConfig.getNative();
                        c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner.getRetryInterval()), AbstractC3239x7.a(d10, banner.getMaxRetries()), AbstractC3239x7.a(d10, banner.getLoadTimeout()), Integer.valueOf(AbstractC3239x7.a(d10, banner.getMuttTimeout())), 16);
                    }
                    banner = nonABConfig.getBanner();
                    c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner.getRetryInterval()), AbstractC3239x7.a(d10, banner.getMaxRetries()), AbstractC3239x7.a(d10, banner.getLoadTimeout()), Integer.valueOf(AbstractC3239x7.a(d10, banner.getMuttTimeout())), 16);
                } else if (hashCode3 == 104431) {
                    if (adTypes.equals("int")) {
                        banner = nonABConfig.getInterstitial();
                        c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner.getRetryInterval()), AbstractC3239x7.a(d10, banner.getMaxRetries()), AbstractC3239x7.a(d10, banner.getLoadTimeout()), Integer.valueOf(AbstractC3239x7.a(d10, banner.getMuttTimeout())), 16);
                    }
                    banner = nonABConfig.getBanner();
                    c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner.getRetryInterval()), AbstractC3239x7.a(d10, banner.getMaxRetries()), AbstractC3239x7.a(d10, banner.getLoadTimeout()), Integer.valueOf(AbstractC3239x7.a(d10, banner.getMuttTimeout())), 16);
                } else {
                    if (hashCode3 == 93166550 && adTypes.equals("audio")) {
                        banner = nonABConfig.getAudio();
                        c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner.getRetryInterval()), AbstractC3239x7.a(d10, banner.getMaxRetries()), AbstractC3239x7.a(d10, banner.getLoadTimeout()), Integer.valueOf(AbstractC3239x7.a(d10, banner.getMuttTimeout())), 16);
                    }
                    banner = nonABConfig.getBanner();
                    c3255y7 = new C3255y7(AbstractC3239x7.a(d10, banner.getRetryInterval()), AbstractC3239x7.a(d10, banner.getMaxRetries()), AbstractC3239x7.a(d10, banner.getLoadTimeout()), Integer.valueOf(AbstractC3239x7.a(d10, banner.getMuttTimeout())), 16);
                }
            }
            this.E = new C2967g6(c3255y7);
            this.F = c3255y7;
        }
        V3 v32 = U3.f24244a;
        if (context != null && U3.f24251h == null) {
            U3.f24251h = Float.valueOf(new TextView(context).getTextSize());
            Intrinsics.checkNotNullExpressionValue("U3", "TAG");
        } else {
            Intrinsics.checkNotNullExpressionValue("U3", "TAG");
        }
        n0();
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public void f(@NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            StringBuilder a10 = H6.a("S0", "TAG", "RenderView completed loading ad content, for index ");
            a10.append(this.f24080g.indexOf(renderView));
            a10.append(' ');
            a10.append(this);
            ((A5) interfaceC3269z5).a("S0", a10.toString());
        }
    }

    @UiThread
    public final void b(@NotNull C3248y0 adSet) {
        Intrinsics.checkNotNullParameter(adSet, "adSet");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "loadResponse ", this));
        }
        c(adSet);
    }

    public final void f() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "checkInteractiveAndSignal ", this));
        }
        if (this.f24086m && this.f24089p && this.f24090q) {
            r0();
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public void g(@NotNull final GestureDetector$OnGestureListenerC2941ec renderView) {
        Handler handler;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "onRenderViewSignaledAdFailed ", this));
        }
        if (this.f24088o || t() == null || (handler = this.f24085l) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: ub.x1
            @Override // java.lang.Runnable
            public final void run() {
                S0.b(S0.this, renderView);
            }
        });
    }

    @UiThread
    public void b(@Nullable F0 f02) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "handleAdScreenDisplayed ", this));
        }
    }

    public static final void b(S0 this$0, GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(renderView, "$renderView");
        this$0.a(renderView, (short) 2137);
    }

    public void b(@NotNull final GestureDetector$OnGestureListenerC2941ec renderView, final short s10) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "onRenderViewError ", this));
        }
        if (this.f24088o || t() == null) {
            return;
        }
        try {
            Handler handler = this.f24085l;
            if (handler != null) {
                handler.post(new Runnable() { // from class: ub.a2
                    @Override // java.lang.Runnable
                    public final void run() {
                        S0.a(S0.this, renderView, s10);
                    }
                });
            }
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).b("S0", rf.a(e10, H6.a("S0", "TAG", "Loading ad markup into container encountered an unexpected error: ")));
            }
        }
    }

    public final void g(int i10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "resetCurrentRenderingIndex ", this));
        }
        this.f24097x = i10;
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public void b(@NotNull HashMap<Object, Object> rewards) {
        Intrinsics.checkNotNullParameter(rewards, "rewards");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "onAdRewardActionCompleted ", this));
        }
        if (this.f24088o || t() == null) {
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z52).a("S0", "Ad reward action completed. Params:" + rewards);
        }
        F0 r10 = r();
        if (r10 != null) {
            r10.b(rewards);
        }
    }

    @WorkerThread
    public void d(@NotNull String podAdContext) {
        Intrinsics.checkNotNullParameter(podAdContext, "podAdContext");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "setPodAdContext ", this));
        }
        if (this.A) {
            this.B = podAdContext;
        }
    }

    public final void b(short s10) {
        long j10;
        long elapsedRealtime;
        Boolean o10;
        String p10;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "submitAdLoadFailedEvent ", this));
        }
        HashMap hashMap = new HashMap();
        if (s10 == 2138 || s10 == 2109) {
            j10 = this.I.f24231d;
            ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
            elapsedRealtime = SystemClock.elapsedRealtime();
        } else if (s10 == 2139) {
            j10 = this.I.f24234g;
            ScheduledExecutorService scheduledExecutorService2 = Ie.f23745a;
            elapsedRealtime = SystemClock.elapsedRealtime();
        } else {
            j10 = this.I.f24230c;
            ScheduledExecutorService scheduledExecutorService3 = Ie.f23745a;
            elapsedRealtime = SystemClock.elapsedRealtime();
        }
        hashMap.put("latency", Long.valueOf(elapsedRealtime - j10));
        hashMap.put("errorCode", Short.valueOf(s10));
        hashMap.put("markupType", E());
        C2976h u10 = u();
        if (u10 != null && (p10 = u10.p()) != null) {
            hashMap.put("creativeType", "\"" + p10 + '\"');
        }
        C2967g6 c2967g6 = this.E;
        if (c2967g6 != null) {
            hashMap.put("retryCount", Integer.valueOf(c2967g6.f24767b));
        }
        C3248y0 c3248y0 = this.f24094u;
        if (c3248y0 != null && (o10 = c3248y0.o()) != null) {
            hashMap.put("isRewarded", o10);
        }
        if (S().length() > 0) {
            hashMap.put("metadataBlob", S());
        }
        c(hashMap);
        c((Map) hashMap);
        c("AdLoadFailed", hashMap);
    }

    @VisibleForTesting
    public final void d(boolean z10) {
        this.A = z10;
    }

    public static final void c(S0 this$0, GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(renderView, "$renderView");
        this$0.m(renderView);
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public void c() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "onAdScreenDisplayFailed ", this));
        }
        if (this.f24088o || t() == null) {
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z52).b("S0", "Ad failed to display");
        }
        Handler handler = this.f24085l;
        if (handler != null) {
            handler.post(new Runnable() { // from class: ub.y1
                @Override // java.lang.Runnable
                public final void run() {
                    S0.e(S0.this);
                }
            });
        }
    }

    public final void c(HashMap hashMap) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "constructTelemetryPayload ", this));
        }
        hashMap.put("adType", q());
        hashMap.put("networkType", L3.q());
        hashMap.put("plId", Long.valueOf(this.f24093t.l()));
        String m10 = this.f24093t.m();
        if (m10 != null) {
            hashMap.put("plType", m10);
        }
    }

    public final void c(short s10) {
        C2976h m10;
        Boolean o10;
        String p10;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "submitAdShowFailed ", this));
        }
        HashMap hashMap = new HashMap();
        long j10 = this.I.f24232e;
        ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
        hashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j10));
        hashMap.put("errorCode", Short.valueOf(s10));
        hashMap.put("markupType", E());
        if (this.A) {
            m10 = b(this.f24097x);
        } else {
            m10 = m();
        }
        if (m10 != null && (p10 = m10.p()) != null) {
            hashMap.put("creativeType", "\"" + p10 + '\"');
        }
        C3248y0 c3248y0 = this.f24094u;
        if (c3248y0 != null && (o10 = c3248y0.o()) != null) {
            hashMap.put("isRewarded", o10);
        }
        if (S().length() > 0) {
            hashMap.put("metadataBlob", S());
        }
        c(hashMap);
        c((Map) hashMap);
        c("AdShowFailed", hashMap);
    }

    public final void b(@NotNull Map<String, Object> payload) {
        Boolean o10;
        String p10;
        Intrinsics.checkNotNullParameter(payload, "payload");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "submitServerError ", this));
        }
        if (this.f24078e == null) {
            return;
        }
        if (payload.get("reason") == null) {
            payload.put("reason", "");
        }
        C2976h u10 = u();
        if (u10 != null && (p10 = u10.p()) != null) {
            payload.put("creativeType", "\"" + p10 + '\"');
        }
        C2967g6 c2967g6 = this.E;
        if (c2967g6 != null) {
            payload.put("retryCount", Integer.valueOf(c2967g6.f24767b));
        }
        C3248y0 c3248y0 = this.f24094u;
        if (c3248y0 != null && (o10 = c3248y0.o()) != null) {
            payload.put("isRewarded", o10);
        }
        c(payload);
        B0 b02 = this.f24078e;
        Intrinsics.checkNotNull(b02);
        b02.a(payload);
    }

    public final void c(Map map) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "updateIdsInTelemetryPayload ", this));
        }
        C2976h m10 = m();
        if (m10 != null) {
            map.put("creativeId", "\"" + m10.o() + '\"');
            map.put("impressionId", "\"" + m10.s() + '\"');
        }
    }

    public final void b(long j10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "submitAdGetSignalsSucceeded ", this));
        }
        this.f24091r = false;
        HashMap hashMap = new HashMap();
        hashMap.put("adType", q());
        hashMap.put("latency", Long.valueOf(System.currentTimeMillis() - j10));
        hashMap.put("networkType", L3.q());
        c("AdGetSignalsSucceeded", hashMap);
    }

    @VisibleForTesting
    public final void c(@NotNull String eventType, @NotNull Map<String, Object> kv) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(kv, "kv");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "submitTelemetryEvent ", this));
        }
        Pd pd2 = Pd.f23988a;
        Pd.b(eventType, kv, Td.f24224a);
    }

    public void a(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "setContext ", this));
        }
        this.f24076c = new WeakReference(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005c, code lost:
        if (r6.equals("ServerNoFill") == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0065, code lost:
        if (r6.equals("AdLoadFailed") == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006e, code lost:
        if (r6.equals("AdLoadSuccessful") == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0075, code lost:
        if (r6.equals("ServerError") == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007c, code lost:
        if (r6.equals("ServerFill") == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0085, code lost:
        if (r6.equals("RenderSuccess") != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0087, code lost:
        r0 = r5.E;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0089, code lost:
        if (r0 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008b, code lost:
        r7.put("retryCount", java.lang.Integer.valueOf(r0.f24767b));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(@org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull java.util.Map<java.lang.String, java.lang.Object> r7) {
        /*
            r5 = this;
            java.lang.String r0 = "eventType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "kv"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            com.inmobi.media.z5 r0 = r5.f24083j
            java.lang.String r1 = "TAG"
            java.lang.String r2 = "S0"
            if (r0 == 0) goto L32
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r1)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "onTelemetryEvent "
            r3.<init>(r4)
            r3.append(r5)
            java.lang.String r4 = " adState="
            r3.append(r4)
            byte r4 = r5.f24074a
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            com.inmobi.media.A5 r0 = (com.inmobi.media.A5) r0
            r0.c(r2, r3)
        L32:
            byte r0 = r5.f24074a
            r3 = 3
            if (r0 == r3) goto Lb8
            r3 = 8
            if (r0 == r3) goto Lb8
            com.inmobi.media.z5 r0 = r5.f24083j
            if (r0 == 0) goto L4a
            java.lang.String r3 = "addRetryCountToTelemetryEvent event - "
            java.lang.String r1 = com.inmobi.media.I6.a(r2, r1, r3, r6)
            com.inmobi.media.A5 r0 = (com.inmobi.media.A5) r0
            r0.c(r2, r1)
        L4a:
            int r0 = r6.hashCode()
            java.lang.String r1 = "ServerFill"
            java.lang.String r2 = "ServerError"
            switch(r0) {
                case -1959333523: goto L7f;
                case 167123846: goto L78;
                case 885222501: goto L71;
                case 925075267: goto L68;
                case 1881615718: goto L5f;
                case 1925668903: goto L56;
                default: goto L55;
            }
        L55:
            goto L96
        L56:
            java.lang.String r0 = "ServerNoFill"
            boolean r0 = r6.equals(r0)
            if (r0 != 0) goto L87
            goto L96
        L5f:
            java.lang.String r0 = "AdLoadFailed"
            boolean r0 = r6.equals(r0)
            if (r0 != 0) goto L87
            goto L96
        L68:
            java.lang.String r0 = "AdLoadSuccessful"
            boolean r0 = r6.equals(r0)
            if (r0 != 0) goto L87
            goto L96
        L71:
            boolean r0 = r6.equals(r2)
            if (r0 != 0) goto L87
            goto L96
        L78:
            boolean r0 = r6.equals(r1)
            if (r0 != 0) goto L87
            goto L96
        L7f:
            java.lang.String r0 = "RenderSuccess"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L96
        L87:
            com.inmobi.media.g6 r0 = r5.E
            if (r0 == 0) goto L96
            int r0 = r0.f24767b
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.String r3 = "retryCount"
            r7.put(r3, r0)
        L96:
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r1)
            if (r0 == 0) goto L9e
            r0 = 1
            goto La2
        L9e:
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r2)
        La2:
            if (r0 == 0) goto Lb5
            com.inmobi.media.h r0 = r5.u()
            if (r0 == 0) goto Lb5
            java.lang.String r0 = r0.p()
            if (r0 == 0) goto Lb5
            java.lang.String r1 = "creativeType"
            r7.put(r1, r0)
        Lb5:
            r5.c(r6, r7)
        Lb8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.S0.b(java.lang.String, java.util.Map):void");
    }

    public void c(byte b10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).b("S0", D0.a("S0", "TAG", "onOOM ", this));
        }
        if (b10 == 0) {
            a(this.f24093t, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY), (short) 2110);
        } else if (b10 == 2 || b10 == 1) {
            byte b11 = this.f24074a;
            if (b11 == 0 || 1 == b11 || 2 == b11) {
                InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
                if (interfaceC3269z52 != null) {
                    Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                    ((A5) interfaceC3269z52).a("S0", "onOOM INTERNAL_LOAD_TIME_OUT or PRE_LOAD_TIME_OUT");
                }
                this.G.removeCallbacksAndMessages(null);
                m0();
                b((short) 2112);
                F0 r10 = r();
                if (r10 != null) {
                    r10.a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY));
                }
            }
        } else if (b10 == 4) {
            F0 r11 = r();
            if (r11 != null) {
                r11.g();
            }
        } else if (b10 == 3) {
            InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
            if (interfaceC3269z53 != null) {
                ((A5) interfaceC3269z53).a("S0", X8.a("S0", "TAG", "OOM Timeout scenario ignored for : ", b10));
            }
        } else {
            InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
            if (interfaceC3269z54 != null) {
                ((A5) interfaceC3269z54).a("S0", X8.a("S0", "TAG", "OOM Timeout scenario ignored for : ", b10));
            }
        }
    }

    public final void a(@NotNull InterfaceC3269z5 logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.f24083j = logger;
        B0 p10 = p();
        p10.getClass();
        Intrinsics.checkNotNullParameter(logger, "logger");
        p10.f23499f = logger;
        N n10 = this.D;
        n10.getClass();
        Intrinsics.checkNotNullParameter(logger, "logger");
        n10.f23870f = logger;
    }

    public final Q a(int i10) {
        Boolean o10;
        String o11;
        String p10;
        String w10;
        C2976h b10 = b(i10);
        String str = (b10 == null || (r1 = b10.u()) == null) ? "html" : "html";
        String a10 = (Intrinsics.areEqual(this.f24093t.b(), "banner") || Intrinsics.areEqual(this.f24093t.b(), "audio")) ? this.f24093t.a() : null;
        String b11 = this.f24093t.b();
        boolean b12 = b(b10);
        long l10 = this.f24093t.l();
        boolean c10 = c(i10);
        String e10 = this.f24093t.e();
        String p11 = b10 != null ? b10.p() : null;
        AdMetaInfo l11 = l();
        String creativeID = l11 != null ? l11.getCreativeID() : null;
        boolean p12 = this.f24093t.p();
        LinkedHashMap linkedHashMap = this.H;
        WatermarkData watermarkData = this.J;
        AdQualityControl e11 = b10 != null ? b10.e() : null;
        byte J = J();
        HashMap hashMap = this.f24082i;
        Set set = hashMap != null ? (Set) hashMap.get(Integer.valueOf(i10)) : null;
        C2976h b13 = b(i10);
        String s10 = b13 != null ? b13.s() : null;
        String str2 = (b10 == null || (r2 = b10.t()) == null) ? "DEFAULT" : "DEFAULT";
        LinkedHashMap linkedHashMap2 = O2.f23923a;
        C3069mc c3069mc = new C3069mc(((TelemetryConfig) AbstractC3110p5.a("telemetry", "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig", null)).getMaxTemplateEvents());
        Z z10 = this.f24093t;
        String E = E();
        String str3 = (b10 == null || (w10 = b10.w()) == null) ? "" : w10;
        C2967g6 c2967g6 = this.E;
        int i11 = c2967g6 != null ? c2967g6.f24767b : 0;
        C2976h u10 = u();
        String str4 = (u10 == null || (p10 = u10.p()) == null) ? "" : p10;
        C2976h u11 = u();
        String str5 = (u11 == null || (o11 = u11.o()) == null) ? "" : o11;
        C3248y0 c3248y0 = this.f24094u;
        return new Q(b11, b12, l10, c10, creativeID, p11, str, a10, this, e10, linkedHashMap, Boolean.valueOf(p12), watermarkData, e11, J, set, s10, str2, new C2989hc(z10, E, str3, i11, str4, str5, (c3248y0 == null || (o10 = c3248y0.o()) == null) ? false : o10.booleanValue(), i10, this.I.f24237j, c3069mc, DataLoaderHelper.PRELOAD_DEFAULT_SCENE), this.f24083j, 2228224);
    }

    @UiThread
    public final void b(byte b10) {
        C2975ge c2975ge;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "cancelTimer ", this));
        }
        if (b10 == 1 && (c2975ge = this.f24095v) != null) {
            Intrinsics.checkNotNullExpressionValue("ge", "TAG");
            Timer timer = (Timer) c2975ge.f24780b.get((byte) 2);
            if (timer != null) {
                timer.cancel();
                c2975ge.f24780b.remove((byte) 2);
            }
        }
        C2975ge c2975ge2 = this.f24095v;
        if (c2975ge2 != null) {
            Intrinsics.checkNotNullExpressionValue("ge", "TAG");
            Timer timer2 = (Timer) c2975ge2.f24780b.get(Byte.valueOf(b10));
            if (timer2 != null) {
                timer2.cancel();
                c2975ge2.f24780b.remove(Byte.valueOf(b10));
            }
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public void c(@NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        List<String> c10;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "fireImpressionTracker ", this));
        }
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        C2976h b10 = b(this.f24080g.indexOf(renderView));
        if (((b10 != null ? b10.p() : null) != null && Intrinsics.areEqual(b10.p(), "video")) || b10 == null || (c10 = b10.c("impression")) == null) {
            return;
        }
        for (String str : c10) {
            Yd telemetryOnAdImpression = renderView.getTelemetryOnAdImpression();
            telemetryOnAdImpression.getClass();
            Intrinsics.checkNotNullParameter("adResponseTracker", "<set-?>");
            telemetryOnAdImpression.f24415e = "adResponseTracker";
            C3234x2.f25412a.b(str, true, (Z1) new M(this.D, telemetryOnAdImpression), this.f24083j);
        }
    }

    public final void b(int i10, boolean z10) {
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "fireAdPodShowResult ", this));
        }
        ArrayList list = this.f24080g;
        Intrinsics.checkNotNullParameter(list, "list");
        if (i10 < 0 || i10 >= list.size() || (gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) this.f24080g.get(i10)) == null) {
            return;
        }
        gestureDetector$OnGestureListenerC2941ec.b(z10);
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public void b(@NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        List<String> c10;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "fireClickTracker ", this));
        }
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        C2976h b10 = b(this.f24080g.indexOf(renderView));
        if (((b10 != null ? b10.p() : null) != null && Intrinsics.areEqual(b10.p(), "video")) || b10 == null || (c10 = b10.c("click")) == null) {
            return;
        }
        for (String str : c10) {
            C3234x2.f25412a.a(str, true, this.f24083j);
        }
    }

    @VisibleForTesting
    @NotNull
    public final Pair<String, Short> a(boolean z10, boolean z11, boolean z12) {
        Short sh2;
        StringBuilder sb2 = new StringBuilder("Immersive not supported on");
        BitSet bitSet = new BitSet(3);
        ArrayList arrayList = new ArrayList();
        if (!z10) {
            arrayList.add(" config");
            bitSet.set(0);
        }
        if (!z11) {
            arrayList.add(" device");
            bitSet.set(1);
        }
        if (!z12) {
            arrayList.add(" ad");
            bitSet.set(2);
        }
        sb2.append(CollectionsKt.A0(arrayList, ",", null, null, 0, null, null, 62, null));
        Intrinsics.checkNotNullParameter(bitSet, "bitSet");
        if (bitSet.get(0) && bitSet.get(1) && bitSet.get(2)) {
            sh2 = (short) 2202;
        } else if (bitSet.get(0) && bitSet.get(1)) {
            sh2 = (short) 2200;
        } else if (bitSet.get(0) && bitSet.get(2)) {
            sh2 = (short) 2199;
        } else if (bitSet.get(1) && bitSet.get(2)) {
            sh2 = (short) 2201;
        } else if (bitSet.get(0)) {
            sh2 = (short) 2196;
        } else if (bitSet.get(1)) {
            sh2 = (short) 2197;
        } else {
            sh2 = bitSet.get(2) ? (short) 2198 : null;
        }
        short shortValue = sh2 != null ? sh2.shortValue() : (short) -1;
        if (shortValue == -1) {
            return new Pair<>("Invalid Reason", (short) -1);
        }
        return new Pair<>(sb2.toString(), Short.valueOf(shortValue));
    }

    public final void a(@NotNull F0 listener, short s10) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "onAdShowFailed ", this));
        }
        c(s10);
        listener.d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0250, code lost:
        r0 = r18;
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0257, code lost:
        if (r14.has(r0) != true) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0263, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r19, r14.getString(r0)) == false) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0265, code lost:
        r27.f24084k = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0332  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(@androidx.annotation.NonNull @org.jetbrains.annotations.NotNull com.inmobi.media.C2976h r28, int r29, boolean r30) {
        /*
            Method dump skipped, instructions count: 841
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.S0.a(com.inmobi.media.h, int, boolean):boolean");
    }

    public final HashMap a(JSONArray jSONArray) {
        JSONObject jSONObject;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "parseInMobiViewabilityParams ", this));
        }
        try {
            int length = jSONArray.length();
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    jSONObject = null;
                    break;
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
                if (jSONObject2.has("inmobi")) {
                    jSONObject = jSONObject2.getJSONObject("inmobi");
                    break;
                }
                i10++;
            }
            if (jSONObject != null) {
                HashMap hashMap = new HashMap();
                String optString = jSONObject.optString(CrashHianalyticsData.TIME);
                Intrinsics.checkNotNullExpressionValue(optString, "optString(...)");
                int b10 = b(optString);
                if (b10 != -1) {
                    hashMap.put(CrashHianalyticsData.TIME, Integer.valueOf(b10));
                }
                String optString2 = jSONObject.optString(MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
                Intrinsics.checkNotNullExpressionValue(optString2, "optString(...)");
                int b11 = b(optString2);
                if (b11 != -1) {
                    hashMap.put(MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, Integer.valueOf(b11));
                }
                String optString3 = jSONObject.optString("pixel");
                Intrinsics.checkNotNullExpressionValue(optString3, "optString(...)");
                int b12 = b(optString3);
                if (b12 != -1) {
                    hashMap.put("pixel", Integer.valueOf(b12));
                }
                int optInt = jSONObject.optInt("type");
                if (optInt != -1) {
                    hashMap.put("type", Integer.valueOf(optInt));
                    if (optInt == 2) {
                        JSONArray optJSONArray = jSONObject.optJSONArray(TypedValues.AttributesType.S_FRAME);
                        if (optJSONArray != null && optJSONArray.length() == 4) {
                            JSONArray optJSONArray2 = jSONObject.optJSONArray(TypedValues.AttributesType.S_FRAME);
                            Intrinsics.checkNotNullExpressionValue(optJSONArray2, "optJSONArray(...)");
                            hashMap.put(TypedValues.AttributesType.S_FRAME, optJSONArray2);
                        } else {
                            hashMap.put(TypedValues.AttributesType.S_FRAME, new JSONArray("[0,0,0,0]"));
                        }
                    }
                }
                return hashMap;
            }
            return null;
        } catch (JSONException e10) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).b("S0", E0.a(e10, H6.a("S0", "TAG", "Exception while parsing MoatParams from response : ")));
            }
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e10);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
            return null;
        }
    }

    @UiThread
    public void a(@NotNull Z placement, boolean z10, short s10) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "onAssetAvailabilityChanged ", this));
        }
        if (this.f24088o || t() == null) {
            return;
        }
        if (s10 != 0) {
            b(s10);
        }
        a(placement, z10);
    }

    @WorkerThread
    public void a(int i10, @NotNull GestureDetector$OnGestureListenerC2941ec renderView, @Nullable Context context) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).c("S0", "Show pod ad with index : " + i10 + " from creative: " + this.f24080g.indexOf(renderView) + ' ' + this);
        }
        if (i10 >= 0) {
            this.f24097x = i10;
        } else {
            this.f24097x++;
        }
    }

    @Override // com.inmobi.media.InterfaceC2861a0
    public void a(@NotNull GestureDetector$OnGestureListenerC2941ec renderView, @Nullable Context context) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "closeCurrentPodAd ", this));
        }
    }

    public void a(Z placement, boolean z10) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "handleAssetAvailabilityChanged ", this));
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z52).a("S0", "Asset availability changed (" + z10 + ") for placement ID (" + placement + ')');
        }
    }

    public void a(C3248y0 adSet) {
        LinkedList<C2976h> f10;
        LinkedList<C2976h> f11;
        Intrinsics.checkNotNullParameter(adSet, "adSet");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "handleAdFetchSuccessful ", this));
        }
        if (this.f24074a == 1) {
            this.f24094u = adSet;
            int i10 = 0;
            this.A = adSet != null ? adSet.n() : false;
            C3248y0 c3248y0 = this.f24094u;
            if (c3248y0 != null && (f11 = c3248y0.f()) != null) {
                i10 = f11.size();
            }
            this.f24080g = new ArrayList(i10);
            C3248y0 c3248y02 = this.f24094u;
            if (c3248y02 != null && (f10 = c3248y02.f()) != null) {
                for (C2976h c2976h : f10) {
                    this.f24080g.add(null);
                }
            }
            C2976h p10 = adSet.p();
            if (p10 == null) {
                InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
                if (interfaceC3269z52 != null) {
                    Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                    ((A5) interfaceC3269z52).b("S0", "top ad is null. failed.");
                }
                b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2119);
                return;
            }
            InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
            if (interfaceC3269z53 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z53).a("S0", "starting executor. parsing ad response");
            }
            A a10 = this.C;
            int hashCode = hashCode();
            C3194ua c3194ua = new C3194ua(this, p10, adSet, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), this.f24083j);
            a10.getClass();
            A.a(hashCode, c3194ua);
            return;
        }
        InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
        if (interfaceC3269z54 != null) {
            StringBuilder a11 = H6.a("S0", "TAG", "incorrect state - ");
            a11.append((int) this.f24074a);
            ((A5) interfaceC3269z54).b("S0", a11.toString());
        }
        b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2118);
    }

    @Override // com.inmobi.media.InterfaceC2861a0
    @WorkerThread
    public boolean a(@NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "hasNextAdInAdPod ", this));
            return false;
        }
        return false;
    }

    @UiThread
    public void a(boolean z10, @NotNull InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "onDidParseAfterFetch ", this));
        }
        if (z10) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z52).a("S0", "Ad fetch successful");
            }
            InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
            if (interfaceC3269z53 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z53).d("S0", "AdUnit " + this + " state - AVAILABLE");
            }
            d((byte) 2);
            return;
        }
        InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
        if (interfaceC3269z54 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z54).b("S0", "onComplete parse success");
        }
        b(status, true, (short) 0);
    }

    @Override // com.inmobi.media.InterfaceC2943ee
    @UiThread
    public void a(byte b10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "onTimeOut ", this));
        }
        if (b10 == 0) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                StringBuilder a10 = H6.a("S0", "TAG", "AdRequestTimeOut by timer, Adstate=");
                a10.append((int) this.f24074a);
                ((A5) interfaceC3269z52).a("S0", a10.toString());
            }
            if (this.f24074a != 3) {
                a(this.f24093t, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_TIMED_OUT), (short) 2109);
            }
        } else if (b10 != 2 && b10 != 1) {
            if (b10 == 4) {
                InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
                if (interfaceC3269z53 != null) {
                    Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                    ((A5) interfaceC3269z53).a("S0", "Show RequestTimeOut by show timer");
                }
                F0 r10 = r();
                if (r10 != null) {
                    r10.g();
                }
            } else if (b10 == 3) {
                InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
                if (interfaceC3269z54 != null) {
                    Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                    ((A5) interfaceC3269z54).a("S0", "Bitmap TimeOut not handled here");
                }
            } else {
                InterfaceC3269z5 interfaceC3269z55 = this.f24083j;
                if (interfaceC3269z55 != null) {
                    Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                    ((A5) interfaceC3269z55).a("S0", "Unknown TimeOut ignored");
                }
            }
        } else {
            InterfaceC3269z5 interfaceC3269z56 = this.f24083j;
            if (interfaceC3269z56 != null) {
                StringBuilder a11 = H6.a("S0", "TAG", "Internal LoadTimeOut by timer, Adstate=");
                a11.append((int) this.f24074a);
                ((A5) interfaceC3269z56).a("S0", a11.toString());
            }
            if (this.f24074a != 3) {
                this.G.removeCallbacksAndMessages(null);
                InterfaceC3269z5 interfaceC3269z57 = this.f24083j;
                if (interfaceC3269z57 != null) {
                    StringBuilder a12 = H6.a("S0", "TAG", "adUnitEventListener=");
                    a12.append(r());
                    a12.append(", Adstate=");
                    a12.append((int) this.f24074a);
                    ((A5) interfaceC3269z57).a("S0", a12.toString());
                }
                byte b11 = this.f24074a;
                if (2 == b11) {
                    m0();
                    b(T9.a(false) == null ? (short) 2139 : (short) 2203);
                    F0 r11 = r();
                    if (r11 != null) {
                        r11.a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                    }
                } else if (1 == b11) {
                    m0();
                    b((short) 2138);
                    F0 r12 = r();
                    if (r12 != null) {
                        r12.a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_TIMED_OUT));
                    }
                }
            }
        }
    }

    @UiThread
    public final void a(@NotNull Z placement, @NotNull InMobiAdRequestStatus requestStatus, short s10) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(requestStatus, "requestStatus");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "onAdFetchFailed ", this));
        }
        if (!this.f24088o && t() != null && this.f24074a != 3) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).c("S0", D0.a("S0", "TAG", "handleMarkupFetchFailure ", this));
            }
            try {
                if (Intrinsics.areEqual(this.f24093t, placement) && this.f24074a == 1) {
                    InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
                    if (interfaceC3269z53 != null) {
                        Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                        ((A5) interfaceC3269z53).b("S0", "Failed to fetch ad for placement id: " + placement + ", reason - " + requestStatus.getMessage());
                    }
                    String str = "MarkupFetch failed reason is: " + requestStatus.getMessage();
                    InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
                    if (interfaceC3269z54 != null) {
                        Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                        ((A5) interfaceC3269z54).b("S0", str);
                    }
                    InterfaceC3269z5 interfaceC3269z55 = this.f24083j;
                    if (interfaceC3269z55 != null) {
                        Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                        ((A5) interfaceC3269z55).d("S0", "AdUnit " + this + " state - FAILED");
                    }
                    d((byte) 3);
                    b((byte) 1);
                    if (s10 != 0) {
                        a(s10);
                    }
                    F0 r10 = r();
                    if (r10 != null) {
                        r10.a(requestStatus);
                        return;
                    }
                    InterfaceC3269z5 interfaceC3269z56 = this.f24083j;
                    if (interfaceC3269z56 != null) {
                        ((A5) interfaceC3269z56).a();
                        return;
                    }
                    return;
                }
                return;
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z57 = this.f24083j;
                if (interfaceC3269z57 != null) {
                    Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                    ((A5) interfaceC3269z57).a("S0", "onAdFetchFailed with error: ", e10);
                }
                S5 s52 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
                return;
            }
        }
        InterfaceC3269z5 interfaceC3269z58 = this.f24083j;
        if (interfaceC3269z58 != null) {
            StringBuilder a10 = H6.a("S0", "TAG", "callback ignored - isDestroyed - ");
            a10.append(this.f24088o);
            a10.append(" context - ");
            a10.append(t());
            a10.append(" state- ");
            a10.append((int) this.f24074a);
            ((A5) interfaceC3269z58).b("S0", a10.toString());
        }
    }

    @UiThread
    public final void a(boolean z10, short s10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).b("S0", "handleAdShowFailure " + this + " errorCode - " + ((int) s10));
        }
        if (z10) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z52).d("S0", "AdUnit " + this + " state - FAILED");
            }
            d((byte) 3);
            b((byte) 4);
        }
        F0 r10 = r();
        if (r10 != null) {
            r10.d();
        }
        if (s10 != 0) {
            c(s10);
        }
    }

    @UiThread
    public final void a(@NotNull InMobiAdRequestStatus requestStatus, boolean z10, short s10) {
        Intrinsics.checkNotNullParameter(requestStatus, "requestStatus");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).b("S0", "handleAdFetchFailure " + this + " errorCode - " + ((int) s10));
        }
        if (this.f24074a == 3 && z10) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z52).d("S0", "AdUnit " + this + " state - FAILED");
            }
            d((byte) 3);
            b((byte) 1);
        }
        F0 r10 = r();
        if (r10 != null) {
            r10.a(this, requestStatus);
        }
        if (s10 != 0) {
            a(s10);
        }
    }

    public final void a(@Nullable Map<String, String> map) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).c("S0", "setPublisherSuppliedExtras " + this + " - " + map);
        }
        this.f24093t.a(map);
    }

    public final void a(@NotNull final JSONObject responseJson) {
        Intrinsics.checkNotNullParameter(responseJson, "responseJson");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "onAuctionClosed ", this));
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: ub.v1
            @Override // java.lang.Runnable
            public final void run() {
                S0.a(S0.this, responseJson);
            }
        });
    }

    public static final void a(S0 this$0, JSONObject responseJson) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(responseJson, "$responseJson");
        A a10 = this$0.C;
        int hashCode = this$0.hashCode();
        C3249y1 c3249y1 = new C3249y1(this$0, responseJson, this$0.f24083j);
        a10.getClass();
        A.a(hashCode, c3249y1);
    }

    public final void a(final Function0 onSuccess, final Function1 onMaxRetryReached) {
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        Intrinsics.checkNotNullParameter(onMaxRetryReached, "onMaxRetryReached");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        Object obj = null;
        if (interfaceC3269z5 != null) {
            StringBuilder a10 = H6.a("S0", "TAG", "loadWithRetry ");
            C2967g6 c2967g6 = this.E;
            a10.append(c2967g6 != null ? Integer.valueOf(c2967g6.f24767b) : null);
            ((A5) interfaceC3269z5).c("S0", a10.toString());
        }
        C2967g6 c2967g62 = this.E;
        if (c2967g62 != null) {
            EnumC3093o4 a11 = T9.a(false);
            if (a11 == null) {
                obj = C3178ta.f25308a;
            } else {
                int i10 = c2967g62.f24767b + 1;
                c2967g62.f24767b = i10;
                if (i10 >= c2967g62.f24766a.f25455b) {
                    obj = new C3080n7(a11);
                } else {
                    obj = C3227wb.f25390a;
                }
            }
        }
        if (obj instanceof C3080n7) {
            onMaxRetryReached.invoke(((C3080n7) obj).f25053a);
        } else if (obj instanceof C3178ta) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z52).c("S0", "load with retry success");
            }
            onSuccess.invoke();
        } else if (!(obj instanceof C3227wb)) {
            if (obj == null) {
                InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
                if (interfaceC3269z53 != null) {
                    Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                    ((A5) interfaceC3269z53).c("S0", "shouldProceedToLoad result null. starting as if we have internet.");
                }
                onSuccess.invoke();
            }
        } else {
            InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
            if (interfaceC3269z54 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z54).c("S0", "load failed, retrying");
            }
            Handler handler = this.G;
            Runnable runnable = new Runnable() { // from class: ub.z1
                @Override // java.lang.Runnable
                public final void run() {
                    S0.a(S0.this, onSuccess, onMaxRetryReached);
                }
            };
            C3255y7 c3255y7 = this.F;
            handler.postDelayed(runnable, c3255y7 != null ? c3255y7.f25454a : 1000L);
        }
    }

    public static final void a(S0 this$0, Function0 onSuccess, Function1 onMaxRetryReached) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(onSuccess, "$onSuccess");
        Intrinsics.checkNotNullParameter(onMaxRetryReached, "$onMaxRetryReached");
        InterfaceC3269z5 interfaceC3269z5 = this$0.f24083j;
        if (interfaceC3269z5 != null) {
            StringBuilder a10 = H6.a("S0", "TAG", "Loading from retry Handler ");
            C2967g6 c2967g6 = this$0.E;
            a10.append(c2967g6 != null ? Integer.valueOf(c2967g6.f24767b) : null);
            ((A5) interfaceC3269z5).c("S0", a10.toString());
        }
        this$0.a(onSuccess, onMaxRetryReached);
    }

    @UiThread
    public void a(@Nullable byte[] bArr) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "load response ", this));
        }
        U0 u02 = this.I;
        u02.getClass();
        u02.f24230c = SystemClock.elapsedRealtime();
        U0 u03 = this.I;
        u03.getClass();
        u03.f24235h = SystemClock.elapsedRealtime();
        if (Y()) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z52).a("S0", "isBlockingStateForLoadWithResponse - blocking");
            }
        } else if (bArr != null && bArr.length != 0) {
            if (this.f24092s == null) {
                this.f24092s = new C2905ca(this);
            }
            O0 o02 = new O0(this, bArr);
            if (p0()) {
                InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
                if (interfaceC3269z53 != null) {
                    Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                    ((A5) interfaceC3269z53).a("S0", "skipping internet check on load(byte[])");
                }
                o02.invoke();
                return;
            }
            InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
            if (interfaceC3269z54 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z54).a("S0", "starting load with retry");
            }
            a(o02, new N0(this));
        } else {
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INVALID_RESPONSE_IN_LOAD), true, (short) 2143);
            InterfaceC3269z5 interfaceC3269z55 = this.f24083j;
            if (interfaceC3269z55 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z55).a("S0", "null response. failing");
            }
        }
    }

    @UiThread
    public final void a(@NotNull InMobiAdRequestStatus requestStatus, short s10) {
        Intrinsics.checkNotNullParameter(requestStatus, "requestStatus");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).b("S0", "loadResponseFailed " + this + " errorCode - " + ((int) s10));
        }
        b(requestStatus, true, s10);
    }

    @SuppressLint({"SwitchIntDef"})
    @VisibleForTesting
    public final boolean a(@Nullable F0 f02, long j10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "isBlockingStateForGetSignals ", this));
        }
        if (this.f24091r) {
            AbstractC2984h7.a((byte) 2, "InMobi", "getSignals() call is already in progress. Please wait for its execution to get complete");
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z52).b("S0", "getSignals() call is already in progress. Please wait for its execution to get complete");
            }
            return true;
        } else if (f0()) {
            if (f02 != null) {
                f02.b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES));
            }
            a(2007, j10);
            return true;
        } else {
            return false;
        }
    }

    public final void a(@NotNull WeakReference<F0> listenerWeakReference, short s10, @NotNull InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(listenerWeakReference, "listenerWeakReference");
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "onLoadAdMarkupFailed ", this));
        }
        d((byte) 3);
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z52).d("S0", "AdUnit " + this + " state - FAILED");
        }
        b((byte) 1);
        if (this.f24088o) {
            InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
            if (interfaceC3269z53 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z53).b("S0", "AdUnit destroyed while onLoadAdMarkupFailed");
                return;
            }
            return;
        }
        F0 f02 = listenerWeakReference.get();
        if (f02 != null) {
            if (Intrinsics.areEqual("int", q())) {
                a(f02, s10);
                return;
            }
            b(s10);
            f02.a(this, status);
            return;
        }
        InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
        if (interfaceC3269z54 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z54).b("S0", "Listener was garbage collected.Unable to give callback");
        }
    }

    @UiThread
    public void a(@Nullable F0 f02) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "handleAdScreenDismissed ", this));
        }
    }

    public final void a(@NotNull WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(watermarkData, "watermarkData");
        this.J = watermarkData;
        GestureDetector$OnGestureListenerC2941ec w10 = w();
        if (w10 != null) {
            w10.setWatermark(watermarkData);
        }
    }

    public static /* synthetic */ void a(S0 s02, int i10, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: destroyContainer");
        }
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        s02.a(i10, z10);
    }

    @UiThread
    public final void a(int i10, boolean z10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).a("S0", "Destroying container for index " + i10 + ' ' + this);
        }
        ArrayList list = this.f24080g;
        Intrinsics.checkNotNullParameter(list, "list");
        if (i10 < 0 || i10 >= list.size()) {
            return;
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) this.f24080g.get(i10);
        if (gestureDetector$OnGestureListenerC2941ec != null) {
            gestureDetector$OnGestureListenerC2941ec.E0.set(z10);
            gestureDetector$OnGestureListenerC2941ec.stopLoading();
            gestureDetector$OnGestureListenerC2941ec.b();
        }
        this.f24080g.set(i10, null);
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public void a(@NotNull GestureDetector$OnGestureListenerC2941ec renderView, @NotNull String trackerName, @NotNull Map<String, String> macros) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Intrinsics.checkNotNullParameter(trackerName, "trackerName");
        Intrinsics.checkNotNullParameter(macros, "macros");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).a("S0", "fireLandingPageTracker " + trackerName + ' ' + this);
        }
        C2976h b10 = b(this.f24080g.indexOf(renderView));
        if (b10 != null) {
            List<String> c10 = b10.c(trackerName);
            if (c10 == null) {
                return;
            }
            Iterator<String> it = c10.iterator();
            while (it.hasNext()) {
                String next = it.next();
                for (Map.Entry<String, String> entry : macros.entrySet()) {
                    next = StringsKt.P(next, entry.getKey(), entry.getValue(), false, 4, null);
                }
                C3234x2.f25412a.a(next, true, this.f24083j);
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z52).a("S0", "fireLandingPageTracker failed");
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public void a(@NotNull String log) {
        Intrinsics.checkNotNullParameter(log, "log");
        F0 r10 = r();
        if (r10 != null) {
            r10.a(log);
        }
    }

    @VisibleForTesting
    public final void a(@NotNull GestureDetector$OnGestureListenerC2941ec renderView, int i10) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        this.f24080g.add(i10, renderView);
        this.f24099z.add(Integer.valueOf(i10));
    }

    public void a(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec, short s10) {
        List<String> c10;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            StringBuilder a10 = H6.a("S0", "TAG", "Render view signaled ad failed, for index ");
            a10.append(this.f24080g.indexOf(gestureDetector$OnGestureListenerC2941ec));
            a10.append(' ');
            a10.append(this);
            ((A5) interfaceC3269z5).b("S0", a10.toString());
        }
        if (gestureDetector$OnGestureListenerC2941ec == null || !Intrinsics.areEqual(gestureDetector$OnGestureListenerC2941ec.getMarkupType(), "htmlUrl")) {
            return;
        }
        int indexOf = this.f24080g.indexOf(gestureDetector$OnGestureListenerC2941ec);
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z52).b("S0", "fireLoadAdTokenUrlFailed : " + indexOf + ' ' + this);
        }
        C2976h b10 = b(indexOf);
        if (b10 == null || (c10 = b10.c(C2976h.LOAD_AD_TOKEN_URL_FAILURE)) == null) {
            return;
        }
        for (String str : c10) {
            C3234x2.f25412a.a(str, true, this.f24083j);
        }
    }

    public static final void a(S0 this$0, GestureDetector$OnGestureListenerC2941ec renderView, short s10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(renderView, "$renderView");
        this$0.a(renderView, s10);
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public void a(@NotNull HashMap<Object, Object> params) {
        Intrinsics.checkNotNullParameter(params, "params");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "onAdInteraction ", this));
        }
        if (this.f24088o || t() == null) {
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z52).a("S0", "Ad interaction. Params: " + params);
        }
        F0 r10 = r();
        if (r10 != null) {
            r10.a(params);
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public void a(@NotNull final Yd telemetryOnAdImpression) {
        Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "telemetryOnAdImpression");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "onImpressionFiredFromTemplate ", this));
        }
        telemetryOnAdImpression.getClass();
        Intrinsics.checkNotNullParameter("imraid_impressionFired", "<set-?>");
        telemetryOnAdImpression.f24415e = "imraid_impressionFired";
        if (!this.f24088o && t() != null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z52).a("S0", "onImpressionFiredFromTemplate");
            }
            Handler handler = this.f24085l;
            if (handler != null) {
                handler.post(new Runnable() { // from class: ub.u1
                    @Override // java.lang.Runnable
                    public final void run() {
                        S0.a(S0.this, telemetryOnAdImpression);
                    }
                });
                return;
            }
            return;
        }
        telemetryOnAdImpression.b();
    }

    public static final void a(S0 this$0, Yd telemetryOnAdImpression) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "$telemetryOnAdImpression");
        this$0.D.a(telemetryOnAdImpression);
    }

    @Override // com.inmobi.media.AbstractC2973gc, com.inmobi.media.Fe
    public void a() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "onUserLeaveApplication ", this));
        }
        if (this.f24088o || t() == null) {
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z52).a("S0", "User left application");
        }
        F0 r10 = r();
        if (r10 != null) {
            r10.h();
        }
    }

    public final void a(short s10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "submitAdLoadDroppedAtSDK ", this));
        }
        HashMap hashMap = new HashMap();
        hashMap.put("errorCode", Short.valueOf(s10));
        c(hashMap);
        c("AdLoadDroppedAtSDK", hashMap);
    }

    public final void a(int i10, long j10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "submitAdGetSignalsFailed ", this));
        }
        this.f24091r = false;
        HashMap hashMap = new HashMap();
        hashMap.put("adType", q());
        hashMap.put("latency", Long.valueOf(System.currentTimeMillis() - j10));
        hashMap.put("networkType", L3.q());
        hashMap.put("errorCode", Integer.valueOf(i10));
        c("AdGetSignalsFailed", hashMap);
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public void a(@NotNull String eventType, @NotNull Map<String, Object> kv) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(kv, "kv");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "onRenderViewRequestedAction ", this));
        }
        c(eventType, kv);
    }

    /* JADX WARN: Code restructure failed: missing block: B:139:0x03c0, code lost:
        if (r8 == null) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0238, code lost:
        if (r8 == null) goto L103;
     */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0425  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(@org.jetbrains.annotations.NotNull com.inmobi.media.C2976h r40) {
        /*
            Method dump skipped, instructions count: 1091
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.S0.a(com.inmobi.media.h):void");
    }

    public final C2920d8 a(C3113p8 c3113p8) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "isSkippableVideo ", this));
        }
        Iterator it = c3113p8.c().iterator();
        while (it.hasNext()) {
            C2920d8 c2920d8 = (C2920d8) c3113p8.n((String) it.next()).get(0);
            if (2 == c2920d8.f24588k) {
                return c2920d8;
            }
        }
        return null;
    }

    public final void a(boolean z10, @Nullable GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
        Set<C3135qe> e10;
        AdConfig.ViewabilityConfig viewability;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("S0", D0.a("S0", "TAG", "omidSessionForHtmlMarkup ", this));
        }
        AdConfig adConfig = this.f24075b;
        AdConfig.OmidConfig omidConfig = (adConfig == null || (viewability = adConfig.getViewability()) == null) ? null : viewability.getOmidConfig();
        if (omidConfig == null || omidConfig.isOmidEnabled()) {
            AbstractC3083na.f25061a.getClass();
            if (Omid.isActive() && (e10 = e(this.f24080g.indexOf(gestureDetector$OnGestureListenerC2941ec))) != null) {
                for (C3135qe c3135qe : e10) {
                    if (3 == c3135qe.f25216a) {
                        try {
                            String str = (String) c3135qe.a("creativeType", String.class);
                            String str2 = (String) c3135qe.a("customReferenceData", String.class);
                            Boolean bool = (Boolean) c3135qe.a("isolateVerificationScripts", Boolean.class);
                            Byte b10 = (Byte) c3135qe.a("impressionType", Byte.class);
                            C2971ga a10 = (str == null || bool == null || b10 == null) ? null : AbstractC3019ja.a(str, gestureDetector$OnGestureListenerC2941ec, bool.booleanValue(), this.f24093t.e(), b10.byteValue(), str2);
                            if (a10 != null) {
                                c3135qe.f25217b.put("omidAdSession", a10);
                                c3135qe.f25217b.put("deferred", Boolean.valueOf(z10));
                                InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
                                if (interfaceC3269z52 != null) {
                                    Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                                    ((A5) interfaceC3269z52).a("S0", "OMID ad session created and WebView container registered with OMID");
                                }
                            } else {
                                InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
                                if (interfaceC3269z53 != null) {
                                    Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                                    ((A5) interfaceC3269z53).a("S0", "Ignoring IAB meta data for this ad markup");
                                }
                            }
                        } catch (Exception e11) {
                            InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
                            if (interfaceC3269z54 != null) {
                                ((A5) interfaceC3269z54).b("S0", rf.a(e11, H6.a("S0", "TAG", "Setting up impression tracking for IAB encountered an unexpected error: ")));
                            }
                            S5 s52 = S5.f24132a;
                            S5.f24135d.a(AbstractC3221w5.a(e11, NotificationCompat.CATEGORY_EVENT));
                        }
                    }
                }
            }
        }
    }

    public static final void a(S0 s02, C2976h c2976h, String str) {
        InterfaceC3269z5 interfaceC3269z5 = s02.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "updateAdForBlob ", s02));
        }
        c2976h.e(str);
        InterfaceC3269z5 interfaceC3269z52 = s02.f24083j;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).c("S0", D0.a("S0", "TAG", "updateAd ", s02));
        }
        C3248y0 c3248y0 = s02.f24094u;
        if (c3248y0 != null) {
            c3248y0.a(c2976h);
        }
    }

    public void a(@NotNull String blob, @Nullable String str) {
        Intrinsics.checkNotNullParameter(blob, "blob");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "saveBlob ", this));
        }
        A a10 = this.C;
        int hashCode = hashCode();
        Q0 q02 = new Q0(this, str, blob);
        a10.getClass();
        A.a(hashCode, q02);
    }

    public void a(@NotNull String jsCallbackNamespace, @NotNull String callback, @NotNull InterfaceC2897c2 receiver, @Nullable String str) {
        Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(receiver, "receiver");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "getBlob ", this));
        }
        A a10 = this.C;
        int hashCode = hashCode();
        I0 i02 = new I0(this, str, receiver, jsCallbackNamespace, callback);
        a10.getClass();
        A.a(hashCode, i02);
    }

    @Override // com.inmobi.media.Te
    @UiThread
    public void a(@NotNull C2976h primaryAd, boolean z10, short s10) {
        C3248y0 c3248y0;
        Intrinsics.checkNotNullParameter(primaryAd, "ad");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("S0", D0.a("S0", "TAG", "onVastProcessCompleted ", this));
        }
        C2976h c2976h = (m() == null || W()) ? null : null;
        if (c2976h == null) {
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            StringBuilder a10 = H6.a("S0", "TAG", "Vast processing completed for ad with impressionId : ");
            a10.append(c2976h.s());
            ((A5) interfaceC3269z52).c("S0", a10.toString());
        }
        String u10 = c2976h.u();
        int hashCode = u10.hashCode();
        if (hashCode != -1084172778) {
            if (hashCode != 3213227) {
                if (hashCode == 1236050372 && u10.equals("htmlUrl")) {
                    return;
                }
            } else if (u10.equals("html")) {
                return;
            }
        } else if (u10.equals("inmobiJson")) {
            if (this.f24074a == 2 && (c3248y0 = this.f24094u) != null) {
                c3248y0.a(primaryAd);
                B0 p10 = p();
                String clientReqId = c3248y0.k();
                p10.getClass();
                Intrinsics.checkNotNullParameter(primaryAd, "primaryAd");
                Intrinsics.checkNotNullParameter(clientReqId, "clientReqId");
                Set<C3243xb> y10 = primaryAd.y();
                if (y10.isEmpty()) {
                    p10.f23494a.a(p10.f23496c, true, (short) 0);
                    return;
                }
                String uuid = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
                C3024k c3024k = new C3024k(uuid, y10, p10.f23500g, null, 16);
                String f10 = primaryAd.f();
                if (f10 != null) {
                    C3169t1.a(c3024k, f10);
                    return;
                }
                return;
            }
            InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
            if (interfaceC3269z53 != null) {
                Intrinsics.checkNotNullExpressionValue("S0", "TAG");
                ((A5) interfaceC3269z53).b("S0", "Found inconsistent state after vast processing");
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
        if (interfaceC3269z54 != null) {
            StringBuilder a11 = H6.a("S0", "TAG", "Can not handle fallback for");
            a11.append(c2976h.u());
            ((A5) interfaceC3269z54).b("S0", a11.toString());
        }
        throw new IllegalStateException("Can not handle fallback for markup type: " + c2976h.u());
    }
}
