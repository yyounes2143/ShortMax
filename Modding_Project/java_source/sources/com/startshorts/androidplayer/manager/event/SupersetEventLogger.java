package com.startshorts.androidplayer.manager.event;

import af.h;
import android.os.Bundle;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadService;
import com.startshorts.androidplayer.bean.event.EventInfo;
import com.startshorts.androidplayer.db.model.DbEvent;
import com.startshorts.androidplayer.db.repository.EventRepository;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.SupersetEventLogger;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.event.EventRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import fk.q;
import gt.g0;
import gt.q0;
import gt.r1;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import jk.l;
import jk.v;
import jt.d;
import jt.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import ms.k;
import ng.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SupersetEventLogger.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSupersetEventLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SupersetEventLogger.kt\ncom/startshorts/androidplayer/manager/event/SupersetEventLogger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,407:1\n1628#2,3:408\n1557#2:411\n1628#2,3:412\n1557#2:419\n1628#2,3:420\n1557#2:423\n1628#2,3:424\n37#3:415\n36#3,3:416\n*S KotlinDebug\n*F\n+ 1 SupersetEventLogger.kt\ncom/startshorts/androidplayer/manager/event/SupersetEventLogger\n*L\n212#1:408,3\n311#1:411\n311#1:412,3\n322#1:419\n322#1:420,3\n334#1:423\n334#1:424,3\n320#1:415\n320#1:416,3\n*E\n"})
/* loaded from: classes6.dex */
public final class SupersetEventLogger implements h {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final a f42501i = new a(null);
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private static final i<Map<String, String[]>> f42502j = c.b(new Function0() { // from class: af.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Map g10;
            g10 = SupersetEventLogger.g();
            return g10;
        }
    });
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f42503a;

    /* renamed from: b  reason: collision with root package name */
    private long f42504b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final AtomicInteger f42505c = new AtomicInteger(0);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final d<b> f42506d = g.b(Integer.MAX_VALUE, null, null, 6, null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final g0 f42507e = kotlinx.coroutines.i.a(q0.b().plus(r1.b(null, 1, null)));

    /* renamed from: f  reason: collision with root package name */
    private volatile int f42508f = 50;

    /* renamed from: g  reason: collision with root package name */
    private volatile long f42509g = 10000;

    /* renamed from: h  reason: collision with root package name */
    private volatile long f42510h = 5000;

    /* compiled from: SupersetEventLogger.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Map<String, String[]> b() {
            return (Map) SupersetEventLogger.f42502j.getValue();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SupersetEventLogger.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static abstract class b {

        /* compiled from: SupersetEventLogger.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a extends b {

            /* renamed from: a  reason: collision with root package name */
            private final boolean f42511a;
            @NotNull

            /* renamed from: b  reason: collision with root package name */
            private final String f42512b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(boolean z10, @NotNull String reason) {
                super(null);
                Intrinsics.checkNotNullParameter(reason, "reason");
                this.f42511a = z10;
                this.f42512b = reason;
            }

            public final boolean a() {
                return this.f42511a;
            }

            @NotNull
            public final String b() {
                return this.f42512b;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof a)) {
                    return false;
                }
                a aVar = (a) obj;
                if (this.f42511a == aVar.f42511a && Intrinsics.areEqual(this.f42512b, aVar.f42512b)) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return (Boolean.hashCode(this.f42511a) * 31) + this.f42512b.hashCode();
            }

            @NotNull
            public String toString() {
                return "Batch(force=" + this.f42511a + ", reason=" + this.f42512b + ')';
            }
        }

        /* compiled from: SupersetEventLogger.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.manager.event.SupersetEventLogger$b$b  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0623b extends b {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            private final List<String> f42513a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0623b(@NotNull List<String> groupNames) {
                super(null);
                Intrinsics.checkNotNullParameter(groupNames, "groupNames");
                this.f42513a = groupNames;
            }

            @NotNull
            public final List<String> a() {
                return this.f42513a;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if ((obj instanceof C0623b) && Intrinsics.areEqual(this.f42513a, ((C0623b) obj).f42513a)) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return this.f42513a.hashCode();
            }

            @NotNull
            public String toString() {
                return "SpecificGroups(groupNames=" + this.f42513a + ')';
            }
        }

        /* compiled from: SupersetEventLogger.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class c extends b {

            /* renamed from: a  reason: collision with root package name */
            private final int f42514a;
            @Nullable

            /* renamed from: b  reason: collision with root package name */
            private final Function1<Integer, Unit> f42515b;
            @Nullable

            /* renamed from: c  reason: collision with root package name */
            private final Function0<Unit> f42516c;

            /* JADX WARN: Multi-variable type inference failed */
            public c(int i10, @Nullable Function1<? super Integer, Unit> function1, @Nullable Function0<Unit> function0) {
                super(null);
                this.f42514a = i10;
                this.f42515b = function1;
                this.f42516c = function0;
            }

            @Nullable
            public final Function0<Unit> a() {
                return this.f42516c;
            }

            @Nullable
            public final Function1<Integer, Unit> b() {
                return this.f42515b;
            }

            public final int c() {
                return this.f42514a;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof c)) {
                    return false;
                }
                c cVar = (c) obj;
                if (this.f42514a == cVar.f42514a && Intrinsics.areEqual(this.f42515b, cVar.f42515b) && Intrinsics.areEqual(this.f42516c, cVar.f42516c)) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                int hashCode;
                int hashCode2 = Integer.hashCode(this.f42514a) * 31;
                Function1<Integer, Unit> function1 = this.f42515b;
                int i10 = 0;
                if (function1 == null) {
                    hashCode = 0;
                } else {
                    hashCode = function1.hashCode();
                }
                int i11 = (hashCode2 + hashCode) * 31;
                Function0<Unit> function0 = this.f42516c;
                if (function0 != null) {
                    i10 = function0.hashCode();
                }
                return i11 + i10;
            }

            @NotNull
            public String toString() {
                return "TestUpload(size=" + this.f42514a + ", onSuccess=" + this.f42515b + ", onFail=" + this.f42516c + ')';
            }
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public SupersetEventLogger() {
        v();
        A();
        z();
    }

    private final void A() {
        gt.g.d(this.f42507e, null, null, new SupersetEventLogger$startUploadConsumer$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map g() {
        af.d dVar = af.d.f628a;
        return p0.m(k.a("watch_ad_click", dVar.b()), k.a("ad_real_impressions", dVar.b()), k.a("ad_impressions", dVar.b()), k.a("ad_impressions_duration", dVar.b()), k.a("push_send", dVar.f()), k.a("push_open", dVar.f()), k.a("app_active_background", dVar.a()), k.a("active_user", dVar.a()), k.a("app_launch", dVar.a()), k.a("app_start", dVar.a()), k.a("order_create_fail", dVar.e()), k.a("order_create_cancel", dVar.e()), k.a("exchange_coins_success", dVar.e()), k.a("exchange_coins_failed", dVar.e()), k.a("exchange_premium_success", dVar.e()), k.a("exchange_premium_failed", dVar.e()), k.a("restore_result", dVar.e()), k.a("recharge_show", dVar.e()), k.a("episode_unlock_ad_success", dVar.g()), k.a("episode_unlock_success", dVar.g()), k.a("enter_reel_play", dVar.d()), k.a("reel_cut", dVar.d()));
    }

    private final void o(String str, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        switch (str.hashCode()) {
            case -1767535344:
                if (!str.equals("order_create_fail")) {
                    return;
                }
                break;
            case -1493858317:
                if (!str.equals("unlocked_ep_button_click")) {
                    return;
                }
                break;
            case -1220896687:
                if (!str.equals("unlocked_page_show")) {
                    return;
                }
                break;
            case -444633236:
                if (!str.equals("pay_success")) {
                    return;
                }
                break;
            case 581559053:
                if (!str.equals("order_create")) {
                    return;
                }
                break;
            case 756378958:
                if (!str.equals("order_show")) {
                    return;
                }
                break;
            case 1931217713:
                if (!str.equals("recharge_show_end")) {
                    return;
                }
                break;
            case 2086020501:
                if (!str.equals("recharge_show")) {
                    return;
                }
                break;
            case 2119839724:
                if (!str.equals("order_create_cancel")) {
                    return;
                }
                break;
            default:
                return;
        }
        q qVar = q.f51745a;
        Bundle c10 = qVar.c(qVar.b());
        bundle.putString("payment_method_name", ae.a.f627a.a());
        if (!c10.isEmpty()) {
            jk.b.a(bundle, c10);
        }
    }

    private final boolean p(String str) {
        String[] strArr = (String[]) f42501i.b().get(str);
        if (strArr == null && Intrinsics.areEqual(str, "reel_play")) {
            long c02 = ud.b.f68412a.c0();
            long K = DeviceUtil.f48146a.K();
            if (c02 > 0 && TimeUtil.f48175a.o(c02, K)) {
                strArr = af.d.f628a.c();
            }
        }
        if (strArr != null) {
            this.f42506d.h(new b.C0623b(n.x1(strArr)));
            return true;
        }
        return false;
    }

    private final Object q(rs.c<? super Unit> cVar) {
        int i10 = this.f42508f;
        int E = EventRepository.f41474b.E();
        if (E >= i10) {
            Logger logger = Logger.f41511a;
            logger.h("SupersetEventLogger", "Strategy: Threshold reached (" + E + " >= " + i10 + ')');
            this.f42506d.h(new b.a(false, "Threshold"));
        }
        return Unit.f60915a;
    }

    private final DbEvent r(EventInfo eventInfo) {
        return s(eventInfo.getEventName(), eventInfo.getExtras(), eventInfo.getCreateTime());
    }

    private final DbEvent s(String str, Bundle bundle, long j10) {
        String str2;
        long checkTime;
        DbEvent dbEvent = new DbEvent();
        AccountRepo accountRepo = AccountRepo.f43052a;
        dbEvent.setUid(accountRepo.t0());
        dbEvent.setAppVersion(DeviceUtil.f48146a.V());
        String m10 = ud.a.f68411a.m();
        if (v.h(m10)) {
            dbEvent.setEventId(u() + '_' + System.nanoTime() + '_' + this.f42505c.getAndIncrement());
        } else {
            dbEvent.setEventId(m10 + '_' + System.nanoTime() + '_' + this.f42505c.getAndIncrement());
        }
        dbEvent.setEventName(str);
        String e10 = af.i.f639a.e();
        if (accountRepo.z0()) {
            str2 = "1";
        } else {
            str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        o(str, bundle);
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString("is_vip", str2);
        dbEvent.setEventExtra(t(bundle, e10));
        if (j10 == -1) {
            j10 = System.currentTimeMillis();
        }
        dbEvent.setLocalTime(j10);
        EventManager eventManager = EventManager.f42463a;
        if (eventManager.E().getDiffTimeLong() != -1) {
            dbEvent.setCheckTime(dbEvent.getLocalTime() + eventManager.E().getDiffTimeLong());
        }
        if (dbEvent.getCheckTime() < 1000000000000L) {
            dbEvent.setCheckTime(dbEvent.getLocalTime());
        }
        if (dbEvent.getCheckTime() == 0) {
            checkTime = dbEvent.getLocalTime();
        } else {
            checkTime = dbEvent.getCheckTime();
        }
        dbEvent.setEventTime(checkTime);
        dbEvent.setStatus(0);
        return dbEvent;
    }

    private final String t(Bundle bundle, String str) {
        ud.a aVar;
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = false;
        for (String str2 : bundle.keySet()) {
            if (!Intrinsics.areEqual(str2, "customShortsName") && !Intrinsics.areEqual(str2, "customSearchValue")) {
                sb2.append(str2);
                sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                sb2.append(bundle.get(str2));
                sb2.append(ContainerUtils.FIELD_DELIMITER);
                if (Intrinsics.areEqual(str2, "session_id")) {
                    z10 = true;
                }
            }
        }
        if (str != null && str.length() != 0 && !z10) {
            sb2.append("session_id");
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb2.append(str);
            sb2.append(ContainerUtils.FIELD_DELIMITER);
        }
        sb2.append(DownloadService.KEY_FOREGROUND);
        sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
        sb2.append(ud.a.f68411a.t());
        sb2.append(ContainerUtils.FIELD_DELIMITER);
        sb2.append("app_launched");
        sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
        sb2.append(!aVar.e());
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    private final String u() {
        String str = this.f42503a;
        if (str == null || str.length() == 0) {
            str = UUID.randomUUID().toString();
            this.f42503a = str;
        }
        Intrinsics.checkNotNull(str);
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v() {
        long j10 = 10000;
        if (this.f42509g == 10000) {
            int i10 = 50;
            if (this.f42508f == 50) {
                Logger logger = Logger.f41511a;
                logger.h("SupersetEventConfig", "pre cachedTimerInterval: " + this.f42509g + ",cachedBatchThreshold: " + this.f42508f);
                e eVar = e.f62912a;
                long longValue = ((Number) eVar.i("eventReportTimerTime", 10000L)).longValue();
                logger.h("SupersetEventConfig", "configTimer: " + longValue);
                if (longValue <= 1000) {
                    longValue = 10000;
                }
                this.f42509g = longValue;
                long j11 = 2;
                if (this.f42509g / j11 < 3000) {
                    j10 = 3000;
                } else if (this.f42509g / j11 <= 10000) {
                    j10 = this.f42509g / j11;
                }
                this.f42510h = j10;
                int intValue = ((Number) eVar.i("eventReportMaxCount", 50)).intValue();
                logger.h("SupersetEventConfig", "configThreshold: " + intValue);
                if (intValue > 0) {
                    i10 = intValue;
                }
                this.f42508f = kotlin.ranges.e.n(i10, 10, 200);
                if (i10 > 200) {
                    logger.e("SupersetEventLogger", "eventReportMaxCount too large (" + i10 + "), capped to 200");
                } else if (i10 < 10) {
                    logger.e("SupersetEventLogger", "eventReportMaxCount too small (" + i10 + "), raised to 10");
                }
                logger.h("SupersetEventConfig", "after cachedTimerInterval: " + this.f42509g + ",cachedBatchThreshold: " + this.f42508f + ", reportInterval: " + this.f42510h);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object w(boolean z10, String str, rs.c<? super Unit> cVar) {
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        String h10 = deviceUtil.h();
        if (h10 != null && h10.length() != 0) {
            long L = deviceUtil.L();
            if (L < this.f42504b) {
                this.f42504b = -1L;
            }
            if (!z10) {
                if (L - this.f42504b < this.f42510h) {
                    return Unit.f60915a;
                }
            }
            this.f42504b = L;
            List<DbEvent> I = EventRepository.f41474b.I(this.f42508f);
            if (!I.isEmpty()) {
                List<DbEvent> list = I;
                ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
                for (DbEvent dbEvent : list) {
                    arrayList.add(kotlin.coroutines.jvm.internal.a.e(dbEvent.getLocalId()));
                }
                Object d10 = EventRepo.d(EventRepo.f44011a, str, l.d(I), arrayList, null, null, cVar, 24, null);
                if (d10 == kotlin.coroutines.intrinsics.a.f()) {
                    return d10;
                }
                return Unit.f60915a;
            }
            return Unit.f60915a;
        }
        Logger.f41511a.e("SupersetEventLogger", "Upload skipped: No Device ID");
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object x(List<String> list, rs.c<? super Unit> cVar) {
        String h10 = DeviceUtil.f48146a.h();
        if (h10 != null && h10.length() != 0) {
            List<DbEvent> J = EventRepository.f41474b.J((String[]) list.toArray(new String[0]), this.f42508f);
            if (!J.isEmpty()) {
                List<DbEvent> list2 = J;
                ArrayList arrayList = new ArrayList(CollectionsKt.z(list2, 10));
                for (DbEvent dbEvent : list2) {
                    arrayList.add(kotlin.coroutines.jvm.internal.a.e(dbEvent.getLocalId()));
                }
                Object d10 = EventRepo.d(EventRepo.f44011a, "", l.d(J), arrayList, null, null, cVar, 24, null);
                if (d10 == kotlin.coroutines.intrinsics.a.f()) {
                    return d10;
                }
                return Unit.f60915a;
            }
            return Unit.f60915a;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object y(b.c cVar, rs.c<? super Unit> cVar2) {
        String h10 = DeviceUtil.f48146a.h();
        if (h10 != null && h10.length() != 0) {
            List<DbEvent> I = EventRepository.f41474b.I(cVar.c());
            if (I.isEmpty()) {
                Function1<Integer, Unit> b10 = cVar.b();
                if (b10 != null) {
                    b10.invoke(kotlin.coroutines.jvm.internal.a.d(0));
                }
                return Unit.f60915a;
            }
            List<DbEvent> list = I;
            ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
            for (DbEvent dbEvent : list) {
                arrayList.add(kotlin.coroutines.jvm.internal.a.e(dbEvent.getLocalId()));
            }
            Object c10 = EventRepo.f44011a.c("", l.d(I), arrayList, cVar.b(), cVar.a(), cVar2);
            if (c10 == kotlin.coroutines.intrinsics.a.f()) {
                return c10;
            }
            return Unit.f60915a;
        }
        return Unit.f60915a;
    }

    private final void z() {
        gt.g.d(this.f42507e, null, null, new SupersetEventLogger$startForegroundTimerCheck$1(this, null), 3, null);
    }

    @Override // af.h
    public void b(boolean z10) {
        this.f42506d.h(new b.a(z10, "External Flush"));
    }

    @Override // af.h
    public int c() {
        return 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006e  */
    @Override // af.h
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object d(@org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.Nullable android.os.Bundle r7, long r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r10) {
        /*
            r5 = this;
            boolean r0 = r10 instanceof com.startshorts.androidplayer.manager.event.SupersetEventLogger$logEvent$1
            if (r0 == 0) goto L13
            r0 = r10
            com.startshorts.androidplayer.manager.event.SupersetEventLogger$logEvent$1 r0 = (com.startshorts.androidplayer.manager.event.SupersetEventLogger$logEvent$1) r0
            int r1 = r0.f42521l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42521l = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.event.SupersetEventLogger$logEvent$1 r0 = new com.startshorts.androidplayer.manager.event.SupersetEventLogger$logEvent$1
            r0.<init>(r5, r10)
        L18:
            java.lang.Object r10 = r0.f42519j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42521l
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r10)
            goto L6b
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            java.lang.Object r6 = r0.f42518i
            java.lang.String r6 = (java.lang.String) r6
            java.lang.Object r7 = r0.f42517h
            com.startshorts.androidplayer.manager.event.SupersetEventLogger r7 = (com.startshorts.androidplayer.manager.event.SupersetEventLogger) r7
            kotlin.f.b(r10)
            goto L57
        L40:
            kotlin.f.b(r10)
            com.startshorts.androidplayer.db.repository.EventRepository r10 = com.startshorts.androidplayer.db.repository.EventRepository.f41474b
            com.startshorts.androidplayer.db.model.DbEvent r7 = r5.s(r6, r7, r8)
            r0.f42517h = r5
            r0.f42518i = r6
            r0.f42521l = r4
            java.lang.Object r7 = r10.X(r7, r0)
            if (r7 != r1) goto L56
            return r1
        L56:
            r7 = r5
        L57:
            boolean r6 = r7.p(r6)
            if (r6 != 0) goto L6e
            r6 = 0
            r0.f42517h = r6
            r0.f42518i = r6
            r0.f42521l = r3
            java.lang.Object r6 = r7.q(r0)
            if (r6 != r1) goto L6b
            return r1
        L6b:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        L6e:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.event.SupersetEventLogger.d(java.lang.String, android.os.Bundle, long, rs.c):java.lang.Object");
    }

    @Override // af.h
    public void e(int i10, @Nullable Function1<? super Integer, Unit> function1, @Nullable Function0<Unit> function0) {
        this.f42506d.h(new b.c(i10, function1, function0));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009e  */
    @Override // af.h
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object f(@org.jetbrains.annotations.NotNull java.util.List<com.startshorts.androidplayer.bean.event.EventInfo> r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.manager.event.SupersetEventLogger$logEvents$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.manager.event.SupersetEventLogger$logEvents$1 r0 = (com.startshorts.androidplayer.manager.event.SupersetEventLogger$logEvents$1) r0
            int r1 = r0.f42526l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42526l = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.event.SupersetEventLogger$logEvents$1 r0 = new com.startshorts.androidplayer.manager.event.SupersetEventLogger$logEvents$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f42524j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42526l
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r8)
            goto L9b
        L2c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L34:
            java.lang.Object r7 = r0.f42523i
            java.util.List r7 = (java.util.List) r7
            java.lang.Object r2 = r0.f42522h
            com.startshorts.androidplayer.manager.event.SupersetEventLogger r2 = (com.startshorts.androidplayer.manager.event.SupersetEventLogger) r2
            kotlin.f.b(r8)
            goto L7c
        L40:
            kotlin.f.b(r8)
            boolean r8 = r7.isEmpty()
            if (r8 == 0) goto L4c
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        L4c:
            r8 = r7
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Iterator r8 = r8.iterator()
        L58:
            boolean r5 = r8.hasNext()
            if (r5 == 0) goto L6c
            java.lang.Object r5 = r8.next()
            com.startshorts.androidplayer.bean.event.EventInfo r5 = (com.startshorts.androidplayer.bean.event.EventInfo) r5
            com.startshorts.androidplayer.db.model.DbEvent r5 = r6.r(r5)
            r2.add(r5)
            goto L58
        L6c:
            com.startshorts.androidplayer.db.repository.EventRepository r8 = com.startshorts.androidplayer.db.repository.EventRepository.f41474b
            r0.f42522h = r6
            r0.f42523i = r7
            r0.f42526l = r4
            java.lang.Object r8 = r8.k0(r2, r0)
            if (r8 != r1) goto L7b
            return r1
        L7b:
            r2 = r6
        L7c:
            r8 = 0
            java.lang.Object r7 = r7.get(r8)
            com.startshorts.androidplayer.bean.event.EventInfo r7 = (com.startshorts.androidplayer.bean.event.EventInfo) r7
            java.lang.String r7 = r7.getEventName()
            boolean r7 = r2.p(r7)
            if (r7 != 0) goto L9e
            r7 = 0
            r0.f42522h = r7
            r0.f42523i = r7
            r0.f42526l = r3
            java.lang.Object r7 = r2.q(r0)
            if (r7 != r1) goto L9b
            return r1
        L9b:
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        L9e:
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.event.SupersetEventLogger.f(java.util.List, rs.c):java.lang.Object");
    }
}
