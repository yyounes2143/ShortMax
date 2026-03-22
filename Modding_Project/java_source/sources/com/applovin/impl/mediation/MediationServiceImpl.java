package com.applovin.impl.mediation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import com.applovin.impl.a5;
import com.applovin.impl.b5;
import com.applovin.impl.b6;
import com.applovin.impl.c2;
import com.applovin.impl.e2;
import com.applovin.impl.e3;
import com.applovin.impl.g5;
import com.applovin.impl.g6;
import com.applovin.impl.h3;
import com.applovin.impl.k7;
import com.applovin.impl.l6;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.o3;
import com.applovin.impl.p3;
import com.applovin.impl.q2;
import com.applovin.impl.q3;
import com.applovin.impl.q4;
import com.applovin.impl.r6;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.g;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t3;
import com.applovin.impl.v2;
import com.applovin.impl.v4;
import com.applovin.impl.x2;
import com.applovin.impl.x4;
import com.applovin.impl.z2;
import com.applovin.impl.z4;
import com.applovin.impl.z5;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRequestListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxMediatedNetworkInfo;
import com.applovin.mediation.MaxNetworkResponseInfo;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinSdkUtils;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class MediationServiceImpl implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f8543a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f8544b;

    /* renamed from: c  reason: collision with root package name */
    private final z4 f8545c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicReference f8546d = new AtomicReference();

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8547a;

        static {
            int[] iArr = new int[MaxAdapter.InitializationStatus.values().length];
            f8547a = iArr;
            try {
                iArr[MaxAdapter.InitializationStatus.DOES_NOT_APPLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8547a[MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8547a[MaxAdapter.InitializationStatus.INITIALIZED_UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8547a[MaxAdapter.InitializationStatus.INITIALIZED_FAILURE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8547a[MaxAdapter.InitializationStatus.NOT_INITIALIZED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8547a[MaxAdapter.InitializationStatus.INITIALIZING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public class b implements MaxAdListener, MaxRewardedAdListener, MaxAdViewAdListener, MaxAdRevenueListener, a.InterfaceC0113a {

        /* renamed from: a  reason: collision with root package name */
        private final v2 f8548a;

        /* renamed from: b  reason: collision with root package name */
        private a.InterfaceC0113a f8549b;

        public b(v2 v2Var, a.InterfaceC0113a interfaceC0113a) {
            this.f8548a = v2Var;
            this.f8549b = interfaceC0113a;
        }

        public void b(MaxAd maxAd, Bundle bundle) {
            this.f8548a.a(bundle);
            q2.b(this.f8549b, maxAd);
        }

        public void c(MaxAd maxAd, Bundle bundle) {
            this.f8548a.a(bundle);
            com.applovin.impl.sdk.o unused = MediationServiceImpl.this.f8544b;
            if (com.applovin.impl.sdk.o.a()) {
                MediationServiceImpl.this.f8544b.a("MediationService", "Scheduling impression for ad via callback...");
            }
            MediationServiceImpl.this.processCallbackAdImpressionPostback(this.f8548a, this.f8549b);
            if (((Boolean) MediationServiceImpl.this.f8543a.a(o3.f9130m8)).booleanValue() && !this.f8548a.u().compareAndSet(false, true)) {
                return;
            }
            MediationServiceImpl.this.f8543a.l().a(this.f8548a, g.c.SHOW);
            MediationServiceImpl.this.f8543a.u().b(this.f8548a, "DID_DISPLAY");
            MediationServiceImpl.this.f8543a.p().maybeSendAdEvent(this.f8548a, "DID_DISPLAY");
            if (maxAd.getFormat().isFullscreenAd()) {
                MediationServiceImpl.this.f8543a.I().a(this.f8548a);
            }
            q2.c(this.f8549b, maxAd);
        }

        public void d(MaxAd maxAd, Bundle bundle) {
            this.f8548a.a(bundle);
            q2.d(this.f8549b, maxAd);
        }

        public void e(final MaxAd maxAd, Bundle bundle) {
            long j10;
            this.f8548a.a(bundle);
            MediationServiceImpl.this.f8543a.l().a(this.f8548a, g.c.HIDE);
            MediationServiceImpl.this.a(this.f8548a);
            if (maxAd instanceof z2) {
                j10 = ((z2) maxAd).f0();
            } else {
                j10 = 0;
            }
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.q
                @Override // java.lang.Runnable
                public final void run() {
                    MediationServiceImpl.b.this.a(maxAd);
                }
            }, j10);
        }

        public void f(MaxAd maxAd, Bundle bundle) {
            this.f8548a.a(bundle);
            this.f8548a.Y();
            MediationServiceImpl.this.f8543a.l().a(this.f8548a, g.c.LOAD);
            MediationServiceImpl.this.b(this.f8548a);
            q2.f(this.f8549b, maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            a(maxAd, (Bundle) null);
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdCollapsed(MaxAd maxAd) {
            b(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
            a(maxAd, maxError, (Bundle) null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            c(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdExpanded(MaxAd maxAd) {
            d(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            e(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            this.f8548a.Y();
            MediationServiceImpl.this.b(this.f8548a, maxError, this.f8549b);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            f(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
            a(maxAd, maxReward, (Bundle) null);
        }

        public void a(a.InterfaceC0113a interfaceC0113a) {
            this.f8549b = interfaceC0113a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAd maxAd) {
            if (maxAd.getFormat().isFullscreenAd()) {
                MediationServiceImpl.this.f8543a.I().b(maxAd);
            }
            q2.e(this.f8549b, maxAd);
        }

        public void a(MaxAd maxAd, Bundle bundle) {
            this.f8548a.a(bundle);
            MediationServiceImpl.this.f8543a.l().a(this.f8548a, g.c.CLICK);
            MediationServiceImpl.this.a(this.f8548a, this.f8549b);
            q2.a((MaxAdListener) this.f8549b, maxAd);
        }

        public void a(MaxAd maxAd, MaxError maxError, Bundle bundle) {
            this.f8548a.a(bundle);
            MediationServiceImpl.this.a(this.f8548a, maxError, this.f8549b);
            if (maxAd.getFormat() == MaxAdFormat.REWARDED && (maxAd instanceof z2)) {
                ((z2) maxAd).d0();
            }
        }

        public void a(MaxAd maxAd, MaxReward maxReward, Bundle bundle) {
            this.f8548a.a(bundle);
            q2.a(this.f8549b, maxAd, maxReward);
            MediationServiceImpl.this.f8543a.r0().a((g5) new l6((z2) maxAd, MediationServiceImpl.this.f8543a), b6.b.OTHER);
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
        }
    }

    public MediationServiceImpl(com.applovin.impl.sdk.k kVar) {
        this.f8543a = kVar;
        this.f8544b = kVar.O();
        this.f8545c = new z4(kVar);
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.render_process_gone"));
    }

    public void collectSignal(final b5 b5Var, Context context, final a5.a aVar) {
        Activity v02;
        if (b5Var != null) {
            if (context != null) {
                if (aVar != null) {
                    x2 u10 = b5Var.u();
                    final String b10 = u10.b();
                    final MaxAdFormat a10 = u10.a();
                    a5 b11 = this.f8545c.b(b5Var, b10, a10);
                    if (b11 != null) {
                        aVar.a(a5.a(b11));
                        return;
                    }
                    final h a11 = this.f8543a.T().a(b5Var, b5Var.A());
                    if (a11 != null) {
                        final q4 q4Var = new q4("SignalCollection:" + b5Var.c());
                        final long elapsedRealtime = SystemClock.elapsedRealtime();
                        Executor executor = q4.f9329i;
                        q4Var.a(executor, new q4.b() { // from class: com.applovin.impl.mediation.j
                            @Override // com.applovin.impl.q4.b
                            public final void a(boolean z10, Object obj, Object obj2) {
                                MediationServiceImpl.this.a(elapsedRealtime, a11, b10, b5Var, a10, aVar, z10, (String) obj, (MaxError) obj2);
                            }
                        });
                        long m10 = b5Var.m();
                        g6.a(m10, q4Var, new MaxErrorImpl(MaxAdapterError.ERROR_CODE_SIGNAL_COLLECTION_TIMEOUT, "The adapter (" + b5Var.c() + ") timed out collecting signal"), "MediationService", this.f8543a);
                        if (context instanceof Activity) {
                            v02 = (Activity) context;
                        } else {
                            v02 = this.f8543a.v0();
                        }
                        final Activity activity = v02;
                        final MaxAdapterParametersImpl a12 = MaxAdapterParametersImpl.a(b5Var, b10, a10);
                        if (b5Var.w()) {
                            q4 a13 = this.f8543a.S().a(b5Var, activity);
                            a13.a(executor, new Runnable() { // from class: com.applovin.impl.mediation.k
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MediationServiceImpl.this.a(q4Var, a11, a12, b5Var, activity);
                                }
                            });
                            a13.a(executor, new q4.a() { // from class: com.applovin.impl.mediation.l
                                @Override // com.applovin.impl.q4.a
                                public final void a(Object obj) {
                                    MediationServiceImpl.this.a(a11, q4Var, (String) obj);
                                }
                            });
                            return;
                        }
                        if (b5Var.x()) {
                            q4 a14 = this.f8543a.S().a(b5Var, activity);
                            if (a14.d() && !b5Var.z()) {
                                if (com.applovin.impl.sdk.o.a()) {
                                    com.applovin.impl.sdk.o oVar = this.f8544b;
                                    oVar.b("MediationService", "Skip collecting signal for failed-initialized adapter: " + a11.g());
                                }
                                q4Var.a(new MaxErrorImpl("Could not initialize adapter: " + ((String) a14.a())));
                                return;
                            }
                        }
                        if (com.applovin.impl.sdk.o.a()) {
                            com.applovin.impl.sdk.o oVar2 = this.f8544b;
                            oVar2.a("MediationService", "Collecting signal for adapter: " + a11.g());
                        }
                        a11.a(a12, b5Var, activity, q4Var);
                        return;
                    }
                    aVar.a(a5.a(b5Var, new MaxErrorImpl("Could not load adapter")));
                    return;
                }
                throw new IllegalArgumentException("No callback specified");
            }
            throw new IllegalArgumentException("No context specified");
        }
        throw new IllegalArgumentException("No spec specified");
    }

    public void destroyAd(MaxAd maxAd) {
        if (!(maxAd instanceof v2)) {
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f8544b;
            oVar.d("MediationService", "Destroying " + maxAd);
        }
        v2 v2Var = (v2) maxAd;
        h A = v2Var.A();
        if (A != null) {
            A.a();
            v2Var.t();
        }
        this.f8543a.j().c(v2Var.P());
        this.f8543a.l().a(v2Var, g.c.DESTROY);
    }

    public JSONObject getAndResetCustomPostBodyData() {
        return (JSONObject) this.f8546d.getAndSet(null);
    }

    public void loadAd(String str, @Nullable String str2, MaxAdFormat maxAdFormat, com.applovin.impl.i iVar, Map<String, Object> map, Map<String, Object> map2, Context context, a.InterfaceC0113a interfaceC0113a) {
        List<String> list;
        if (!TextUtils.isEmpty(str)) {
            if (context != null) {
                if (interfaceC0113a != null) {
                    if (TextUtils.isEmpty(this.f8543a.V())) {
                        com.applovin.impl.sdk.o.h("AppLovinSdk", "Mediation provider is null. Please set the mediation provider in the AppLovinSdkInitializationConfiguration.Builder when initializing the AppLovinSDK.");
                    }
                    if (!this.f8543a.C0()) {
                        com.applovin.impl.sdk.o.j("AppLovinSdk", "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener).");
                    }
                    if (this.f8543a.K() != null) {
                        list = this.f8543a.K().getAdUnitIds();
                    } else {
                        list = null;
                    }
                    boolean startsWith = str.startsWith("test_mode");
                    if (list != null && list.size() > 0 && !list.contains(str) && !startsWith) {
                        if (k7.c(this.f8543a)) {
                            String str3 = "Ad Unit ID " + str + " has not been initialized. When you use selective init, any ad units that you do not explicitly specify are excluded from serving ads for the current session. For more information visit our docs: https://developers.applovin.com/en/max/android/overview/advanced-settings#selective-init";
                            if (!((Boolean) this.f8543a.a(v4.f10328p6)).booleanValue()) {
                                if (com.applovin.impl.sdk.o.a()) {
                                    this.f8544b.b("MediationService", str3);
                                }
                            } else {
                                throw new RuntimeException(str3);
                            }
                        }
                        this.f8543a.E().a(c2.E0, "uninitialized_ad_unit_id", CollectionUtils.hashMap("ad_unit_id", str), "uninitialized_ad_unit_id" + str);
                    }
                    this.f8543a.c();
                    if (str.length() != 16 && !startsWith && !this.f8543a.j0().startsWith("05TMD")) {
                        com.applovin.impl.sdk.o.h("MediationService", "Ad unit ID provided for " + maxAdFormat.getLabel() + " is invalid (" + str + "). Expected length: 16 characters.\n\nStack trace:\n" + Log.getStackTraceString(new Throwable()));
                    }
                    if (this.f8543a.a(maxAdFormat)) {
                        com.applovin.impl.sdk.o.h("MediationService", "Ad load failed due to disabled ad format " + maxAdFormat.getLabel());
                        q2.a(interfaceC0113a, str, new MaxErrorImpl(-1, "Disabled ad format " + maxAdFormat.getLabel()));
                        return;
                    }
                    this.f8543a.W0();
                    q2.a((MaxAdRequestListener) interfaceC0113a, str, true);
                    if (this.f8543a.R() != null) {
                        this.f8543a.R().a(str, str2, maxAdFormat, iVar, map, map2, context, interfaceC0113a);
                        return;
                    } else {
                        this.f8543a.Q().a(str, str2, maxAdFormat, iVar, map, map2, context, interfaceC0113a);
                        return;
                    }
                }
                throw new IllegalArgumentException("No listener specified");
            }
            throw new IllegalArgumentException("No context specified");
        }
        throw new IllegalArgumentException("No Ad Unit ID specified");
    }

    public void loadThirdPartyMediatedAd(final String str, final v2 v2Var, final Activity activity, final a.InterfaceC0113a interfaceC0113a) {
        q4 q4Var;
        if (v2Var != null) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f8544b.a("MediationService", "Loading " + v2Var + "...");
            }
            this.f8543a.P().a(c2.W, v2Var);
            this.f8543a.l().a(v2Var, g.c.LOADING);
            this.f8543a.u().b(v2Var, "WILL_LOAD");
            this.f8543a.p().maybeSendAdEvent(v2Var, "WILL_LOAD");
            final h a10 = this.f8543a.T().a(v2Var);
            if (a10 != null) {
                final MaxAdapterParametersImpl a11 = MaxAdapterParametersImpl.a(v2Var);
                if (v2Var.W()) {
                    q4Var = this.f8543a.S().a(v2Var, activity);
                } else {
                    if (v2Var.X()) {
                        this.f8543a.S().a(v2Var, activity);
                    }
                    q4Var = null;
                }
                q4 q4Var2 = q4Var;
                final v2 a12 = v2Var.a(a10);
                a10.a(str, a12);
                a12.Z();
                if (q4Var2 != null) {
                    Executor executor = q4.f9329i;
                    q4Var2.a(executor, new q4.a() { // from class: com.applovin.impl.mediation.m
                        @Override // com.applovin.impl.q4.a
                        public final void a(Object obj) {
                            MediationServiceImpl.this.a(v2Var, interfaceC0113a, (String) obj);
                        }
                    });
                    q4Var2.a(executor, new Runnable() { // from class: com.applovin.impl.mediation.n
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediationServiceImpl.this.a(a10, str, a11, a12, activity, interfaceC0113a);
                        }
                    });
                    return;
                }
                a10.a(str, a11, a12, activity, new b(a12, interfaceC0113a));
                return;
            }
            String str2 = "Failed to load " + v2Var + ": adapter not loaded";
            com.applovin.impl.sdk.o.h("MediationService", str2);
            b(v2Var, new MaxErrorImpl(-5001, str2), interfaceC0113a);
            return;
        }
        throw new IllegalArgumentException("No mediated ad specified");
    }

    public void maybeFireAppKilledWhilePlayingMediatedAdPostback() {
        String str;
        Map hashMap;
        Map<String, String> c10;
        String str2 = (String) this.f8543a.b(x4.Q);
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        JSONObject jsonObjectFromJsonString = JsonUtils.jsonObjectFromJsonString(str2, new JSONObject());
        if (!a(JsonUtils.getLong(jsonObjectFromJsonString, "timestamp_ms", 0L))) {
            return;
        }
        Long l10 = (Long) this.f8543a.b(x4.R);
        if (l10 != null) {
            str = l10.toString();
        } else {
            str = "";
        }
        JSONObject jSONObject = JsonUtils.getJSONObject(jsonObjectFromJsonString, "ad_info");
        if (jSONObject != null) {
            hashMap = JsonUtils.tryToStringMap(jSONObject);
        } else {
            hashMap = new HashMap(1);
        }
        CollectionUtils.putStringIfValid("duration_ms", str, hashMap);
        this.f8543a.E().d(c2.f7671u0, hashMap);
        List list = JsonUtils.getList(jsonObjectFromJsonString, "app_killed_urls", Collections.emptyList());
        if (CollectionUtils.isEmpty(list)) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f8544b.k("MediationService", "Unable to track app killed during mediated ad from previous run. Missing app killed tracking URLs.");
                return;
            }
            return;
        }
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jsonObjectFromJsonString, "user_info");
        if (jSONObject2 != null) {
            c10 = JsonUtils.tryToStringMap(jSONObject2);
        } else {
            c10 = t3.c(this.f8543a);
        }
        Map<String, String> map = c10;
        map.put("{IMP_DURATION_MS}", str);
        a("mappk", list, map, null, null, null, true);
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, @Nullable Map<String, Object> map) {
        if ("com.applovin.render_process_gone".equals(intent.getAction())) {
            Object a10 = this.f8543a.I().a();
            if (a10 instanceof v2) {
                a((MaxError) MaxAdapterError.WEBVIEW_ERROR, (v2) a10, true);
            }
        }
    }

    public void processAdDisplayErrorPostbackForUserError(MaxError maxError, v2 v2Var) {
        a(maxError, v2Var, false);
    }

    public void processAdapterInitializationPostback(h3 h3Var, long j10, MaxAdapter.InitializationStatus initializationStatus, String str) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("{INIT_STATUS}", String.valueOf(initializationStatus.getCode()));
        hashMap.put("{INIT_TIME_MS}", String.valueOf(j10));
        a("minit", hashMap, new MaxErrorImpl(str), h3Var);
        Map a10 = e2.a(h3Var);
        CollectionUtils.putStringIfValid("adapter_init_status", String.valueOf(initializationStatus.getCode()), a10);
        CollectionUtils.putStringIfValid("error_message", str, a10);
        CollectionUtils.putStringIfValid("duration_ms", String.valueOf(j10), a10);
        switch (a.f8547a[initializationStatus.ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.f8543a.P().d(c2.P, a10);
                return;
            case 4:
                this.f8543a.P().d(c2.Q, a10);
                return;
            case 5:
            case 6:
                this.f8543a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f8543a.O().k("MediationService", "Adapter init postback called while the adapter is not fully initialized.");
                }
                this.f8543a.E().a(c2.f7636d, "adapterNotInitializedForPostback", a10);
                return;
            default:
                return;
        }
    }

    public void processCallbackAdImpressionPostback(v2 v2Var, a.InterfaceC0113a interfaceC0113a) {
        if (v2Var.N().endsWith("cimp")) {
            this.f8543a.u().b(v2Var);
            q2.a((MaxAdRevenueListener) interfaceC0113a, (MaxAd) v2Var);
        }
        HashMap hashMap = new HashMap(2);
        if (v2Var instanceof z2) {
            hashMap.put("{PREVIOUS_FAILED_NETWORK_NAME}", StringUtils.emptyIfNull(((z2) v2Var).o0()));
        }
        String emptyIfNull = StringUtils.emptyIfNull(this.f8543a.x0().e());
        if (!((Boolean) this.f8543a.a(v4.E3)).booleanValue()) {
            emptyIfNull = "";
        }
        hashMap.put("{CUID}", emptyIfNull);
        a("mcimp", hashMap, v2Var);
        this.f8543a.P().a(c2.f7633b0, v2Var);
    }

    public void processRawAdImpression(v2 v2Var, a.InterfaceC0113a interfaceC0113a) {
        this.f8543a.u().b(v2Var, "WILL_DISPLAY");
        this.f8543a.p().maybeSendAdEvent(v2Var, "WILL_DISPLAY");
        if (v2Var.N().endsWith("mimp")) {
            this.f8543a.u().b(v2Var);
            q2.a((MaxAdRevenueListener) interfaceC0113a, (MaxAd) v2Var);
        }
        if (((Boolean) this.f8543a.a(v4.C4)).booleanValue()) {
            this.f8543a.Y().a(p3.f9204g, q3.a(v2Var), Long.valueOf(System.currentTimeMillis() - this.f8543a.L()));
        }
        HashMap hashMap = new HashMap(3);
        if (v2Var instanceof z2) {
            z2 z2Var = (z2) v2Var;
            hashMap.put("{TIME_TO_SHOW_MS}", String.valueOf(z2Var.j0()));
            hashMap.put("{PREVIOUS_FAILED_NETWORK_NAME}", StringUtils.emptyIfNull(z2Var.o0()));
        }
        String emptyIfNull = StringUtils.emptyIfNull(this.f8543a.x0().e());
        if (!((Boolean) this.f8543a.a(v4.E3)).booleanValue()) {
            emptyIfNull = "";
        }
        hashMap.put("{CUID}", emptyIfNull);
        a("mimp", hashMap, v2Var);
        this.f8543a.P().a(c2.f7632a0, v2Var);
    }

    public void processViewabilityAdImpressionPostback(e3 e3Var, long j10, a.InterfaceC0113a interfaceC0113a) {
        if (e3Var.N().endsWith("vimp")) {
            this.f8543a.u().b(e3Var);
            q2.a((MaxAdRevenueListener) interfaceC0113a, (MaxAd) e3Var);
        }
        HashMap hashMap = new HashMap(3);
        hashMap.put("{VIEWABILITY_FLAGS}", String.valueOf(j10));
        hashMap.put("{USED_VIEWABILITY_TIMER}", String.valueOf(e3Var.k0()));
        String emptyIfNull = StringUtils.emptyIfNull(this.f8543a.x0().e());
        if (!((Boolean) this.f8543a.a(v4.E3)).booleanValue()) {
            emptyIfNull = "";
        }
        hashMap.put("{CUID}", emptyIfNull);
        a("mvimp", hashMap, e3Var);
        this.f8543a.P().a(c2.f7635c0, e3Var);
    }

    public void processWaterfallInfoPostback(MaxAdWaterfallInfoImpl maxAdWaterfallInfoImpl, @Nullable MaxError maxError, long j10, long j11) {
        x2 requestParameters = maxAdWaterfallInfoImpl.getRequestParameters();
        String b10 = requestParameters.b();
        MaxAdFormat a10 = requestParameters.a();
        HashMap hashMap = new HashMap();
        CollectionUtils.putStringIfValid("ad_format", a10.getLabel(), hashMap);
        CollectionUtils.putStringIfValid("ad_unit_id", b10, hashMap);
        CollectionUtils.putStringIfValid("duration_ms", String.valueOf(j11), hashMap);
        CollectionUtils.putStringIfValid("ad_event_id", maxAdWaterfallInfoImpl.getEventId(), hashMap);
        if (maxError != null) {
            hashMap.putAll(e2.a(maxError));
        }
        this.f8543a.P().d(c2.Z, hashMap);
        if (CollectionUtils.isEmpty(maxAdWaterfallInfoImpl.getPostbackUrls())) {
            return;
        }
        HashMap hashMap2 = new HashMap(8);
        CollectionUtils.putStringIfValid("mcode", maxAdWaterfallInfoImpl.getMCode(), hashMap2);
        CollectionUtils.putStringIfValid("ad_unit_id", b10, hashMap2);
        CollectionUtils.putStringIfValid("ad_format", a10.getLabel(), hashMap2);
        CollectionUtils.putStringIfValid("name", maxAdWaterfallInfoImpl.getName(), hashMap2);
        CollectionUtils.putLongIfValid("request_latency_ms", Long.valueOf(j11), hashMap2);
        CollectionUtils.putLongIfValid("request_start_timestamp_ms", Long.valueOf(j10), hashMap2);
        CollectionUtils.putLongIfValid("wf_latency_ms", Long.valueOf(maxAdWaterfallInfoImpl.getLatencyMillis()), hashMap2);
        hashMap2.put("arn_info", requestParameters.f().e());
        List<MaxNetworkResponseInfo> networkResponses = maxAdWaterfallInfoImpl.getNetworkResponses();
        ArrayList arrayList = new ArrayList(networkResponses.size());
        for (MaxNetworkResponseInfo maxNetworkResponseInfo : networkResponses) {
            MaxMediatedNetworkInfo mediatedNetwork = maxNetworkResponseInfo.getMediatedNetwork();
            HashMap hashMap3 = new HashMap(5);
            CollectionUtils.putStringIfValid("bcode", ((MaxNetworkResponseInfoImpl) maxNetworkResponseInfo).getBCode(), hashMap3);
            hashMap3.put("name", mediatedNetwork.getName());
            CollectionUtils.putLongIfValid("latency_ms", Long.valueOf(maxNetworkResponseInfo.getLatencyMillis()), hashMap3);
            hashMap3.put("load_state", Integer.valueOf(maxNetworkResponseInfo.getAdLoadState().ordinal()));
            MaxErrorImpl maxErrorImpl = (MaxErrorImpl) maxNetworkResponseInfo.getError();
            if (maxErrorImpl != null) {
                HashMap hashMap4 = new HashMap(4);
                hashMap4.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, Integer.valueOf(maxErrorImpl.getCode()));
                hashMap4.put("error_message", maxErrorImpl.getMessage());
                hashMap4.put("third_party_sdk_error_code", Integer.valueOf(maxErrorImpl.getMediatedNetworkErrorCode()));
                hashMap4.put("third_party_sdk_error_message", maxErrorImpl.getMediatedNetworkErrorMessage());
                hashMap3.put("error_info", hashMap4);
            }
            arrayList.add(hashMap3);
        }
        hashMap2.put("ads_info", arrayList);
        a("mwf_info", maxAdWaterfallInfoImpl.getPostbackUrls(), Collections.EMPTY_MAP, hashMap2, null, null, false);
    }

    public void setCustomPostBodyData(JSONObject jSONObject) {
        this.f8546d.set(jSONObject);
    }

    public void showFullscreenAd(final z2 z2Var, final Activity activity, final a.InterfaceC0113a interfaceC0113a) {
        if (z2Var != null) {
            if (activity == null && MaxAdFormat.APP_OPEN != z2Var.getFormat()) {
                throw new IllegalArgumentException("No activity specified");
            }
            this.f8543a.I().a(true);
            final h b10 = b(z2Var);
            long l02 = z2Var.l0();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f8544b;
                oVar.d("MediationService", "Showing ad " + z2Var.getAdUnitId() + " with delay of " + l02 + "ms...");
            }
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.i
                @Override // java.lang.Runnable
                public final void run() {
                    MediationServiceImpl.this.a(z2Var, b10, activity, interfaceC0113a);
                }
            }, l02);
            return;
        }
        throw new IllegalArgumentException("No ad specified");
    }

    private h b(z2 z2Var) {
        h A = z2Var.A();
        if (A == null) {
            this.f8543a.I().a(false);
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f8544b;
                oVar.k("MediationService", "Failed to show " + z2Var + ": adapter not found");
            }
            com.applovin.impl.sdk.o.h("MediationService", "There may be an integration problem with the adapter for Ad Unit ID '" + z2Var.getAdUnitId() + "'. Please check if you have a supported version of that SDK integrated into your project.");
            throw new IllegalStateException("Could not find adapter for provided ad");
        }
        return A;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(z2 z2Var, h hVar, Activity activity, a.InterfaceC0113a interfaceC0113a) {
        a(z2Var);
        hVar.b(z2Var, activity);
        a(z2Var, interfaceC0113a);
    }

    public void showFullscreenAd(final z2 z2Var, final ViewGroup viewGroup, final Lifecycle lifecycle, final Activity activity, final a.InterfaceC0113a interfaceC0113a) {
        if (z2Var == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        if (activity != null) {
            this.f8543a.I().a(true);
            final h b10 = b(z2Var);
            long l02 = z2Var.l0();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f8544b;
                oVar.d("MediationService", "Showing ad " + z2Var.getAdUnitId() + " with delay of " + l02 + "ms...");
            }
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.o
                @Override // java.lang.Runnable
                public final void run() {
                    MediationServiceImpl.this.a(z2Var, b10, viewGroup, lifecycle, activity, interfaceC0113a);
                }
            }, l02);
            return;
        }
        throw new IllegalArgumentException("No activity specified");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(z2 z2Var, h hVar, ViewGroup viewGroup, Lifecycle lifecycle, Activity activity, a.InterfaceC0113a interfaceC0113a) {
        a(z2Var);
        hVar.a(z2Var, viewGroup, lifecycle, activity);
        a(z2Var, interfaceC0113a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(v2 v2Var, MaxError maxError, MaxAdListener maxAdListener) {
        a(maxError, v2Var);
        destroyAd(v2Var);
        q2.a(maxAdListener, v2Var.getAdUnitId(), maxError);
    }

    private void a(z2 z2Var) {
        if (z2Var.getFormat() == MaxAdFormat.REWARDED) {
            this.f8543a.r0().a((g5) new r6(z2Var, this.f8543a), b6.b.OTHER);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(v2 v2Var) {
        this.f8543a.u().b(v2Var, "DID_LOAD");
        this.f8543a.p().maybeSendAdEvent(v2Var, "DID_LOAD");
        if (v2Var.N().endsWith("load")) {
            this.f8543a.u().b(v2Var);
        }
        HashMap hashMap = new HashMap(3);
        long G = v2Var.G();
        hashMap.put("{LOAD_TIME_MS}", String.valueOf(G));
        if (v2Var.getFormat().isFullscreenAd()) {
            n.a b10 = this.f8543a.I().b(v2Var.getAdUnitId());
            hashMap.put("{SHOW_ATTEMPT_COUNT}", String.valueOf(b10.a()));
            hashMap.put("{SHOW_ATTEMPT_TIMESTAMP_MS}", String.valueOf(b10.b()));
        }
        a("load", hashMap, v2Var);
        Map a10 = e2.a(v2Var);
        a10.put("duration_ms", String.valueOf(G));
        this.f8543a.P().d(c2.X, a10);
    }

    private void a(z2 z2Var, a.InterfaceC0113a interfaceC0113a) {
        this.f8543a.I().a(false);
        a(z2Var, (MaxAdListener) interfaceC0113a);
        if (com.applovin.impl.sdk.o.a()) {
            this.f8544b.a("MediationService", "Scheduling impression for ad manually...");
        }
        processRawAdImpression(z2Var, interfaceC0113a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(v2 v2Var, a.InterfaceC0113a interfaceC0113a, String str) {
        String str2 = "Failed to load " + v2Var + ": adapter init failed with error: " + str;
        if (com.applovin.impl.sdk.o.a()) {
            this.f8544b.k("MediationService", str2);
        }
        b(v2Var, new MaxErrorImpl(MaxAdapterError.NOT_INITIALIZED.getErrorCode(), "Adapter initialization failed"), interfaceC0113a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(h hVar, String str, MaxAdapterParametersImpl maxAdapterParametersImpl, v2 v2Var, Activity activity, a.InterfaceC0113a interfaceC0113a) {
        hVar.a(str, maxAdapterParametersImpl, v2Var, activity, new b(v2Var, interfaceC0113a));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j10, h hVar, String str, b5 b5Var, MaxAdFormat maxAdFormat, a5.a aVar, boolean z10, String str2, MaxError maxError) {
        a5 a10;
        long elapsedRealtime = SystemClock.elapsedRealtime() - j10;
        if (z10) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f8544b;
                oVar.a("MediationService", "Signal collection successful from: " + hVar.g() + " for Ad Unit ID: " + str + " with signal: \"" + str2 + "\"");
            }
            a10 = a5.a(b5Var, hVar, str2, j10, elapsedRealtime);
            this.f8545c.a(a10, b5Var, str, maxAdFormat);
            HashMap hashMap = new HashMap();
            CollectionUtils.putStringIfValid("network_name", b5Var.c(), hashMap);
            CollectionUtils.putStringIfValid("adapter_class", b5Var.b(), hashMap);
            CollectionUtils.putStringIfValid("adapter_version", hVar.b(), hashMap);
            CollectionUtils.putStringIfValid("duration_ms", String.valueOf(elapsedRealtime), hashMap);
            CollectionUtils.putStringIfValid("ad_format", String.valueOf(maxAdFormat.getLabel()), hashMap);
            CollectionUtils.putStringIfValid("ad_unit_id", str, hashMap);
            this.f8543a.P().d(c2.R, hashMap);
        } else {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.f8544b;
                oVar2.b("MediationService", "Signal collection failed from: " + hVar.g() + " for Ad Unit ID: " + str + " with error message: \"" + maxError.getMessage() + "\"");
            }
            a10 = a5.a(b5Var, hVar, maxError, j10, elapsedRealtime);
            a(a10, b5Var, hVar);
        }
        aVar.a(a10);
        hVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(q4 q4Var, h hVar, MaxAdapterParametersImpl maxAdapterParametersImpl, b5 b5Var, Activity activity) {
        if (q4Var.c()) {
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f8544b;
            oVar.a("MediationService", "Collecting signal for now-initialized adapter: " + hVar.g());
        }
        hVar.a(maxAdapterParametersImpl, b5Var, activity, q4Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(h hVar, q4 q4Var, String str) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f8544b;
            oVar.b("MediationService", "Skip collecting signal for failed-initialized adapter: " + hVar.g());
        }
        q4Var.a(new MaxErrorImpl(MaxAdapterError.ERROR_CODE_NOT_INITIALIZED, "Could not initialize adapter: " + str));
    }

    private void a(final z2 z2Var, final MaxAdListener maxAdListener) {
        final Long l10 = (Long) this.f8543a.a(o3.L7);
        if (l10.longValue() <= 0) {
            return;
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.p
            @Override // java.lang.Runnable
            public final void run() {
                MediationServiceImpl.this.a(z2Var, l10, maxAdListener);
            }
        }, l10.longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(z2 z2Var, Long l10, MaxAdListener maxAdListener) {
        if (z2Var.u().get()) {
            return;
        }
        String str = "Ad (" + z2Var.k() + ") has not been displayed after " + l10 + "ms. Failing ad display...";
        com.applovin.impl.sdk.o.h("MediationService", str);
        a(z2Var, new MaxErrorImpl(-1, str), maxAdListener);
        this.f8543a.I().b(z2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(v2 v2Var, MaxError maxError, MaxAdListener maxAdListener) {
        this.f8543a.l().a(v2Var, g.c.SHOW_ERROR);
        this.f8543a.u().b(v2Var, "DID_FAIL_DISPLAY");
        this.f8543a.p().maybeSendAdEvent(v2Var, "DID_FAIL_DISPLAY");
        a(maxError, v2Var, true);
        if (v2Var.u().compareAndSet(false, true)) {
            q2.a(maxAdListener, v2Var, maxError);
        }
    }

    private void a(MaxError maxError, v2 v2Var) {
        HashMap hashMap = new HashMap(3);
        long G = v2Var.G();
        hashMap.put("{LOAD_TIME_MS}", String.valueOf(G));
        if (v2Var.getFormat().isFullscreenAd()) {
            n.a b10 = this.f8543a.I().b(v2Var.getAdUnitId());
            hashMap.put("{SHOW_ATTEMPT_COUNT}", String.valueOf(b10.a()));
            hashMap.put("{SHOW_ATTEMPT_TIMESTAMP_MS}", String.valueOf(b10.b()));
        }
        a("mlerr", hashMap, maxError, v2Var);
        Map a10 = e2.a(v2Var);
        a10.putAll(e2.a(maxError));
        a10.put("duration_ms", String.valueOf(G));
        this.f8543a.P().d(c2.Y, a10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(v2 v2Var) {
        this.f8543a.u().b(v2Var, "DID_HIDE");
        this.f8543a.p().maybeSendAdEvent(v2Var, "DID_HIDE");
        HashMap hashMap = new HashMap(1);
        String emptyIfNull = StringUtils.emptyIfNull(this.f8543a.x0().e());
        if (!((Boolean) this.f8543a.a(v4.E3)).booleanValue()) {
            emptyIfNull = "";
        }
        hashMap.put("{CUID}", emptyIfNull);
        a("mclose", hashMap, v2Var);
        this.f8543a.P().a(c2.f7639e0, v2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(v2 v2Var, a.InterfaceC0113a interfaceC0113a) {
        this.f8543a.u().b(v2Var, "DID_CLICKED");
        this.f8543a.u().b(v2Var, "DID_CLICK");
        this.f8543a.p().maybeSendAdEvent(v2Var, "DID_CLICK");
        if (v2Var.N().endsWith("click")) {
            this.f8543a.u().b(v2Var);
            q2.a((MaxAdRevenueListener) interfaceC0113a, (MaxAd) v2Var);
        }
        HashMap hashMap = new HashMap(1);
        String emptyIfNull = StringUtils.emptyIfNull(this.f8543a.x0().e());
        if (!((Boolean) this.f8543a.a(v4.E3)).booleanValue()) {
            emptyIfNull = "";
        }
        hashMap.put("{CUID}", emptyIfNull);
        a("mclick", hashMap, v2Var);
    }

    private void a(MaxError maxError, v2 v2Var, boolean z10) {
        HashMap hashMap = new HashMap(1);
        if (v2Var instanceof z2) {
            hashMap.put("{PREVIOUS_FAILED_NETWORK_NAME}", StringUtils.emptyIfNull(((z2) v2Var).o0()));
        }
        a("mierr", hashMap, maxError, v2Var, z10);
        if (!z10 || v2Var == null) {
            return;
        }
        this.f8543a.P().a(c2.f7637d0, v2Var, maxError);
    }

    private void a(a5 a5Var, b5 b5Var, h hVar) {
        long b10 = a5Var.b();
        HashMap hashMap = new HashMap(3);
        hashMap.put("{LOAD_TIME_MS}", String.valueOf(b10));
        CollectionUtils.putStringIfValid("{ADAPTER_VERSION}", hVar.b(), hashMap);
        CollectionUtils.putStringIfValid("{SDK_VERSION}", hVar.i(), hashMap);
        a("serr", hashMap, a5Var.c(), b5Var);
        Map a10 = e2.a(a5Var.c());
        CollectionUtils.putStringIfValid("network_name", b5Var.c(), a10);
        CollectionUtils.putStringIfValid("adapter_class", b5Var.b(), a10);
        CollectionUtils.putStringIfValid("adapter_version", hVar.b(), a10);
        CollectionUtils.putStringIfValid("duration_ms", String.valueOf(b10), a10);
        this.f8543a.P().d(c2.S, a10);
    }

    private void a(String str, Map map, h3 h3Var) {
        a(str, map, (MaxError) null, h3Var);
    }

    private void a(String str, Map map, MaxError maxError, h3 h3Var) {
        a(str, map, maxError, h3Var, true);
    }

    private void a(String str, Map map, MaxError maxError, h3 h3Var, boolean z10) {
        String str2;
        Map map2 = CollectionUtils.map(map);
        String str3 = "";
        map2.put("{PLACEMENT}", z10 ? StringUtils.emptyIfNull(h3Var.getPlacement()) : "");
        if (!z10) {
            str2 = "";
        } else {
            str2 = StringUtils.emptyIfNull(h3Var.e());
        }
        map2.put("{CUSTOM_DATA}", str2);
        if (h3Var instanceof v2) {
            v2 v2Var = (v2) h3Var;
            if (z10) {
                str3 = StringUtils.emptyIfNull(v2Var.getCreativeId());
            }
            map2.put("{CREATIVE_ID}", str3);
        }
        a(str, null, map2, null, maxError, h3Var, z10);
    }

    private void a(String str, List list, Map map, Map map2, MaxError maxError, h3 h3Var, boolean z10) {
        this.f8543a.r0().a((g5) new z5(str, list, map, map2, maxError, h3Var, this.f8543a, z10), b6.b.OTHER);
    }

    private boolean a(long j10) {
        return System.currentTimeMillis() - j10 <= ((Long) this.f8543a.a(v4.C2)).longValue();
    }
}
