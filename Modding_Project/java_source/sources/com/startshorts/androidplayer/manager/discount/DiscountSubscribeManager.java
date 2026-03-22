package com.startshorts.androidplayer.manager.discount;

import com.startshorts.androidplayer.bean.discount.DiscountSubscribeInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.discount.DiscountSubscribeManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import jk.f;
import jk.l;
import jk.u;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import le.g;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ud.b;
import zc.h;
/* compiled from: DiscountSubscribeManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DiscountSubscribeManager {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final DiscountSubscribeManager f42447a = new DiscountSubscribeManager();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f42448b = c.b(new Function0() { // from class: xe.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            String s10;
            s10 = DiscountSubscribeManager.s();
            return s10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f42449c = c.b(new Function0() { // from class: xe.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            AtomicInteger t10;
            t10 = DiscountSubscribeManager.t();
            return t10;
        }
    });

    /* renamed from: d  reason: collision with root package name */
    private static boolean f42450d = true;

    /* compiled from: DiscountSubscribeManager.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscountSubscribeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscountSubscribeManager.kt\ncom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$connectBillingClient$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,218:1\n1863#2:219\n1863#2,2:220\n1864#2:222\n*S KotlinDebug\n*F\n+ 1 DiscountSubscribeManager.kt\ncom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$connectBillingClient$1\n*L\n133#1:219\n134#1:220,2\n133#1:222\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a extends g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SubsSku f42451a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function1<SubsSku, Unit> f42452b;

        /* JADX WARN: Multi-variable type inference failed */
        a(SubsSku subsSku, Function1<? super SubsSku, Unit> function1) {
            this.f42451a = subsSku;
            this.f42452b = function1;
        }

        @Override // le.g
        public void f(List<h> list) {
            Logger logger = Logger.f41511a;
            logger.h("DiscountSubscribeManager", "onProductDetails -> list(" + l.d(list) + ')');
            List<h> list2 = list;
            if (list2 != null && !list2.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (h hVar : list) {
                    List<Object> a10 = hVar.a();
                    if (a10 != null) {
                        for (Object obj : a10) {
                            arrayList.add(obj);
                        }
                    }
                }
                u.k(this.f42451a, arrayList);
                this.f42452b.invoke(this.f42451a);
            }
        }

        @Override // le.g
        public void g() {
            DiscountSubscribeManager.f42450d = false;
            String skuId = this.f42451a.getSkuId();
            if (skuId.length() > 0) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new zc.g(le.h.f62164a.b(), CollectionsKt.t(skuId)));
                BillingRepo.f43237a.e0(DiscountSubscribeManager.f42447a.n(), arrayList);
            }
        }
    }

    private DiscountSubscribeManager() {
    }

    private final void g(String str, BaseActivity baseActivity, Function0<Unit> function0, BaseEpisode baseEpisode) {
        if (!AccountRepo.f43052a.z0() || !ABTestFactory.f42224a.r1().isEnable().invoke().booleanValue()) {
            return;
        }
        DiscountSubscribeInfo p02 = b.f68412a.p0();
        if (p02 != null && !l(p02)) {
            return;
        }
        CoroutineUtil.l(CoroutineUtil.f48072a, "checkDiscountSubs", false, new DiscountSubscribeManager$checkDiscountSubs$1(baseActivity, str, baseEpisode, function0, null), 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void h(DiscountSubscribeManager discountSubscribeManager, String str, BaseActivity baseActivity, Function0 function0, BaseEpisode baseEpisode, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            function0 = null;
        }
        if ((i10 & 8) != 0) {
            baseEpisode = null;
        }
        discountSubscribeManager.g(str, baseActivity, function0, baseEpisode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(SubsSku subsSku, Function1<? super SubsSku, Unit> function1) {
        if (subsSku.getSkuId().length() == 0) {
            function1.invoke(null);
        } else {
            BillingRepo.f43237a.t(f42450d, n(), q(), new a(subsSku, function1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String n() {
        return q() + '_' + r().getAndIncrement();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int o(SubsSku subsSku) {
        int e10 = u.e(subsSku);
        Logger logger = Logger.f41511a;
        logger.h("DiscountSubscribeManager", "discountGap = " + e10 + " sku=" + l.d(subsSku));
        return e10;
    }

    private final String q() {
        return (String) f42448b.getValue();
    }

    private final AtomicInteger r() {
        return (AtomicInteger) f42449c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String s() {
        return UUID.randomUUID().toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AtomicInteger t() {
        return new AtomicInteger(0);
    }

    public final void i(@NotNull BaseActivity activity, @Nullable BaseEpisode baseEpisode, @Nullable Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (b.f68412a.s0(TimeUtil.f48175a.f(f.a(new Date()))) < 10) {
            return;
        }
        g("immersion_page", activity, function0, baseEpisode);
    }

    public final void j(@NotNull BaseActivity activity, @Nullable Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        h(this, "profile", activity, function0, null, 8, null);
    }

    public final void k(@NotNull BaseActivity activity, @Nullable Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        h(this, "subscribe", activity, function0, null, 8, null);
    }

    public final boolean l(@Nullable DiscountSubscribeInfo discountSubscribeInfo) {
        if (discountSubscribeInfo == null || b.f68412a.j2(TimeUtil.f48175a.f(f.a(new Date())))) {
            return false;
        }
        return true;
    }

    @Nullable
    public final SubsSku p() {
        long j10;
        if (!AccountRepo.f43052a.z0()) {
            Logger.f41511a.h("DiscountSubscribeManager", "hasSubscribed = false");
            return null;
        } else if (!ABTestFactory.f42224a.r1().isEnable().invoke().booleanValue()) {
            Logger.f41511a.h("DiscountSubscribeManager", "ABTestFactory = false");
            return null;
        } else {
            DiscountSubscribeInfo p02 = b.f68412a.p0();
            if (p02 == null) {
                Logger.f41511a.h("DiscountSubscribeManager", "discountSubscribeInfo = null");
                return null;
            }
            SubsSku subscribeSkuResponse = p02.getSubscribeSkuResponse();
            if (subscribeSkuResponse == null) {
                Logger.f41511a.h("DiscountSubscribeManager", "subscribeSkuResponse = null");
                return null;
            }
            Long discountTime = subscribeSkuResponse.getDiscountTime();
            if (discountTime != null) {
                j10 = discountTime.longValue();
            } else {
                j10 = 0;
            }
            if ((j10 - DeviceUtil.f48146a.K()) / 1000 < 1) {
                Logger.f41511a.h("DiscountSubscribeManager", "countDownSeconds < 1");
                return null;
            } else if (subscribeSkuResponse.getSkuDetails() == null) {
                Logger.f41511a.h("DiscountSubscribeManager", "skuDetails = null");
                return null;
            } else {
                boolean enableDiscount = subscribeSkuResponse.enableDiscount();
                if (o(subscribeSkuResponse) > 2 && enableDiscount) {
                    return subscribeSkuResponse;
                }
                Logger logger = Logger.f41511a;
                logger.h("DiscountSubscribeManager", "discountGap <= 2 , isEnableDiscount = " + enableDiscount + " subscribeSku=" + l.d(subscribeSkuResponse));
                return null;
            }
        }
    }

    public final void u(@NotNull String gpSkuId) {
        SubsSku subscribeSkuResponse;
        Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
        b bVar = b.f68412a;
        DiscountSubscribeInfo p02 = bVar.p0();
        if (p02 != null && (subscribeSkuResponse = p02.getSubscribeSkuResponse()) != null && Intrinsics.areEqual(subscribeSkuResponse.getSkuId(), gpSkuId)) {
            Logger.f41511a.h("DiscountSubscribeManager", "premiumSuccess discountSubscribeInfo = null");
            bVar.A3(null);
        }
        PurchaseRepo.f43366a.f("topup");
    }

    public final void v(@NotNull DiscountSubscribeInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        Logger logger = Logger.f41511a;
        logger.h("DiscountSubscribeManager", "saveDiscountSubscribe  info=" + l.d(info));
        b.f68412a.A3(info);
    }

    public final void w(@NotNull String date, boolean z10) {
        Intrinsics.checkNotNullParameter(date, "date");
        b.f68412a.B3(date, z10);
    }
}
