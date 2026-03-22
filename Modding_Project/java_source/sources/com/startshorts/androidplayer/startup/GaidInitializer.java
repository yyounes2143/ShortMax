package com.startshorts.androidplayer.startup;

import android.content.Context;
import android.os.Bundle;
import androidx.startup.Initializer;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.api.limit.ApiLimitManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.push.PushManager;
import com.startshorts.androidplayer.manager.update.UpdateManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.repo.config.ConfigRepo;
import com.startshorts.androidplayer.repo.config.RemoteConfigRepo;
import com.startshorts.androidplayer.repo.push.PushRepo;
import com.startshorts.androidplayer.startup.GaidInitializer;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.ext.CompletableDeferredExtKt;
import gt.p;
import gt.r;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ud.a;
import ud.b;
/* compiled from: GaidInitializer.kt */
@Metadata
/* loaded from: classes7.dex */
public final class GaidInitializer extends BaseInitializer<Object> {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final Companion f44850f = new Companion(null);
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final p<String> f44851g = r.b(null, 1, null);

    /* renamed from: b  reason: collision with root package name */
    private boolean f44852b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private kotlinx.coroutines.r f44853c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final i f44854d = c.b(new Function0() { // from class: oh.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List q10;
            q10 = GaidInitializer.q();
            return q10;
        }
    });

    /* renamed from: e  reason: collision with root package name */
    private boolean f44855e;

    /* compiled from: GaidInitializer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object a(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<kotlin.Pair<java.lang.Long, java.lang.String>>> r7) {
            /*
                r6 = this;
                boolean r0 = r7 instanceof com.startshorts.androidplayer.startup.GaidInitializer$Companion$awaitGaid$1
                if (r0 == 0) goto L13
                r0 = r7
                com.startshorts.androidplayer.startup.GaidInitializer$Companion$awaitGaid$1 r0 = (com.startshorts.androidplayer.startup.GaidInitializer$Companion$awaitGaid$1) r0
                int r1 = r0.f44858j
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f44858j = r1
                goto L18
            L13:
                com.startshorts.androidplayer.startup.GaidInitializer$Companion$awaitGaid$1 r0 = new com.startshorts.androidplayer.startup.GaidInitializer$Companion$awaitGaid$1
                r0.<init>(r6, r7)
            L18:
                java.lang.Object r7 = r0.f44856h
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.f44858j
                r3 = 1
                if (r2 == 0) goto L37
                if (r2 != r3) goto L2f
                kotlin.f.b(r7)
                kotlin.Result r7 = (kotlin.Result) r7
                java.lang.Object r7 = r7.n()
                goto L6d
            L2f:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L37:
                kotlin.f.b(r7)
                ud.b r7 = ud.b.f68412a
                java.lang.String r7 = r7.E0()
                if (r7 == 0) goto L5a
                int r2 = r7.length()
                if (r2 != 0) goto L49
                goto L5a
            L49:
                kotlin.Result$a r0 = kotlin.Result.f60901b
                r0 = 0
                java.lang.Long r0 = kotlin.coroutines.jvm.internal.a.e(r0)
                kotlin.Pair r7 = ms.k.a(r0, r7)
                java.lang.Object r7 = kotlin.Result.d(r7)
                return r7
            L5a:
                gt.p r7 = com.startshorts.androidplayer.startup.GaidInitializer.k()
                r4 = 4000(0xfa0, double:1.9763E-320)
                java.lang.Long r2 = kotlin.coroutines.jvm.internal.a.e(r4)
                r0.f44858j = r3
                java.lang.Object r7 = com.startshorts.androidplayer.utils.ext.CompletableDeferredExtKt.b(r7, r2, r0)
                if (r7 != r1) goto L6d
                return r1
            L6d:
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.startup.GaidInitializer.Companion.a(rs.c):java.lang.Object");
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m() {
        kotlinx.coroutines.r rVar = this.f44853c;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.f44853c = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n() {
        PushManager.f(PushManager.f42838a, false, 1, null);
        if (!a.f68411a.t()) {
            PushRepo.f44374a.w();
        }
        ConfigRepo.f43771a.C();
        RemoteConfigRepo remoteConfigRepo = RemoteConfigRepo.f43788a;
        remoteConfigRepo.i("doAfterQueryGaid");
        UpdateManager.f42992a.h();
        AccountRepo accountRepo = AccountRepo.f43052a;
        accountRepo.e1();
        if (accountRepo.w0()) {
            PurchaseRepo.f43366a.u();
            if (remoteConfigRepo.s()) {
                PushRepo.f44374a.C();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(Context context) {
        String str;
        try {
            try {
                fk.p d10 = new fk.p().d();
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
                Intrinsics.checkNotNullExpressionValue(advertisingIdInfo, "getAdvertisingIdInfo(...)");
                String id2 = advertisingIdInfo.getId();
                boolean isLimitAdTrackingEnabled = advertisingIdInfo.isLimitAdTrackingEnabled();
                d("getAdvertisingIdInfo -> gaid(" + id2 + ") isLimitedAdTracking(" + isLimitAdTrackingEnabled + ") costTime(" + d10.b() + "ms)");
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                if (isLimitAdTrackingEnabled) {
                    str = "1";
                } else {
                    str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                }
                bundle.putString("limit_ad_tracking", str);
                bundle.putString(HiAnalyticsConstant.BI_KEY_COST_TIME, String.valueOf(d10.a()));
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "query_gaid", bundle, 0L, 4, null);
                if (id2 != null && id2.length() != 0) {
                    a.f68411a.o0(id2);
                    b.f68412a.Q3(id2);
                    Logger.f41511a.h("DeviceUtil", "getGaid getDeviceId()");
                    DeviceUtil.f48146a.n();
                }
            } catch (Exception e10) {
                b("getGaid exception -> " + e10.getMessage());
                Logger.f41511a.h("DeviceUtil", "getGaid exception getDeviceId()");
                DeviceUtil.f48146a.n();
            }
        } finally {
            CompletableDeferredExtKt.d(f44851g, b.f68412a.E0());
        }
    }

    private final List<String> p() {
        return (List) this.f44854d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List q() {
        return CollectionsKt.t("SM-G975U", "SM-A146P", "SM-A226B", "22041211AC");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s(GaidInitializer gaidInitializer) {
        gaidInitializer.f44852b = true;
        EventManager.s0(EventManager.f42463a, "query_gaid_timeout", null, 0L, 6, null);
        gaidInitializer.n();
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.startup.BaseInitializer
    @NotNull
    public String c() {
        return "GaidInitializer";
    }

    @Override // androidx.startup.Initializer
    @NotNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return CollectionsKt.t(DbInitializer.class);
    }

    @Override // com.startshorts.androidplayer.startup.BaseInitializer
    @NotNull
    public Object e(@NotNull Context context, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (!z10 && ApiLimitManager.f41827a.h()) {
            b("GaidInitializer init failed -> ApiLimitManager.isLimited");
            String E0 = b.f68412a.E0();
            if (E0 != null && E0.length() != 0) {
                d("gaid -> " + E0);
                a.f68411a.o0(E0);
                Logger.f41511a.h("DeviceUtil", "Gaid init getDeviceId()");
                DeviceUtil.f48146a.n();
            }
            return this;
        } else if (this.f44855e) {
            b("GaidInitializer init failed -> mInitialized is true");
            return this;
        } else {
            this.f44855e = true;
            String E02 = b.f68412a.E0();
            if (E02 != null && E02.length() != 0) {
                d("gaid -> " + E02);
                a.f68411a.o0(E02);
                Logger logger = Logger.f41511a;
                logger.h("DeviceUtil", "gaid.isNullOrEmpty() getDeviceId(), " + E02);
                DeviceUtil.f48146a.n();
                n();
            } else {
                String C = DeviceUtil.f48146a.C();
                if (p().contains(C)) {
                    if (Intrinsics.areEqual(C, "SM-G975U")) {
                        List t10 = CollectionsKt.t("cn", "hk");
                        String lowerCase = AccountRepo.f43052a.i0().toLowerCase(Locale.ROOT);
                        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                        if (t10.contains(lowerCase)) {
                            this.f44852b = true;
                            n();
                        }
                    } else {
                        this.f44852b = true;
                        n();
                    }
                }
                CoroutineUtil.l(CoroutineUtil.f48072a, "getGaid", false, new GaidInitializer$init$1(this, context, null), 2, null);
            }
            return this;
        }
    }

    public final void r() {
        if (a.f68411a.m().length() > 0 || p().contains(DeviceUtil.f48146a.C())) {
            return;
        }
        m();
        this.f44853c = CoroutineUtil.g(CoroutineUtil.f48072a, 4000L, null, new Function0() { // from class: oh.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit s10;
                s10 = GaidInitializer.s(GaidInitializer.this);
                return s10;
            }
        }, 2, null);
    }
}
