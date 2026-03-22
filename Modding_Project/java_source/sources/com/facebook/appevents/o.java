package com.facebook.appevents;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.adjust.sdk.Constants;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.gps.ara.GpsAraTriggersManager;
import com.facebook.appevents.o;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.e0;
import com.facebook.internal.u0;
import com.facebook.internal.v0;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.HashSet;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AppEventsLoggerImpl.kt */
@Metadata
/* loaded from: classes3.dex */
public final class o {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f15175c = new a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final String f15176d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static ScheduledThreadPoolExecutor f15177e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static AppEventsLogger.FlushBehavior f15178f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final Object f15179g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static String f15180h;

    /* renamed from: i  reason: collision with root package name */
    private static boolean f15181i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static String f15182j;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f15183a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private AccessTokenAppIdPair f15184b;

    /* compiled from: AppEventsLoggerImpl.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAppEventsLoggerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppEventsLoggerImpl.kt\ncom/facebook/appevents/AppEventsLoggerImpl$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,861:1\n1#2:862\n37#3,2:863\n*S KotlinDebug\n*F\n+ 1 AppEventsLoggerImpl.kt\ncom/facebook/appevents/AppEventsLoggerImpl$Companion\n*L\n707#1:863,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class a {

        /* compiled from: AppEventsLoggerImpl.kt */
        @Metadata
        /* renamed from: com.facebook.appevents.o$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0255a implements e0.a {
            C0255a() {
            }

            @Override // com.facebook.internal.e0.a
            public void a(@Nullable String str) {
                o.f15175c.u(str);
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void o(Context context, o logger) {
            Intrinsics.checkNotNullParameter(context, "$context");
            Intrinsics.checkNotNullParameter(logger, "$logger");
            Bundle bundle = new Bundle();
            String[] strArr = {"com.facebook.core.Core", "com.facebook.login.Login", "com.facebook.share.Share", "com.facebook.places.Places", "com.facebook.messenger.Messenger", "com.facebook.applinks.AppLinks", "com.facebook.marketing.Marketing", "com.facebook.gamingservices.GamingServices", "com.facebook.all.All", "com.android.billingclient.api.BillingClient", "com.android.vending.billing.IInAppBillingService"};
            String[] strArr2 = {"core_lib_included", "login_lib_included", "share_lib_included", "places_lib_included", "messenger_lib_included", "applinks_lib_included", "marketing_lib_included", "gamingservices_lib_included", "all_lib_included", "billing_client_lib_included", "billing_service_lib_included"};
            int i10 = 0;
            for (int i11 = 0; i11 < 11; i11++) {
                String str = strArr[i11];
                String str2 = strArr2[i11];
                try {
                    Class.forName(str);
                    bundle.putInt(str2, 1);
                    i10 |= 1 << i11;
                } catch (ClassNotFoundException unused) {
                }
            }
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
            if (sharedPreferences.getInt("kitsBitmask", 0) != i10) {
                sharedPreferences.edit().putInt("kitsBitmask", i10).apply();
                logger.p("fb_sdk_initialize", null, bundle);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void p() {
            synchronized (o.e()) {
                if (o.b() != null) {
                    return;
                }
                o.i(new ScheduledThreadPoolExecutor(1));
                Unit unit = Unit.f60915a;
                Runnable runnable = new Runnable() { // from class: com.facebook.appevents.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        o.a.q();
                    }
                };
                ScheduledThreadPoolExecutor b10 = o.b();
                if (b10 != null) {
                    b10.scheduleAtFixedRate(runnable, 0L, 86400L, TimeUnit.SECONDS);
                    return;
                }
                throw new IllegalStateException("Required value was null.");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void q() {
            HashSet<String> hashSet = new HashSet();
            for (AccessTokenAppIdPair accessTokenAppIdPair : k.p()) {
                hashSet.add(accessTokenAppIdPair.d());
            }
            for (String str : hashSet) {
                FetchedAppSettingsManager.u(str, true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void r(AppEvent appEvent, AccessTokenAppIdPair accessTokenAppIdPair) {
            k.g(accessTokenAppIdPair, appEvent);
            if (FeatureManager.g(FeatureManager.Feature.OnDevicePostInstallEventProcessing) && com.facebook.appevents.ondeviceprocessing.a.d()) {
                com.facebook.appevents.ondeviceprocessing.a.e(accessTokenAppIdPair.d(), appEvent);
            }
            if (FeatureManager.g(FeatureManager.Feature.GPSARATriggers)) {
                GpsAraTriggersManager.f15002a.i(accessTokenAppIdPair.d(), appEvent);
            }
            if (FeatureManager.g(FeatureManager.Feature.GPSPACAProcessing)) {
                x1.e.f70386a.d(accessTokenAppIdPair.d(), appEvent);
            }
            if (!appEvent.d() && !o.f()) {
                if (Intrinsics.areEqual(appEvent.h(), "fb_mobile_activate_app")) {
                    o.g(true);
                } else {
                    com.facebook.internal.i0.f16209e.b(LoggingBehavior.APP_EVENTS, "AppEvents", "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity's onResume() methodbefore logging other app events.");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void s(String str) {
            com.facebook.internal.i0.f16209e.b(LoggingBehavior.DEVELOPER_ERRORS, "AppEvents", str);
        }

        public final void f(@NotNull Application application, @Nullable String str) {
            Intrinsics.checkNotNullParameter(application, "application");
            if (com.facebook.v.G()) {
                b.d();
                l0.e();
                if (str == null) {
                    str = com.facebook.v.m();
                }
                com.facebook.v.L(application, str);
                a2.g.z(application, str);
                if (FeatureManager.g(FeatureManager.Feature.GPSPACAProcessing)) {
                    x1.e.f70386a.e(str, "fb_mobile_app_install");
                }
                if (FeatureManager.g(FeatureManager.Feature.GPSARATriggers)) {
                    GpsAraTriggersManager.f15002a.i(str, new AppEvent("unknown", "MOBILE_INSTALL_EVENT", null, null, false, a2.g.p(), a2.g.n(), null));
                    return;
                }
                return;
            }
            throw new FacebookException("The Facebook sdk must be initialized before calling activateApp");
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x007b  */
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final kotlin.Pair<android.os.Bundle, com.facebook.appevents.i0> g(@org.jetbrains.annotations.Nullable android.os.Bundle r17, @org.jetbrains.annotations.Nullable com.facebook.appevents.i0 r18, boolean r19) {
            /*
                r16 = this;
                r6 = r17
                boolean r0 = a2.i.g()
                java.lang.String r7 = "0"
                java.lang.String r8 = "1"
                if (r0 == 0) goto Le
                r3 = r8
                goto Lf
            Le:
                r3 = r7
            Lf:
                com.facebook.appevents.i0$a r15 = com.facebook.appevents.i0.f15019b
                com.facebook.appevents.OperationalDataEnum r14 = com.facebook.appevents.OperationalDataEnum.IAPParameters
                java.lang.String r2 = "is_implicit_purchase_logging_enabled"
                r0 = r15
                r1 = r14
                r4 = r17
                r5 = r18
                kotlin.Pair r0 = r0.b(r1, r2, r3, r4, r5)
                java.lang.String r1 = "fb_iap_product_id"
                java.lang.Object r1 = r15.c(r14, r1, r6, r5)
                boolean r2 = r1 instanceof java.lang.String
                r3 = 0
                if (r2 == 0) goto L2e
                java.lang.String r1 = (java.lang.String) r1
                r4 = r1
                goto L2f
            L2e:
                r4 = r3
            L2f:
                if (r19 != 0) goto L64
                if (r6 == 0) goto L39
                java.lang.String r1 = "fb_content_id"
                java.lang.String r3 = r6.getString(r1)
            L39:
                if (r3 != 0) goto L64
                if (r4 == 0) goto L64
                java.lang.String r2 = "fb_content_id"
                r0 = r15
                r1 = r14
                r3 = r4
                r4 = r17
                r5 = r18
                kotlin.Pair r0 = r0.b(r1, r2, r3, r4, r5)
                java.lang.Object r1 = r0.e()
                r13 = r1
                android.os.Bundle r13 = (android.os.Bundle) r13
                java.lang.Object r0 = r0.f()
                com.facebook.appevents.i0 r0 = (com.facebook.appevents.i0) r0
                java.lang.String r11 = "android_dynamic_ads_content_id"
                java.lang.String r12 = "client_manual"
                r9 = r15
                r10 = r14
                r1 = r14
                r14 = r0
                kotlin.Pair r0 = r9.b(r10, r11, r12, r13, r14)
                goto L65
            L64:
                r1 = r14
            L65:
                java.lang.Object r2 = r0.e()
                r13 = r2
                android.os.Bundle r13 = (android.os.Bundle) r13
                java.lang.Object r0 = r0.f()
                r14 = r0
                com.facebook.appevents.i0 r14 = (com.facebook.appevents.i0) r14
                boolean r0 = com.facebook.n0.f()
                if (r0 == 0) goto L7b
                r12 = r8
                goto L7c
            L7b:
                r12 = r7
            L7c:
                java.lang.String r11 = "is_autolog_app_events_enabled"
                r9 = r15
                r10 = r1
                kotlin.Pair r0 = r9.b(r10, r11, r12, r13, r14)
                java.lang.Object r1 = r0.e()
                android.os.Bundle r1 = (android.os.Bundle) r1
                java.lang.Object r0 = r0.f()
                com.facebook.appevents.i0 r0 = (com.facebook.appevents.i0) r0
                kotlin.Pair r2 = new kotlin.Pair
                r2.<init>(r1, r0)
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.o.a.g(android.os.Bundle, com.facebook.appevents.i0, boolean):kotlin.Pair");
        }

        public final void h() {
            if (k() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY) {
                k.l(FlushReason.EAGER_FLUSHING_EVENT);
            }
        }

        @NotNull
        public final Executor i() {
            if (o.b() == null) {
                p();
            }
            ScheduledThreadPoolExecutor b10 = o.b();
            if (b10 != null) {
                return b10;
            }
            throw new IllegalStateException("Required value was null.");
        }

        @NotNull
        public final String j(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (o.a() == null) {
                synchronized (o.e()) {
                    try {
                        if (o.a() == null) {
                            o.h(context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("anonymousAppDeviceGUID", null));
                            if (o.a() == null) {
                                o.h("XZ" + UUID.randomUUID());
                                context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putString("anonymousAppDeviceGUID", o.a()).apply();
                            }
                        }
                        Unit unit = Unit.f60915a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            String a10 = o.a();
            if (a10 != null) {
                return a10;
            }
            throw new IllegalStateException("Required value was null.");
        }

        @NotNull
        public final AppEventsLogger.FlushBehavior k() {
            AppEventsLogger.FlushBehavior c10;
            synchronized (o.e()) {
                c10 = o.c();
            }
            return c10;
        }

        @Nullable
        public final String l() {
            com.facebook.internal.e0.d(new C0255a());
            return com.facebook.v.l().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString(Constants.INSTALL_REFERRER, null);
        }

        @Nullable
        public final String m() {
            String d10;
            synchronized (o.e()) {
                d10 = o.d();
            }
            return d10;
        }

        public final void n(@NotNull final Context context, @Nullable String str) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (!com.facebook.v.p()) {
                return;
            }
            final o oVar = new o(context, str, (AccessToken) null);
            ScheduledThreadPoolExecutor b10 = o.b();
            if (b10 != null) {
                b10.execute(new Runnable() { // from class: com.facebook.appevents.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        o.a.o(context, oVar);
                    }
                });
                return;
            }
            throw new IllegalStateException("Required value was null.");
        }

        public final void t() {
            k.s();
        }

        public final void u(@Nullable String str) {
            SharedPreferences sharedPreferences = com.facebook.v.l().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
            if (str != null) {
                sharedPreferences.edit().putString(Constants.INSTALL_REFERRER, str).apply();
            }
        }

        private a() {
        }
    }

    static {
        String canonicalName = o.class.getCanonicalName();
        if (canonicalName == null) {
            canonicalName = "com.facebook.appevents.AppEventsLoggerImpl";
        }
        f15176d = canonicalName;
        f15178f = AppEventsLogger.FlushBehavior.AUTO;
        f15179g = new Object();
    }

    public o(@NotNull String activityName, @Nullable String str, @Nullable AccessToken accessToken) {
        Intrinsics.checkNotNullParameter(activityName, "activityName");
        v0.l();
        this.f15183a = activityName;
        accessToken = accessToken == null ? AccessToken.f14731l.e() : accessToken;
        if (accessToken != null && !accessToken.o() && (str == null || Intrinsics.areEqual(str, accessToken.c()))) {
            this.f15184b = new AccessTokenAppIdPair(accessToken);
        } else {
            str = str == null ? u0.K(com.facebook.v.l()) : str;
            if (str != null) {
                this.f15184b = new AccessTokenAppIdPair(null, str);
            } else {
                throw new IllegalStateException("Required value was null.");
            }
        }
        f15175c.p();
    }

    public static final /* synthetic */ String a() {
        if (o4.a.d(o.class)) {
            return null;
        }
        try {
            return f15180h;
        } catch (Throwable th2) {
            o4.a.b(th2, o.class);
            return null;
        }
    }

    public static final /* synthetic */ ScheduledThreadPoolExecutor b() {
        if (o4.a.d(o.class)) {
            return null;
        }
        try {
            return f15177e;
        } catch (Throwable th2) {
            o4.a.b(th2, o.class);
            return null;
        }
    }

    public static final /* synthetic */ AppEventsLogger.FlushBehavior c() {
        if (o4.a.d(o.class)) {
            return null;
        }
        try {
            return f15178f;
        } catch (Throwable th2) {
            o4.a.b(th2, o.class);
            return null;
        }
    }

    public static final /* synthetic */ String d() {
        if (o4.a.d(o.class)) {
            return null;
        }
        try {
            return f15182j;
        } catch (Throwable th2) {
            o4.a.b(th2, o.class);
            return null;
        }
    }

    public static final /* synthetic */ Object e() {
        if (o4.a.d(o.class)) {
            return null;
        }
        try {
            return f15179g;
        } catch (Throwable th2) {
            o4.a.b(th2, o.class);
            return null;
        }
    }

    public static final /* synthetic */ boolean f() {
        if (o4.a.d(o.class)) {
            return false;
        }
        try {
            return f15181i;
        } catch (Throwable th2) {
            o4.a.b(th2, o.class);
            return false;
        }
    }

    public static final /* synthetic */ void g(boolean z10) {
        if (o4.a.d(o.class)) {
            return;
        }
        try {
            f15181i = z10;
        } catch (Throwable th2) {
            o4.a.b(th2, o.class);
        }
    }

    public static final /* synthetic */ void h(String str) {
        if (o4.a.d(o.class)) {
            return;
        }
        try {
            f15180h = str;
        } catch (Throwable th2) {
            o4.a.b(th2, o.class);
        }
    }

    public static final /* synthetic */ void i(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        if (o4.a.d(o.class)) {
            return;
        }
        try {
            f15177e = scheduledThreadPoolExecutor;
        } catch (Throwable th2) {
            o4.a.b(th2, o.class);
        }
    }

    public static /* synthetic */ void n(o oVar, String str, Double d10, Bundle bundle, boolean z10, UUID uuid, i0 i0Var, int i10, Object obj) {
        if (o4.a.d(o.class)) {
            return;
        }
        if ((i10 & 32) != 0) {
            i0Var = null;
        }
        try {
            oVar.m(str, d10, bundle, z10, uuid, i0Var);
        } catch (Throwable th2) {
            o4.a.b(th2, o.class);
        }
    }

    public final void j() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            k.l(FlushReason.EXPLICIT);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void k(@Nullable String str, double d10, @Nullable Bundle bundle) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            n(this, str, Double.valueOf(d10), bundle, false, a2.g.n(), null, 32, null);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void l(@Nullable String str, @Nullable Bundle bundle) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            n(this, str, null, bundle, false, a2.g.n(), null, 32, null);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00ba A[Catch: all -> 0x003f, TRY_ENTER, TryCatch #2 {all -> 0x003f, blocks: (B:6:0x0014, B:11:0x001f, B:13:0x0025, B:16:0x002f, B:18:0x0035, B:24:0x0042, B:26:0x0051, B:34:0x006b, B:37:0x007b, B:38:0x00ac, B:41:0x00ba, B:43:0x00c8, B:46:0x00cf, B:47:0x00e3, B:49:0x00eb, B:54:0x00f3, B:56:0x011b, B:57:0x012d, B:28:0x0057, B:30:0x005f, B:32:0x0065), top: B:61:0x0014, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c8 A[Catch: all -> 0x003f, TryCatch #2 {all -> 0x003f, blocks: (B:6:0x0014, B:11:0x001f, B:13:0x0025, B:16:0x002f, B:18:0x0035, B:24:0x0042, B:26:0x0051, B:34:0x006b, B:37:0x007b, B:38:0x00ac, B:41:0x00ba, B:43:0x00c8, B:46:0x00cf, B:47:0x00e3, B:49:0x00eb, B:54:0x00f3, B:56:0x011b, B:57:0x012d, B:28:0x0057, B:30:0x005f, B:32:0x0065), top: B:61:0x0014, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m(@org.jetbrains.annotations.Nullable java.lang.String r16, @org.jetbrains.annotations.Nullable java.lang.Double r17, @org.jetbrains.annotations.Nullable android.os.Bundle r18, boolean r19, @org.jetbrains.annotations.Nullable java.util.UUID r20, @org.jetbrains.annotations.Nullable com.facebook.appevents.i0 r21) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.o.m(java.lang.String, java.lang.Double, android.os.Bundle, boolean, java.util.UUID, com.facebook.appevents.i0):void");
    }

    public final void o(@Nullable String str, @Nullable String str2) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("_is_suggested_event", "1");
            bundle.putString("_button_text", str2);
            l(str, bundle);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void p(@Nullable String str, @Nullable Double d10, @Nullable Bundle bundle) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            n(this, str, d10, bundle, true, a2.g.n(), null, 32, null);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void q(@Nullable String str, @Nullable BigDecimal bigDecimal, @Nullable Currency currency, @Nullable Bundle bundle, @Nullable i0 i0Var) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (bigDecimal != null && currency != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                Bundle bundle2 = bundle;
                bundle2.putString("fb_currency", currency.getCurrencyCode());
                m(str, Double.valueOf(bigDecimal.doubleValue()), bundle2, true, a2.g.n(), i0Var);
                return;
            }
            u0.k0(f15176d, "purchaseAmount and currency cannot be null");
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void r(@Nullable BigDecimal bigDecimal, @Nullable Currency currency, @Nullable Bundle bundle, boolean z10, @Nullable i0 i0Var) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (bigDecimal == null) {
                f15175c.s("purchaseAmount cannot be null");
            } else if (currency == null) {
                f15175c.s("currency cannot be null");
            } else {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                Bundle bundle2 = bundle;
                bundle2.putString("fb_currency", currency.getCurrencyCode());
                m("fb_mobile_purchase", Double.valueOf(bigDecimal.doubleValue()), bundle2, z10, a2.g.n(), i0Var);
                f15175c.h();
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void s(@Nullable BigDecimal bigDecimal, @Nullable Currency currency, @Nullable Bundle bundle, @Nullable i0 i0Var) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            r(bigDecimal, currency, bundle, true, i0Var);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public o(@Nullable Context context, @Nullable String str, @Nullable AccessToken accessToken) {
        this(u0.u(context), str, accessToken);
    }
}
