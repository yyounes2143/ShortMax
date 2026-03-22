package com.startshorts.androidplayer.repo.billing.purchase;

import com.startshorts.androidplayer.bean.purchase.AvailableExpansionSku;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.QueryNormalCoinSkuResult;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import hg.a;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ud.b;
/* compiled from: PurchaseRepo.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPurchaseRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PurchaseRepo.kt\ncom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,344:1\n360#2,7:345\n360#2,7:352\n1863#2,2:359\n1863#2,2:361\n1863#2,2:363\n1872#2,3:365\n*S KotlinDebug\n*F\n+ 1 PurchaseRepo.kt\ncom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo\n*L\n120#1:345,7\n160#1:352,7\n263#1:359,2\n291#1:361,2\n299#1:363,2\n304#1:365,3\n*E\n"})
/* loaded from: classes7.dex */
public final class PurchaseRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final PurchaseRepo f43366a = new PurchaseRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f43367b = c.b(new Function0() { // from class: hg.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            PurchaseRemoteDS p10;
            p10 = PurchaseRepo.p();
            return p10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f43368c = c.b(new Function0() { // from class: hg.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            a o10;
            o10 = PurchaseRepo.o();
            return o10;
        }
    });

    private PurchaseRepo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(boolean z10, QueryNormalCoinSkuResult queryNormalCoinSkuResult) {
        boolean z11;
        List<CoinSku> arrayList;
        List<SubsSku> arrayList2;
        List<SubsSku> subscribeSkuResponses;
        CoinSku rewardSkuInfoResponses;
        CoinSku retainSkuInfoResponses;
        List<CoinSku> skuInfoResponses;
        BillingRepo billingRepo = BillingRepo.f43237a;
        if (billingRepo.C()) {
            if (queryNormalCoinSkuResult == null || (skuInfoResponses = queryNormalCoinSkuResult.getSkuInfoResponses()) == null || (arrayList = CollectionsKt.g1(skuInfoResponses)) == null) {
                arrayList = new ArrayList<>();
            }
            if (queryNormalCoinSkuResult != null && (retainSkuInfoResponses = queryNormalCoinSkuResult.getRetainSkuInfoResponses()) != null) {
                arrayList.add(retainSkuInfoResponses);
            }
            if (queryNormalCoinSkuResult != null && (rewardSkuInfoResponses = queryNormalCoinSkuResult.getRewardSkuInfoResponses()) != null) {
                arrayList.add(rewardSkuInfoResponses);
            }
            billingRepo.h0(arrayList);
            if (queryNormalCoinSkuResult == null || (subscribeSkuResponses = queryNormalCoinSkuResult.getSubscribeSkuResponses()) == null || (arrayList2 = CollectionsKt.g1(subscribeSkuResponses)) == null) {
                arrayList2 = new ArrayList<>();
            }
            billingRepo.i0(arrayList2);
        }
        if (ABTestFactory.f42224a.c1().isEnable().invoke().booleanValue()) {
            if (queryNormalCoinSkuResult != null) {
                z11 = queryNormalCoinSkuResult.isLowPayScoreUser();
            } else {
                z11 = false;
            }
            x(z11);
        }
        if (z10) {
            try {
                w(queryNormalCoinSkuResult);
            } catch (Exception e10) {
                Logger logger = Logger.f41511a;
                logger.e("PurchaseRepo", "tryAddExpansionSku exception -> " + e10.getMessage());
            }
        }
        try {
            v(queryNormalCoinSkuResult);
        } catch (Exception e11) {
            Logger logger2 = Logger.f41511a;
            logger2.e("PurchaseRepo", "tryAddBlackFridaySku exception -> " + e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final a m() {
        return (a) f43368c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PurchaseRemoteDS n() {
        return (PurchaseRemoteDS) f43367b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a o() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PurchaseRemoteDS p() {
        return new PurchaseRemoteDS();
    }

    public static /* synthetic */ Object t(PurchaseRepo purchaseRepo, boolean z10, boolean z11, String str, rs.c cVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            z11 = true;
        }
        return purchaseRepo.s(z10, z11, str, cVar);
    }

    private final void v(QueryNormalCoinSkuResult queryNormalCoinSkuResult) {
        CoinSku rewardSkuInfoResponses;
        int i10;
        if (queryNormalCoinSkuResult == null || (rewardSkuInfoResponses = queryNormalCoinSkuResult.getRewardSkuInfoResponses()) == null) {
            return;
        }
        Logger.f41511a.h("PurchaseRepo", "tryAddBlackFridaySku -> rewardSkuPositionType(" + queryNormalCoinSkuResult.getRewardSkuPositionType() + ')');
        List<CoinSku> skuInfoResponses = queryNormalCoinSkuResult.getSkuInfoResponses();
        if (skuInfoResponses != null) {
            i10 = 0;
            for (CoinSku coinSku : skuInfoResponses) {
                if (coinSku.getSkuType() == queryNormalCoinSkuResult.getRewardSkuPositionType()) {
                    break;
                }
                i10++;
            }
        }
        i10 = -1;
        if (i10 != -1) {
            Logger.f41511a.e("PurchaseRepo", "tryAddBlackFridaySku -> index(" + i10 + ')');
            List<CoinSku> skuInfoResponses2 = queryNormalCoinSkuResult.getSkuInfoResponses();
            if (skuInfoResponses2 != null) {
                skuInfoResponses2.add(i10, rewardSkuInfoResponses);
            }
        }
    }

    private final void w(QueryNormalCoinSkuResult queryNormalCoinSkuResult) {
        CoinSku retainSkuInfoResponses;
        CoinSku k10;
        int i10;
        List<CoinSku> skuInfoResponses;
        if (queryNormalCoinSkuResult == null || (retainSkuInfoResponses = queryNormalCoinSkuResult.getRetainSkuInfoResponses()) == null || (k10 = k()) == null) {
            return;
        }
        Logger.f41511a.e("PurchaseRepo", "tryAddExpansionSku -> skuPositionType(" + queryNormalCoinSkuResult.getSkuPositionType() + ')');
        List<CoinSku> skuInfoResponses2 = queryNormalCoinSkuResult.getSkuInfoResponses();
        if (skuInfoResponses2 != null) {
            i10 = 0;
            for (CoinSku coinSku : skuInfoResponses2) {
                if (coinSku.getSkuType() == queryNormalCoinSkuResult.getSkuPositionType()) {
                    break;
                }
                i10++;
            }
        }
        i10 = -1;
        if (i10 == -1) {
            return;
        }
        Logger.f41511a.e("PurchaseRepo", "tryAddExpansionSku -> index(" + i10 + ')');
        if (!Intrinsics.areEqual(k10.getSkuProductId(), retainSkuInfoResponses.getSkuProductId())) {
            long K = DeviceUtil.f48146a.K();
            b.f68412a.a3(AccountRepo.f43052a.t0(), new AvailableExpansionSku(retainSkuInfoResponses, K, (retainSkuInfoResponses.getRetentionSeconds() * 1000) + K));
            k10 = k();
        } else {
            k10.setCoins(retainSkuInfoResponses.getCoins());
            k10.setKeepGiveCoins(retainSkuInfoResponses.getKeepGiveCoins());
            k10.setCoinsUnit(retainSkuInfoResponses.getCoinsUnit());
            k10.setGiveCoinsUnit(retainSkuInfoResponses.getGiveCoinsUnit());
            k10.setSubscript(retainSkuInfoResponses.getSubscript());
        }
        if (k10 != null && (skuInfoResponses = queryNormalCoinSkuResult.getSkuInfoResponses()) != null) {
            skuInfoResponses.add(i10, k10);
        }
    }

    public final void f(@Nullable String str) {
        m().b(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0186 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0192  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(@org.jetbrains.annotations.Nullable android.content.Context r24, @org.jetbrains.annotations.NotNull java.lang.String r25, @org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.purchase.BatchUnlockEpisodeSku r26, @org.jetbrains.annotations.NotNull zc.f r27, @org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.purchase.GPayPriceInfo r28, @org.jetbrains.annotations.Nullable com.startshorts.androidplayer.bean.shorts.BaseEpisode r29, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r30) {
        /*
            Method dump skipped, instructions count: 449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo.h(android.content.Context, java.lang.String, com.startshorts.androidplayer.bean.purchase.BatchUnlockEpisodeSku, zc.f, com.startshorts.androidplayer.bean.purchase.GPayPriceInfo, com.startshorts.androidplayer.bean.shorts.BaseEpisode, rs.c):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02d7  */
    /* JADX WARN: Type inference failed for: r12v12, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r9v20, types: [java.util.List] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x0263 -> B:79:0x0266). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:90:0x02ca -> B:92:0x02cd). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(boolean r31, @org.jetbrains.annotations.NotNull java.lang.String r32, @org.jetbrains.annotations.NotNull java.util.List<com.startshorts.androidplayer.bean.purchase.GPayCoinsRecover> r33, @org.jetbrains.annotations.NotNull java.util.List<java.lang.String> r34, @org.jetbrains.annotations.NotNull rs.c<? super java.util.List<com.startshorts.androidplayer.bean.purchase.GPayCoinsRecoverResult>> r35) {
        /*
            Method dump skipped, instructions count: 748
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo.i(boolean, java.lang.String, java.util.List, java.util.List, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0226  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(@org.jetbrains.annotations.Nullable android.content.Context r19, @org.jetbrains.annotations.NotNull java.lang.String r20, @org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.purchase.CoinSku r21, @org.jetbrains.annotations.NotNull zc.f r22, @org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.purchase.GPayPriceInfo r23, @org.jetbrains.annotations.Nullable com.startshorts.androidplayer.bean.shorts.BaseEpisode r24, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r25) {
        /*
            Method dump skipped, instructions count: 630
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo.j(android.content.Context, java.lang.String, com.startshorts.androidplayer.bean.purchase.CoinSku, zc.f, com.startshorts.androidplayer.bean.purchase.GPayPriceInfo, com.startshorts.androidplayer.bean.shorts.BaseEpisode, rs.c):java.lang.Object");
    }

    @Nullable
    public final CoinSku k() {
        return m().c();
    }

    @Nullable
    public final CoinSku l() {
        return m().d();
    }

    @NotNull
    public final r q() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "notifyThirdPartyPayEnable(2)", false, new PurchaseRepo$notifyThirdPartyPayEnable$1(null), 2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object r(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.purchase.QueryBlackFridayCoinSkuResult>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$queryBlackFridayCoinSkuList$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$queryBlackFridayCoinSkuList$1 r0 = (com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$queryBlackFridayCoinSkuList$1) r0
            int r1 = r0.f43423j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43423j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$queryBlackFridayCoinSkuList$1 r0 = new com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$queryBlackFridayCoinSkuList$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f43421h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43423j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.f.b(r5)
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS r5 = r4.n()
            r0.f43423j = r3
            java.lang.Object r5 = r5.d(r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo.r(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0084  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object s(boolean r11, boolean r12, @org.jetbrains.annotations.Nullable java.lang.String r13, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.purchase.QueryNormalCoinSkuResult>> r14) {
        /*
            r10 = this;
            boolean r0 = r14 instanceof com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$queryNormalCoinSkuList$1
            if (r0 == 0) goto L13
            r0 = r14
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$queryNormalCoinSkuList$1 r0 = (com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$queryNormalCoinSkuList$1) r0
            int r1 = r0.f43428l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43428l = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$queryNormalCoinSkuList$1 r0 = new com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$queryNormalCoinSkuList$1
            r0.<init>(r10, r14)
        L18:
            java.lang.Object r14 = r0.f43426j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43428l
            r3 = 1
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            boolean r12 = r0.f43424h
            java.lang.Object r11 = r0.f43425i
            r13 = r11
            java.lang.String r13 = (java.lang.String) r13
            kotlin.f.b(r14)
            kotlin.Result r14 = (kotlin.Result) r14
            java.lang.Object r11 = r14.n()
            goto L7e
        L36:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L3e:
            kotlin.f.b(r14)
            hg.a r14 = r10.m()
            java.lang.Object r14 = r14.e(r13)
            boolean r2 = kotlin.Result.j(r14)
            if (r2 == 0) goto L6d
            com.startshorts.androidplayer.utils.CoroutineUtil r4 = com.startshorts.androidplayer.utils.CoroutineUtil.f48072a
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$queryNormalCoinSkuList$2 r7 = new com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$queryNormalCoinSkuList$2
            r0 = 0
            r7.<init>(r11, r13, r12, r0)
            r8 = 2
            r9 = 0
            java.lang.String r5 = "preQueryNormalCoinSkuList"
            r6 = 0
            com.startshorts.androidplayer.utils.CoroutineUtil.l(r4, r5, r6, r7, r8, r9)
            boolean r11 = kotlin.Result.i(r14)
            if (r11 == 0) goto L66
            goto L67
        L66:
            r0 = r14
        L67:
            com.startshorts.androidplayer.bean.purchase.QueryNormalCoinSkuResult r0 = (com.startshorts.androidplayer.bean.purchase.QueryNormalCoinSkuResult) r0
            r10.g(r12, r0)
            goto L94
        L6d:
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS r14 = r10.n()
            r0.f43425i = r13
            r0.f43424h = r12
            r0.f43428l = r3
            java.lang.Object r11 = r14.e(r11, r13, r0)
            if (r11 != r1) goto L7e
            return r1
        L7e:
            boolean r14 = kotlin.Result.j(r11)
            if (r14 == 0) goto L93
            r14 = r11
            com.startshorts.androidplayer.bean.purchase.QueryNormalCoinSkuResult r14 = (com.startshorts.androidplayer.bean.purchase.QueryNormalCoinSkuResult) r14
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo r0 = com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo.f43366a
            hg.a r1 = r0.m()
            r1.g(r13, r14)
            r0.g(r12, r14)
        L93:
            r14 = r11
        L94:
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo.s(boolean, boolean, java.lang.String, rs.c):java.lang.Object");
    }

    public final void u() {
        if (!ABTestFactory.f42224a.c1().isEnable().invoke().booleanValue()) {
            return;
        }
        CoroutineUtil.l(CoroutineUtil.f48072a, "refreshPayScore", false, new PurchaseRepo$refreshPayScore$1(null), 2, null);
    }

    public final void x(boolean z10) {
        if (!ABTestFactory.f42224a.c1().isEnable().invoke().booleanValue()) {
            return;
        }
        m().f(z10);
    }
}
