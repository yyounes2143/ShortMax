package com.applovin.impl.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.impl.a6;
import com.applovin.impl.b6;
import com.applovin.impl.c7;
import com.applovin.impl.e8;
import com.applovin.impl.g4;
import com.applovin.impl.g5;
import com.applovin.impl.h3;
import com.applovin.impl.i3;
import com.applovin.impl.i7;
import com.applovin.impl.i8;
import com.applovin.impl.j2;
import com.applovin.impl.j7;
import com.applovin.impl.k7;
import com.applovin.impl.m3;
import com.applovin.impl.mediation.MaxSegmentCollectionImpl;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.impl.o3;
import com.applovin.impl.o4;
import com.applovin.impl.p6;
import com.applovin.impl.privacy.cmp.CmpServiceImpl;
import com.applovin.impl.q2;
import com.applovin.impl.r3;
import com.applovin.impl.r5;
import com.applovin.impl.s3;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdService;
import com.applovin.impl.sdk.network.PostbackServiceImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t0;
import com.applovin.impl.t3;
import com.applovin.impl.u4;
import com.applovin.impl.v3;
import com.applovin.impl.v4;
import com.applovin.impl.w2;
import com.applovin.impl.w4;
import com.applovin.impl.w6;
import com.applovin.impl.x4;
import com.applovin.impl.y4;
import com.applovin.impl.z3;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxSegmentCollection;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.AppLovinMediationProvider;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkInitializationConfiguration;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class k {
    public static k D0;
    protected static Context E0;
    private static boolean F0;
    private static final boolean H0;
    private static volatile com.applovin.impl.c I0;
    private AppLovinSdk.SdkInitializationListener A0;

    /* renamed from: a  reason: collision with root package name */
    private String f9709a;

    /* renamed from: b  reason: collision with root package name */
    private String f9711b;

    /* renamed from: c  reason: collision with root package name */
    private WeakReference f9713c;

    /* renamed from: d  reason: collision with root package name */
    private final long f9715d;

    /* renamed from: e  reason: collision with root package name */
    private long f9717e;

    /* renamed from: f  reason: collision with root package name */
    private long f9719f;

    /* renamed from: g  reason: collision with root package name */
    private Long f9721g;

    /* renamed from: h  reason: collision with root package name */
    private long f9723h;

    /* renamed from: j  reason: collision with root package name */
    private final AppLovinSdkSettings f9727j;

    /* renamed from: j0  reason: collision with root package name */
    private com.applovin.impl.mediation.e f9728j0;

    /* renamed from: k  reason: collision with root package name */
    private MaxSegmentCollection f9729k;

    /* renamed from: l  reason: collision with root package name */
    private String f9731l;

    /* renamed from: l0  reason: collision with root package name */
    private List f9732l0;

    /* renamed from: q  reason: collision with root package name */
    private volatile AppLovinSdk f9741q;

    /* renamed from: q0  reason: collision with root package name */
    private boolean f9742q0;

    /* renamed from: v0  reason: collision with root package name */
    private String f9752v0;

    /* renamed from: w0  reason: collision with root package name */
    private AppLovinSdkInitializationConfiguration f9754w0;

    /* renamed from: z0  reason: collision with root package name */
    private AppLovinSdk.SdkInitializationListener f9760z0;
    private static final Object J0 = new Object();
    private static final long G0 = System.currentTimeMillis();

    /* renamed from: i  reason: collision with root package name */
    private final AtomicBoolean f9725i = new AtomicBoolean();

    /* renamed from: m  reason: collision with root package name */
    private final AtomicReference f9733m = new AtomicReference();

    /* renamed from: n  reason: collision with root package name */
    private final AtomicReference f9735n = new AtomicReference();

    /* renamed from: o  reason: collision with root package name */
    private final AtomicReference f9737o = new AtomicReference();

    /* renamed from: p  reason: collision with root package name */
    private final AtomicReference f9739p = new AtomicReference();

    /* renamed from: r  reason: collision with root package name */
    private final o f9743r = new o(this);

    /* renamed from: s  reason: collision with root package name */
    private final com.applovin.impl.f f9745s = new com.applovin.impl.f(this);

    /* renamed from: t  reason: collision with root package name */
    private final w2 f9747t = new w2(this);

    /* renamed from: u  reason: collision with root package name */
    private final com.applovin.impl.q1 f9749u = new com.applovin.impl.q1(this);

    /* renamed from: v  reason: collision with root package name */
    private final i7 f9751v = new i7(this);

    /* renamed from: w  reason: collision with root package name */
    private final AtomicReference f9753w = new AtomicReference();

    /* renamed from: x  reason: collision with root package name */
    private final AtomicReference f9755x = new AtomicReference();

    /* renamed from: y  reason: collision with root package name */
    private final AtomicReference f9757y = new AtomicReference();

    /* renamed from: z  reason: collision with root package name */
    private final AtomicReference f9759z = new AtomicReference();
    private final AtomicReference A = new AtomicReference();
    private final AtomicReference B = new AtomicReference();
    private final AtomicReference C = new AtomicReference();
    private final AtomicReference D = new AtomicReference();
    private final AtomicReference E = new AtomicReference();
    private final AtomicReference F = new AtomicReference();
    private final AtomicReference G = new AtomicReference();
    private final AtomicReference H = new AtomicReference();
    private final AtomicReference I = new AtomicReference();
    private final AtomicReference J = new AtomicReference();
    private final AtomicReference K = new AtomicReference();
    private final AtomicReference L = new AtomicReference();
    private final AtomicReference M = new AtomicReference();
    private final AtomicReference N = new AtomicReference();
    private final AtomicReference O = new AtomicReference();
    private final AtomicReference P = new AtomicReference();
    private final AtomicReference Q = new AtomicReference();
    private final AtomicReference R = new AtomicReference();
    private final AtomicReference S = new AtomicReference();
    private final AtomicReference T = new AtomicReference();
    private final AtomicReference U = new AtomicReference();
    private final AtomicReference V = new AtomicReference();
    private final AtomicReference W = new AtomicReference();
    private final AtomicReference X = new AtomicReference();
    private final AtomicReference Y = new AtomicReference();
    private final AtomicReference Z = new AtomicReference();

    /* renamed from: a0  reason: collision with root package name */
    private final AtomicReference f9710a0 = new AtomicReference();

    /* renamed from: b0  reason: collision with root package name */
    private final AtomicReference f9712b0 = new AtomicReference();

    /* renamed from: c0  reason: collision with root package name */
    private final AtomicReference f9714c0 = new AtomicReference();

    /* renamed from: d0  reason: collision with root package name */
    private final AtomicReference f9716d0 = new AtomicReference();

    /* renamed from: e0  reason: collision with root package name */
    private final AtomicReference f9718e0 = new AtomicReference();

    /* renamed from: f0  reason: collision with root package name */
    private final AtomicReference f9720f0 = new AtomicReference();

    /* renamed from: g0  reason: collision with root package name */
    private final AtomicReference f9722g0 = new AtomicReference();

    /* renamed from: h0  reason: collision with root package name */
    private final AtomicReference f9724h0 = new AtomicReference();

    /* renamed from: i0  reason: collision with root package name */
    private final AtomicReference f9726i0 = new AtomicReference();

    /* renamed from: k0  reason: collision with root package name */
    private final AtomicReference f9730k0 = new AtomicReference();

    /* renamed from: m0  reason: collision with root package name */
    private final Object f9734m0 = new Object();

    /* renamed from: n0  reason: collision with root package name */
    private final AtomicBoolean f9736n0 = new AtomicBoolean(true);

    /* renamed from: o0  reason: collision with root package name */
    private final AtomicBoolean f9738o0 = new AtomicBoolean();

    /* renamed from: p0  reason: collision with root package name */
    private final AtomicBoolean f9740p0 = new AtomicBoolean();

    /* renamed from: r0  reason: collision with root package name */
    private boolean f9744r0 = false;

    /* renamed from: s0  reason: collision with root package name */
    private boolean f9746s0 = false;

    /* renamed from: t0  reason: collision with root package name */
    private boolean f9748t0 = false;

    /* renamed from: u0  reason: collision with root package name */
    private int f9750u0 = 0;

    /* renamed from: x0  reason: collision with root package name */
    private final Object f9756x0 = new Object();

    /* renamed from: y0  reason: collision with root package name */
    private SdkConfigurationImpl f9758y0 = new SdkConfigurationImpl(this);
    private final g5 B0 = new p6(this, true, "scheduleAdLoadIntegrationError", new Runnable() { // from class: com.applovin.impl.sdk.p0
        @Override // java.lang.Runnable
        public final void run() {
            k.this.L0();
        }
    });
    private final g5 C0 = new p6(this, true, "sdkInit", new Runnable() { // from class: com.applovin.impl.sdk.q0
        @Override // java.lang.Runnable
        public final void run() {
            k.this.M0();
        }
    });

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements r5.b {
        a() {
        }

        @Override // com.applovin.impl.r5.b
        public void a(JSONObject jSONObject) {
            boolean isValid = JsonUtils.isValid(jSONObject);
            k.this.c(jSONObject);
            if (((Boolean) k.this.a(o3.V7)).booleanValue()) {
                k kVar = k.this;
                kVar.f9728j0 = new com.applovin.impl.mediation.e(kVar);
            }
            k.this.m().a();
            com.applovin.impl.r0.a(jSONObject, isValid, k.this);
            Boolean bool = JsonUtils.getBoolean(jSONObject, "smd", Boolean.FALSE);
            k.this.U().a(bool.booleanValue(), JsonUtils.getInt(jSONObject, "smd_delay_sec", 2));
            k.this.E().b();
            k kVar2 = k.this;
            kVar2.f9732l0 = kVar2.a(jSONObject);
            if (isValid) {
                k.this.f9758y0.setEnabledAmazonAdUnitIds(CollectionUtils.explode(JsonUtils.getString(jSONObject, "eaaui", "")));
            }
            k.this.t0().a(jSONObject);
            k.this.b(jSONObject);
            q2.b(((Boolean) k.this.a(v4.f10288k6)).booleanValue());
            q2.a(((Boolean) k.this.a(v4.f10296l6)).booleanValue());
            k.this.R0();
            if (!((Boolean) k.this.a(v4.f10211b3)).booleanValue() || isValid || !com.applovin.impl.r0.a(k.o())) {
                k.this.P0();
                return;
            }
            k.this.O();
            if (o.a()) {
                k.this.O().d("AppLovinSdk", "SDK initialized with no internet connection - listening for connection");
            }
            k.this.U0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements t0.c {
        b() {
        }

        @Override // com.applovin.impl.t0.c
        public void a(t0.b bVar) {
            k.this.O();
            if (o.a()) {
                o O = k.this.O();
                O.a("AppLovinSdk", "Terms and Privacy Policy flow completed with status: " + bVar);
            }
            k.this.f9740p0.set(bVar.b());
            if (!bVar.a()) {
                k.this.c("Initializing SDK in MAX environment...");
                return;
            }
            k.this.O();
            if (o.a()) {
                k.this.O().a("AppLovinSdk", "Re-initializing SDK with the updated privacy settings...");
            }
            k.this.T0();
            k.this.S0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements r5.b {
        c() {
        }

        @Override // com.applovin.impl.r5.b
        public void a(JSONObject jSONObject) {
            k.this.c(jSONObject);
            k.this.f9725i.set(false);
            k.this.P0();
        }
    }

    static {
        try {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.l0
                @Override // java.lang.Runnable
                public final void run() {
                    k7.c();
                }
            });
            H0 = true;
        } catch (Throwable unused) {
            H0 = false;
        }
    }

    public k(AppLovinSdkSettings appLovinSdkSettings, Context context) {
        this.f9742q0 = false;
        D0 = this;
        this.f9727j = appLovinSdkSettings;
        this.f9715d = System.currentTimeMillis();
        this.f9742q0 = true;
        if (G0()) {
            E0 = context.getApplicationContext();
            if (context instanceof Activity) {
                this.f9713c = new WeakReference((Activity) context);
                return;
            }
            return;
        }
        throw new RuntimeException("As of version 12.0.0, the AppLovin MAX SDK requires Java 8. For more information visit our docs: https://developers.applovin.com/en/android/overview/integration");
    }

    private void B0() {
        Context context = E0;
        o O = O();
        y4 q02 = q0();
        com.applovin.impl.t0 y10 = y();
        a(context);
        n0();
        j();
        p();
        c0();
        S().a(MaxAdapter.InitializationStatus.INITIALIZING);
        NativeCrashReporter.a(this);
        String str = this.f9709a;
        if (str == null || str.length() != 86) {
            o.h("AppLovinSdk", "SDK key provided is invalid (" + this.f9709a + "). Expected length: 86 characters.\n\nStack trace:\n" + Log.getStackTraceString(new Throwable()));
        }
        if (StringUtils.isValidString(this.f9711b) && this.f9711b.length() != 36) {
            String str2 = "Axon event key length " + this.f9711b + " is invalid - expected 36";
            if (!k7.c(this)) {
                o.h("AppLovinSdk", str2);
            } else {
                throw new IllegalArgumentException(str2);
            }
        }
        if (y10.l()) {
            String str3 = "Terms Flow has been replaced. " + y10.g();
            if (!k7.c(this)) {
                o.h("AppLovinSdk", str3);
            } else {
                throw new IllegalStateException(str3);
            }
        }
        if (k7.i()) {
            o.h("AppLovinSdk", "Failed to find class for name: com.applovin.sdk.AppLovinSdk. Please ensure proguard rules have not been omitted from the build.");
        }
        if (!k7.b(this)) {
            o.h("AppLovinSdk", "Detected non-Android core JSON library. Please double-check that none of your third party libraries include custom implementation of org.json.JSONObject.");
        }
        if (k7.m(context)) {
            this.f9727j.setVerboseLogging(true);
        }
        p0().a(v4.f10281k, Boolean.valueOf(this.f9727j.isVerboseLoggingEnabled()));
        t3.e(this);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        x4 x4Var = x4.f10509c;
        if (TextUtils.isEmpty((String) q02.a(x4Var, (Object) null, defaultSharedPreferences))) {
            this.f9746s0 = true;
            q02.b(x4Var, Boolean.toString(true), defaultSharedPreferences);
        } else {
            q02.b(x4Var, Boolean.toString(false), defaultSharedPreferences);
        }
        x4 x4Var2 = x4.f10510d;
        if (((Boolean) q02.a(x4Var2, Boolean.FALSE)).booleanValue()) {
            if (o.a()) {
                O.a("AppLovinSdk", "Initializing SDK for non-maiden launch");
            }
            this.f9748t0 = true;
        } else {
            if (o.a()) {
                O.a("AppLovinSdk", "Initializing SDK for maiden launch");
            }
            q02.b(x4Var2, Boolean.TRUE);
            q02.b(x4.f10525s, Boolean.valueOf(y10.j()));
        }
        x4 x4Var3 = x4.f10511e;
        this.f9719f = ((Long) q02.a(x4Var3, 0L)).longValue() + 1;
        q0().b(x4Var3, Long.valueOf(this.f9719f));
        x4 x4Var4 = x4.f10512f;
        this.f9721g = (Long) q02.a(x4Var4, null);
        q0().b(x4Var4, Long.valueOf(G0));
        x4 x4Var5 = x4.f10513g;
        String str4 = (String) q02.a(x4Var5, null);
        if (StringUtils.isValidString(str4)) {
            if (AppLovinSdk.VERSION_CODE > k7.g(str4)) {
                q02.b(x4Var5, AppLovinSdk.VERSION);
            }
        } else {
            q02.b(x4Var5, AppLovinSdk.VERSION);
        }
        w0().d(com.applovin.impl.c2.f7638e, CollectionUtils.map("details", "isInitProviderContextSet=" + F0));
    }

    public static boolean G0() {
        return H0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J0() {
        if (r0().g()) {
            return;
        }
        O();
        if (o.a()) {
            O().a("AppLovinSdk", "Timing out adapters init...");
        }
        r0().h();
        b(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K0() {
        b6 r02 = r0();
        int i10 = this.f9750u0 + 1;
        this.f9750u0 = i10;
        r02.a((g5) new r5(i10, this, new c()), b6.b.CORE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L0() {
        if (H0()) {
            j2.b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M0() {
        synchronized (this.f9734m0) {
            try {
                boolean a10 = com.applovin.impl.r0.a(o());
                if (!H0()) {
                    O();
                    if (o.a()) {
                        o O = O();
                        O.a("AppLovinSdk", "non-MAX mediation detected, mediation provider is: " + V());
                    }
                }
                if (!((Boolean) a(v4.f10220c3)).booleanValue() || a10) {
                    T0();
                }
                if (((Boolean) a(v4.f10211b3)).booleanValue() && !a10) {
                    O();
                    if (o.a()) {
                        O().d("AppLovinSdk", "SDK initialized with no internet connection - listening for connection");
                    }
                    U0();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private r O0() {
        if (o4.f(E0)) {
            try {
                return new r(this);
            } catch (Throwable th2) {
                o.b("AppLovinSdk", "Failed to initialize Privacy Sandbox Service", th2);
                return null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P0() {
        Long l10 = (Long) a(v4.f10285k3);
        if (l10.longValue() < 0 || !this.f9725i.compareAndSet(false, true)) {
            return;
        }
        e8.a(l10.longValue(), false, this, new Runnable() { // from class: com.applovin.impl.sdk.o0
            @Override // java.lang.Runnable
            public final void run() {
                k.this.K0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R0() {
        if (!H0()) {
            c("Initializing SDK in non-MAX environment...");
        } else if (!this.f9738o0.compareAndSet(false, true)) {
            c("Consent flow is already shown. Initializing SDK in MAX environment...");
        } else if (!y().j()) {
            c("Consent flow is not enabled. Initializing SDK in MAX environment...");
        } else {
            y().a(v0(), new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U0() {
        v3 c02 = c0();
        c02.a(new d(c02));
    }

    private Map W() {
        try {
            return JsonUtils.toStringMap(new JSONObject((String) a(v4.f10246f4)));
        } catch (JSONException unused) {
            return Collections.emptyMap();
        }
    }

    public static Context o() {
        return E0;
    }

    public com.applovin.impl.e1 A() {
        Object obj = this.V.get();
        if (obj == null) {
            synchronized (this.V) {
                try {
                    obj = this.V.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.e1(this);
                        this.V.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.V) {
            obj = null;
        }
        return (com.applovin.impl.e1) obj;
    }

    public boolean A0() {
        return this.f9748t0;
    }

    public l B() {
        Object obj = this.A.get();
        if (obj == null) {
            synchronized (this.A) {
                try {
                    obj = this.A.get();
                    if (obj == null) {
                        obj = new l(this);
                        this.A.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.A) {
            obj = null;
        }
        return (l) obj;
    }

    public com.applovin.impl.i1 C() {
        Object obj = this.E.get();
        if (obj == null) {
            synchronized (this.E) {
                try {
                    obj = this.E.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.i1(this);
                        this.E.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.E) {
            obj = null;
        }
        return (com.applovin.impl.i1) obj;
    }

    public boolean C0() {
        boolean z10;
        synchronized (this.f9734m0) {
            z10 = this.f9744r0;
        }
        return z10;
    }

    public String D() {
        return this.f9752v0;
    }

    public boolean D0() {
        return this.f9746s0;
    }

    public com.applovin.impl.q1 E() {
        return this.f9749u;
    }

    public boolean E0() {
        boolean z10;
        synchronized (this.f9756x0) {
            if (this.f9754w0 != null) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    public String F() {
        return x0().d();
    }

    public boolean F0() {
        boolean z10;
        synchronized (this.f9734m0) {
            z10 = this.f9742q0;
        }
        return z10;
    }

    public EventServiceImpl G() {
        Object obj = this.f9737o.get();
        if (obj == null) {
            synchronized (this.f9737o) {
                try {
                    obj = this.f9737o.get();
                    if (obj == null) {
                        obj = new EventServiceImpl(this);
                        this.f9737o.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f9737o) {
            obj = null;
        }
        return (EventServiceImpl) obj;
    }

    public m H() {
        Object obj = this.H.get();
        if (obj == null) {
            synchronized (this.H) {
                try {
                    obj = this.H.get();
                    if (obj == null) {
                        obj = new m(this);
                        this.H.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.H) {
            obj = null;
        }
        return (m) obj;
    }

    public boolean H0() {
        return StringUtils.containsIgnoreCase(V(), AppLovinMediationProvider.MAX);
    }

    public n I() {
        Object obj = this.J.get();
        if (obj == null) {
            synchronized (this.J) {
                try {
                    obj = this.J.get();
                    if (obj == null) {
                        obj = new n(this);
                        this.J.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.J) {
            obj = null;
        }
        return (n) obj;
    }

    public boolean I0() {
        return k7.a("com.unity3d.player.UnityPlayerActivity");
    }

    public Activity J() {
        WeakReference weakReference;
        if (!((Boolean) a(v4.f10374v4)).booleanValue() || (weakReference = this.f9713c) == null) {
            return null;
        }
        return (Activity) weakReference.get();
    }

    public AppLovinSdkInitializationConfiguration K() {
        return this.f9754w0;
    }

    public long L() {
        return this.f9715d;
    }

    public Long M() {
        return this.f9721g;
    }

    public long N() {
        return this.f9719f;
    }

    protected void N0() {
        b(false);
    }

    public o O() {
        return this.f9743r;
    }

    public w2 P() {
        return this.f9747t;
    }

    public com.applovin.impl.mediation.d Q() {
        Object obj = this.f9726i0.get();
        if (obj == null) {
            synchronized (this.f9726i0) {
                try {
                    obj = this.f9726i0.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.mediation.d(this);
                        this.f9726i0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f9726i0) {
            obj = null;
        }
        return (com.applovin.impl.mediation.d) obj;
    }

    public void Q0() {
        if (StringUtils.isValidString(this.f9731l)) {
            return;
        }
        this.f9731l = AppLovinMediationProvider.MAX;
    }

    public com.applovin.impl.mediation.e R() {
        return this.f9728j0;
    }

    public com.applovin.impl.mediation.f S() {
        Object obj = this.f9716d0.get();
        if (obj == null) {
            synchronized (this.f9716d0) {
                try {
                    obj = this.f9716d0.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.mediation.f(this);
                        this.f9716d0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f9716d0) {
            obj = null;
        }
        return (com.applovin.impl.mediation.f) obj;
    }

    public void S0() {
        u().a();
    }

    public com.applovin.impl.mediation.g T() {
        Object obj = this.f9714c0.get();
        if (obj == null) {
            synchronized (this.f9714c0) {
                try {
                    obj = this.f9714c0.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.mediation.g(this);
                        this.f9714c0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f9714c0) {
            obj = null;
        }
        return (com.applovin.impl.mediation.g) obj;
    }

    public void T0() {
        synchronized (this.f9734m0) {
            this.f9742q0 = true;
            r0().i();
            d();
        }
    }

    public m3 U() {
        Object obj = this.f9722g0.get();
        if (obj == null) {
            synchronized (this.f9722g0) {
                try {
                    obj = this.f9722g0.get();
                    if (obj == null) {
                        obj = new m3(this);
                        this.f9722g0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f9722g0) {
            obj = null;
        }
        return (m3) obj;
    }

    public String V() {
        return this.f9731l;
    }

    public void V0() {
        o.h("AppLovinSdk", "Resetting SDK state...");
        p0().a();
        p0().e();
        if (this.f9736n0.compareAndSet(true, false)) {
            T0();
        } else {
            this.f9736n0.set(true);
        }
    }

    public void W0() {
        if (!StringUtils.isValidString(this.f9752v0)) {
            this.f9752v0 = AppLovinMediationProvider.MAX;
            O();
            if (o.a()) {
                O().a("AppLovinSdk", "Detected mediation provider: MAX");
            }
        }
    }

    public MediationServiceImpl X() {
        Object obj = this.f9718e0.get();
        if (obj == null) {
            synchronized (this.f9718e0) {
                try {
                    obj = this.f9718e0.get();
                    if (obj == null) {
                        obj = new MediationServiceImpl(this);
                        this.f9718e0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f9718e0) {
            obj = null;
        }
        return (MediationServiceImpl) obj;
    }

    public void X0() {
        z().n();
    }

    public r3 Y() {
        Object obj = this.f9759z.get();
        if (obj == null) {
            synchronized (this.f9759z) {
                try {
                    obj = this.f9759z.get();
                    if (obj == null) {
                        obj = new r3(this);
                        this.f9759z.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f9759z) {
            obj = null;
        }
        return (r3) obj;
    }

    public void Y0() {
        a((Map) null);
    }

    public s3 Z() {
        Object obj = this.f9720f0.get();
        if (obj == null) {
            synchronized (this.f9720f0) {
                try {
                    obj = this.f9720f0.get();
                    if (obj == null) {
                        obj = new s3();
                        this.f9720f0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f9720f0) {
            obj = null;
        }
        return (s3) obj;
    }

    public void Z0() {
        if (!AppLovinMediationProvider.ADMOB.equalsIgnoreCase(this.f9731l) || !((Boolean) a(v4.J3)).booleanValue()) {
            return;
        }
        String str = (String) a(v4.I3);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        String str2 = AppLovinSdk.VERSION;
        sb2.append(str2);
        sb2.append(".");
        if (str.startsWith(sb2.toString())) {
            return;
        }
        final String str3 = "Mismatched AdMob adapter (" + str + ") and AppLovin SDK (" + str2 + ") versions detected, which may cause compatibility issues.";
        o.h("AppLovinSdk", str3);
        AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.sdk.r0
            @Override // java.lang.Runnable
            public final void run() {
                k.this.b(str3);
            }
        });
    }

    public p a0() {
        Object obj = this.f9724h0.get();
        if (obj == null) {
            synchronized (this.f9724h0) {
                try {
                    obj = this.f9724h0.get();
                    if (obj == null) {
                        obj = new p(this);
                        this.f9724h0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f9724h0) {
            obj = null;
        }
        return (p) obj;
    }

    public AppLovinNativeAdService b0() {
        Object obj = this.f9735n.get();
        if (obj == null) {
            synchronized (this.f9735n) {
                try {
                    obj = this.f9735n.get();
                    if (obj == null) {
                        obj = new AppLovinNativeAdService(this);
                        this.f9735n.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f9735n) {
            obj = null;
        }
        return (AppLovinNativeAdService) obj;
    }

    public v3 c0() {
        Object obj = this.M.get();
        if (obj == null) {
            synchronized (this.M) {
                try {
                    obj = this.M.get();
                    if (obj == null) {
                        obj = new v3(o());
                        this.M.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.M) {
            obj = null;
        }
        return (v3) obj;
    }

    public z3 d0() {
        Object obj = this.Y.get();
        if (obj == null) {
            synchronized (this.Y) {
                try {
                    obj = this.Y.get();
                    if (obj == null) {
                        obj = new z3(this);
                        this.Y.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.Y) {
            obj = null;
        }
        return (z3) obj;
    }

    public g4 e0() {
        Object obj = this.T.get();
        if (obj == null) {
            synchronized (this.T) {
                try {
                    obj = this.T.get();
                    if (obj == null) {
                        obj = new g4(this);
                        this.T.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.T) {
            obj = null;
        }
        return (g4) obj;
    }

    public com.applovin.impl.sdk.network.b f0() {
        Object obj = this.f9710a0.get();
        if (obj == null) {
            synchronized (this.f9710a0) {
                try {
                    obj = this.f9710a0.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.sdk.network.b(this);
                        this.f9710a0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f9710a0) {
            obj = null;
        }
        return (com.applovin.impl.sdk.network.b) obj;
    }

    public PostbackServiceImpl g0() {
        Object obj = this.Z.get();
        if (obj == null) {
            synchronized (this.Z) {
                try {
                    obj = this.Z.get();
                    if (obj == null) {
                        obj = new PostbackServiceImpl(this);
                        this.Z.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.Z) {
            obj = null;
        }
        return (PostbackServiceImpl) obj;
    }

    public r h0() {
        Object obj = this.B.get();
        if (obj == null) {
            synchronized (this.B) {
                try {
                    obj = this.B.get();
                    if (obj == null) {
                        obj = O0();
                        if (obj == null) {
                            obj = this.B;
                        }
                        this.B.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.B) {
            obj = null;
        }
        return (r) obj;
    }

    public String i0() {
        return x0().a();
    }

    public String j0() {
        return this.f9709a;
    }

    public MaxSegmentCollectionImpl k0() {
        return (MaxSegmentCollectionImpl) this.f9729k;
    }

    public Map l0() {
        MaxSegmentCollectionImpl k02 = k0();
        if (k02 == null) {
            return null;
        }
        return k02.getJsonData();
    }

    public u4 m0() {
        Object obj = this.O.get();
        if (obj == null) {
            synchronized (this.O) {
                try {
                    obj = this.O.get();
                    if (obj == null) {
                        obj = new u4(this);
                        this.O.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.O) {
            obj = null;
        }
        return (u4) obj;
    }

    public SessionTracker n0() {
        Object obj = this.I.get();
        if (obj == null) {
            synchronized (this.I) {
                try {
                    obj = this.I.get();
                    if (obj == null) {
                        obj = new SessionTracker(this);
                        this.I.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.I) {
            obj = null;
        }
        return (SessionTracker) obj;
    }

    public AppLovinSdkSettings o0() {
        return this.f9727j;
    }

    public ArrayService p() {
        Object obj = this.U.get();
        if (obj == null) {
            synchronized (this.U) {
                try {
                    obj = this.U.get();
                    if (obj == null) {
                        obj = new ArrayService(this);
                        this.U.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.U) {
            obj = null;
        }
        return (ArrayService) obj;
    }

    public w4 p0() {
        Object obj = this.f9755x.get();
        if (obj == null) {
            synchronized (this.f9755x) {
                try {
                    obj = this.f9755x.get();
                    if (obj == null) {
                        obj = new w4(this);
                        this.f9755x.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f9755x) {
            obj = null;
        }
        return (w4) obj;
    }

    public i q() {
        Object obj = this.P.get();
        if (obj == null) {
            synchronized (this.P) {
                try {
                    obj = this.P.get();
                    if (obj == null) {
                        obj = new i(this);
                        this.P.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.P) {
            obj = null;
        }
        return (i) obj;
    }

    public y4 q0() {
        Object obj = this.C.get();
        if (obj == null) {
            synchronized (this.C) {
                try {
                    obj = this.C.get();
                    if (obj == null) {
                        obj = new y4(this);
                        this.C.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.C) {
            obj = null;
        }
        return (y4) obj;
    }

    public String r() {
        return this.f9711b;
    }

    public b6 r0() {
        Object obj = this.f9753w.get();
        if (obj == null) {
            synchronized (this.f9753w) {
                try {
                    obj = this.f9753w.get();
                    if (obj == null) {
                        obj = new b6(this);
                        this.f9753w.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f9753w) {
            obj = null;
        }
        return (b6) obj;
    }

    public String s() {
        return x0().b();
    }

    public w6 s0() {
        Object obj = this.R.get();
        if (obj == null) {
            synchronized (this.R) {
                try {
                    obj = this.R.get();
                    if (obj == null) {
                        obj = new w6(this);
                        this.R.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.R) {
            obj = null;
        }
        return (w6) obj;
    }

    public CmpServiceImpl t() {
        Object obj = this.f9739p.get();
        if (obj == null) {
            synchronized (this.f9739p) {
                try {
                    obj = this.f9739p.get();
                    if (obj == null) {
                        obj = new CmpServiceImpl(this);
                        this.f9739p.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f9739p) {
            obj = null;
        }
        return (CmpServiceImpl) obj;
    }

    public c7 t0() {
        Object obj = this.f9730k0.get();
        if (obj == null) {
            synchronized (this.f9730k0) {
                try {
                    obj = this.f9730k0.get();
                    if (obj == null) {
                        obj = new c7(this);
                        this.f9730k0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f9730k0) {
            obj = null;
        }
        return (c7) obj;
    }

    public String toString() {
        return "CoreSdk{sdkKey='" + this.f9709a + "', enabled=" + this.f9744r0 + ", isFirstSession=" + this.f9746s0 + '}';
    }

    public j u() {
        Object obj = this.N.get();
        if (obj == null) {
            synchronized (this.N) {
                try {
                    obj = this.N.get();
                    if (obj == null) {
                        obj = new j(this);
                        this.N.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.N) {
            obj = null;
        }
        return (j) obj;
    }

    public long u0() {
        if (this.f9723h == 0) {
            return -1L;
        }
        return System.currentTimeMillis() - this.f9723h;
    }

    public String v() {
        return x0().c();
    }

    public Activity v0() {
        Activity b10 = a(o()).b();
        if (b10 != null) {
            return b10;
        }
        return J();
    }

    public SdkConfigurationImpl w() {
        return this.f9758y0;
    }

    public i7 w0() {
        return this.f9751v;
    }

    public com.applovin.impl.q0 x() {
        Object obj = this.f9757y.get();
        if (obj == null) {
            synchronized (this.f9757y) {
                try {
                    obj = this.f9757y.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.q0(this);
                        this.f9757y.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f9757y) {
            obj = null;
        }
        return (com.applovin.impl.q0) obj;
    }

    public j7 x0() {
        Object obj = this.D.get();
        if (obj == null) {
            synchronized (this.D) {
                try {
                    obj = this.D.get();
                    if (obj == null) {
                        obj = new j7(this);
                        this.D.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.D) {
            obj = null;
        }
        return (j7) obj;
    }

    public com.applovin.impl.t0 y() {
        Object obj = this.Q.get();
        if (obj == null) {
            synchronized (this.Q) {
                try {
                    obj = this.Q.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.t0(this);
                        this.Q.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.Q) {
            obj = null;
        }
        return (com.applovin.impl.t0) obj;
    }

    public i8 y0() {
        Object obj = this.L.get();
        if (obj == null) {
            synchronized (this.L) {
                try {
                    obj = this.L.get();
                    if (obj == null) {
                        obj = new i8(this);
                        this.L.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.L) {
            obj = null;
        }
        return (i8) obj;
    }

    public com.applovin.impl.d1 z() {
        Object obj = this.S.get();
        if (obj == null) {
            synchronized (this.S) {
                try {
                    obj = this.S.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.d1(this);
                        this.S.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.S) {
            obj = null;
        }
        return (com.applovin.impl.d1) obj;
    }

    public AppLovinSdk z0() {
        return this.f9741q;
    }

    private void d() {
        b6 r02 = r0();
        int i10 = this.f9750u0 + 1;
        this.f9750u0 = i10;
        r02.a((g5) new r5(i10, this, new a()), b6.b.CORE);
    }

    public static long n() {
        return G0;
    }

    public com.applovin.impl.c e() {
        return a(E0);
    }

    public com.applovin.impl.sdk.a f() {
        Object obj = this.G.get();
        if (obj == null) {
            synchronized (this.G) {
                try {
                    obj = this.G.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.sdk.a(this);
                        this.G.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.G) {
            obj = null;
        }
        return (com.applovin.impl.sdk.a) obj;
    }

    public com.applovin.impl.f g() {
        return this.f9745s;
    }

    public com.applovin.impl.sdk.d h() {
        Object obj = this.W.get();
        if (obj == null) {
            synchronized (this.W) {
                try {
                    obj = this.W.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.sdk.d(this);
                        this.W.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.W) {
            obj = null;
        }
        return (com.applovin.impl.sdk.d) obj;
    }

    public e i() {
        Object obj = this.F.get();
        if (obj == null) {
            synchronized (this.F) {
                try {
                    obj = this.F.get();
                    if (obj == null) {
                        obj = new e(this);
                        this.F.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.F) {
            obj = null;
        }
        return (e) obj;
    }

    public com.applovin.impl.j j() {
        Object obj = this.f9712b0.get();
        if (obj == null) {
            synchronized (this.f9712b0) {
                try {
                    obj = this.f9712b0.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.j(this);
                        this.f9712b0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f9712b0) {
            obj = null;
        }
        return (com.applovin.impl.j) obj;
    }

    public AppLovinAdServiceImpl k() {
        Object obj = this.f9733m.get();
        if (obj == null) {
            synchronized (this.f9733m) {
                try {
                    obj = this.f9733m.get();
                    if (obj == null) {
                        obj = new AppLovinAdServiceImpl(this);
                        this.f9733m.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f9733m) {
            obj = null;
        }
        return (AppLovinAdServiceImpl) obj;
    }

    public g l() {
        Object obj = this.K.get();
        if (obj == null) {
            synchronized (this.K) {
                try {
                    obj = this.K.get();
                    if (obj == null) {
                        obj = new g(this);
                        this.K.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.K) {
            obj = null;
        }
        return (g) obj;
    }

    public h m() {
        Object obj = this.X.get();
        if (obj == null) {
            synchronized (this.X) {
                try {
                    obj = this.X.get();
                    if (obj == null) {
                        obj = new h(this);
                        this.X.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.X) {
            obj = null;
        }
        return (h) obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(JSONObject jSONObject) {
        if (JsonUtils.isValid(jSONObject)) {
            this.f9723h = System.currentTimeMillis();
            com.applovin.impl.r0.c(jSONObject, this);
            com.applovin.impl.r0.b(jSONObject, this);
            com.applovin.impl.r0.a(jSONObject, this);
            i3.f(jSONObject, this);
            i3.d(jSONObject, this);
            i3.e(jSONObject, this);
            i3.g(jSONObject, this);
        }
    }

    public static void b(Context context) {
        if (context == null) {
            return;
        }
        E0 = context.getApplicationContext();
        F0 = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void a(AppLovinSdkInitializationConfiguration appLovinSdkInitializationConfiguration) {
        B0();
        this.f9727j.attachAppLovinSdk(this);
        String pluginVersion = appLovinSdkInitializationConfiguration.getPluginVersion();
        if (pluginVersion != null) {
            o.g("AppLovinSdk", "Setting plugin version: " + pluginVersion);
            p0().a(v4.I3, pluginVersion);
        }
        if (appLovinSdkInitializationConfiguration.isExceptionHandlerEnabled() && ((Boolean) a(v4.f10345s)).booleanValue()) {
            AppLovinExceptionHandler.shared().addSdk(this);
            AppLovinExceptionHandler.shared().enable();
        }
        b6 r02 = r0();
        g5 g5Var = this.B0;
        b6.b bVar = b6.b.CORE;
        r02.a(g5Var, bVar);
        r0().a(this.C0, bVar);
    }

    public void a(AppLovinSdk appLovinSdk) {
        this.f9741q = appLovinSdk;
    }

    public static String a(String str) {
        return a(str, (List) null);
    }

    public static String a(int i10) {
        return a(i10, (List) null);
    }

    public static String a(String str, List list) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        Context o10 = o();
        return a(o10.getResources().getIdentifier(str, TypedValues.Custom.S_STRING, o10.getPackageName()), list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        O();
        if (o.a()) {
            O().a("AppLovinSdk", str);
        }
        r0().a(new a6(this));
    }

    public static String a(int i10, List list) {
        String string = o().getResources().getString(i10);
        return list != null ? String.format(string, list.toArray()) : string;
    }

    public void c() {
        synchronized (this.f9734m0) {
            try {
                if (!this.f9742q0 && !this.f9744r0) {
                    T0();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(JSONObject jSONObject) {
        for (String str : JsonUtils.getList(jSONObject, "error_messages", Collections.emptyList())) {
            o.h("AppLovinSdk", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements v3.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ v3 f9764a;

        d(v3 v3Var) {
            this.f9764a = v3Var;
        }

        @Override // com.applovin.impl.v3.a
        public void a() {
            k.this.O();
            if (o.a()) {
                k.this.O().d("AppLovinSdk", "Connected to internet - re-initializing SDK");
            }
            synchronized (k.this.f9734m0) {
                try {
                    if (!k.this.f9742q0) {
                        k.this.T0();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f9764a.b(this);
        }

        @Override // com.applovin.impl.v3.a
        public void b() {
        }
    }

    public static com.applovin.impl.c a(Context context) {
        if (I0 == null) {
            synchronized (J0) {
                try {
                    if (I0 == null) {
                        I0 = new com.applovin.impl.c(context);
                    }
                } finally {
                }
            }
        }
        return I0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str) {
        if (!k7.c(this)) {
            HashMap hashMap = new HashMap();
            hashMap.put("details", AppLovinMediationProvider.ADMOB);
            hashMap.put("error_message", str);
            E().a(com.applovin.impl.c2.E0, "adapterVersionMismatch", hashMap);
            return;
        }
        throw new IllegalStateException(str);
    }

    public List c(v4 v4Var) {
        return p0().c(v4Var);
    }

    public void c(x4 x4Var) {
        q0().b(x4Var);
    }

    public void a(final AppLovinSdkInitializationConfiguration appLovinSdkInitializationConfiguration, final AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        synchronized (this.f9756x0) {
            try {
                if (this.f9754w0 != null) {
                    o.h("AppLovinSdk", "AppLovin SDK already initialized with configuration: " + this.f9754w0 + ". Ignoring the provided initialization configuration.");
                    if (!C0() || sdkInitializationListener == null) {
                        return;
                    }
                    AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.j0
                        @Override // java.lang.Runnable
                        public final void run() {
                            k.this.a(sdkInitializationListener);
                        }
                    });
                    return;
                }
                this.f9717e = System.currentTimeMillis();
                this.f9754w0 = appLovinSdkInitializationConfiguration;
                this.f9760z0 = sdkInitializationListener;
                this.f9709a = appLovinSdkInitializationConfiguration.getSdkKey();
                this.f9711b = appLovinSdkInitializationConfiguration.getAxonEventKey();
                this.f9731l = appLovinSdkInitializationConfiguration.getMediationProvider();
                this.f9729k = appLovinSdkInitializationConfiguration.getSegmentCollection();
                k7.a(new Runnable() { // from class: com.applovin.impl.sdk.k0
                    @Override // java.lang.Runnable
                    public final void run() {
                        k.this.a(appLovinSdkInitializationConfiguration);
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected void b(boolean z10) {
        final AppLovinSdk.SdkInitializationListener sdkInitializationListener;
        if (y().i() || (sdkInitializationListener = this.f9760z0) == null) {
            return;
        }
        if (C0()) {
            this.f9760z0 = null;
            this.A0 = null;
            S().a(MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS);
        } else if (this.A0 == sdkInitializationListener) {
            return;
        } else {
            S().a(MaxAdapter.InitializationStatus.INITIALIZED_FAILURE);
            if (((Boolean) a(v4.f10321p)).booleanValue()) {
                this.f9760z0 = null;
            } else {
                this.A0 = sdkInitializationListener;
            }
        }
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putBoolean(jSONObject, "enabled", C0());
        JsonUtils.putBoolean(jSONObject, "timeout", z10);
        JsonUtils.putBoolean(jSONObject, "consent_flow_shown", this.f9740p0.get());
        HashMap hashMap = new HashMap();
        hashMap.put("duration_ms", String.valueOf(System.currentTimeMillis() - this.f9717e));
        hashMap.put("details", jSONObject.toString());
        this.f9751v.d(com.applovin.impl.c2.f7646i, hashMap);
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.m0
            @Override // java.lang.Runnable
            public final void run() {
                k.this.b(sdkInitializationListener);
            }
        }, Math.max(0L, ((Long) a(v4.f10329q)).longValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        sdkInitializationListener.onSdkInitialized(this.f9758y0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List a(JSONObject jSONObject) {
        List<String> asList = Arrays.asList(JsonUtils.getString(jSONObject, "eaf", "").split(","));
        ArrayList arrayList = new ArrayList(asList.size());
        for (String str : asList) {
            MaxAdFormat formatFromString = MaxAdFormat.formatFromString(str);
            if (formatFromString != null) {
                arrayList.add(formatFromString);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        O();
        if (o.a()) {
            O().a("AppLovinSdk", "Calling back publisher's initialization completion handler...");
        }
        sdkInitializationListener.onSdkInitialized(this.f9758y0);
    }

    public void a(boolean z10) {
        synchronized (this.f9734m0) {
            this.f9742q0 = false;
            this.f9744r0 = z10;
        }
        if (z10) {
            List a10 = t3.a(this);
            if (a10.isEmpty()) {
                r0().h();
                N0();
                return;
            }
            Long l10 = (Long) a(o3.f9115f7);
            p6 p6Var = new p6(this, true, "timeoutInitAdapters", new Runnable() { // from class: com.applovin.impl.sdk.n0
                @Override // java.lang.Runnable
                public final void run() {
                    k.this.J0();
                }
            });
            O();
            if (o.a()) {
                o O = O();
                O.a("AppLovinSdk", "Waiting for required adapters to init: " + a10 + " - timing out in " + l10 + "ms...");
            }
            r0().a(p6Var, b6.b.TIMEOUT, l10.longValue(), true);
        }
    }

    public List b(v4 v4Var) {
        return p0().b(v4Var);
    }

    public void b(x4 x4Var, Object obj) {
        q0().b(x4Var, obj);
    }

    public Object b(x4 x4Var) {
        return q0().a(x4Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x006d, code lost:
        r12 = r4.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0079, code lost:
        if (r12.hasNext() == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007b, code lost:
        r13 = (java.util.Map.Entry) r12.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008b, code lost:
        if (r11.startsWith((java.lang.String) r13.getKey()) == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008d, code lost:
        r15.f9752v0 = (java.lang.String) r13.getValue();
        O();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009c, code lost:
        if (com.applovin.impl.sdk.o.a() == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009e, code lost:
        r4 = O();
        r4.a("AppLovinSdk", "Detected mediation provider: " + r15.f9752v0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b8, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00bd, code lost:
        if (r6.booleanValue() == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00bf, code lost:
        r2.add(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c2, code lost:
        r8 = java.lang.Integer.valueOf(r8.intValue() - 1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String b() {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.k.b():java.lang.String");
    }

    public void a(h3 h3Var) {
        if (r0().g()) {
            return;
        }
        List a10 = t3.a(this);
        if (a10.size() <= 0 || !S().a().containsAll(a10)) {
            return;
        }
        O();
        if (o.a()) {
            O().a("AppLovinSdk", "All required adapters initialized");
        }
        r0().h();
        N0();
    }

    public boolean a(MaxAdFormat maxAdFormat) {
        List list = this.f9732l0;
        return (list == null || list.size() <= 0 || this.f9732l0.contains(maxAdFormat)) ? false : true;
    }

    public void a() {
        String str = (String) q0().a(x4.f10513g, null);
        if (StringUtils.isValidString(str)) {
            if (AppLovinSdk.VERSION_CODE < k7.g(str)) {
                o.h("AppLovinSdk", "Current version (" + AppLovinSdk.VERSION + ") is older than earlier installed version (" + str + "), which may cause compatibility issues.");
            }
        }
    }

    public Object a(v4 v4Var) {
        return p0().a(v4Var);
    }

    public boolean a(v4 v4Var, MaxAdFormat maxAdFormat) {
        return b(v4Var).contains(maxAdFormat);
    }

    public void a(Map map) {
        U().a(map);
    }

    public void a(Uri uri) {
        C().a(uri);
    }

    public void a(String str, Object obj, SharedPreferences.Editor editor) {
        q0().a(str, obj, editor);
    }

    public Object a(x4 x4Var) {
        return a(x4Var, (Object) null);
    }

    public Object a(x4 x4Var, Object obj) {
        return q0().a(x4Var, obj);
    }

    public Object a(String str, Object obj, Class cls, SharedPreferences sharedPreferences) {
        return y4.a(str, obj, cls, sharedPreferences);
    }

    public void a(SharedPreferences sharedPreferences) {
        q0().a(sharedPreferences);
    }
}
