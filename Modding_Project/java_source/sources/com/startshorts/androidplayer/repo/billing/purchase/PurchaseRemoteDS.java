package com.startshorts.androidplayer.repo.billing.purchase;

import kotlin.Metadata;
/* compiled from: PurchaseRemoteDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class PurchaseRemoteDS {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(@org.jetbrains.annotations.Nullable android.content.Context r4, @org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.purchase.BatchUnlockEpisodeSku r5, @org.jetbrains.annotations.NotNull zc.f r6, @org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.purchase.GPayPriceInfo r7, @org.jetbrains.annotations.Nullable com.startshorts.androidplayer.bean.shorts.BaseEpisode r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends com.startshorts.androidplayer.bean.purchase.GPayExchangeCoinsResult>> r9) {
        /*
            r3 = this;
            boolean r8 = r9 instanceof com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$1
            if (r8 == 0) goto L13
            r8 = r9
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$1 r8 = (com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$1) r8
            int r0 = r8.f43335j
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r8.f43335j = r0
            goto L18
        L13:
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$1 r8 = new com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$1
            r8.<init>(r3, r9)
        L18:
            java.lang.Object r9 = r8.f43333h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r8.f43335j
            r2 = 1
            if (r1 == 0) goto L37
            if (r1 != r2) goto L2f
            kotlin.f.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r4 = r9.n()
            goto L53
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            kotlin.f.b(r9)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r9 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r9.<init>()
            r1 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r4 = r9.u(r4, r1)
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2 r9 = new com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2
            r1 = 0
            r9.<init>(r5, r6, r7, r1)
            r8.f43335j = r2
            java.lang.Object r4 = r4.o(r9, r8)
            if (r4 != r0) goto L53
            return r0
        L53:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS.a(android.content.Context, com.startshorts.androidplayer.bean.purchase.BatchUnlockEpisodeSku, zc.f, com.startshorts.androidplayer.bean.purchase.GPayPriceInfo, com.startshorts.androidplayer.bean.shorts.BaseEpisode, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(boolean r5, @org.jetbrains.annotations.NotNull java.util.List<com.startshorts.androidplayer.bean.purchase.GPayCoinsRecover> r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.purchase.GPayCoinsRecoverResponse>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayCoinsRecover$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayCoinsRecover$1 r0 = (com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayCoinsRecover$1) r0
            int r1 = r0.f43342j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43342j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayCoinsRecover$1 r0 = new com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayCoinsRecover$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.f43340h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43342j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.n()
            goto L53
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r7 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r7.<init>()
            r5 = r5 ^ r3
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r5 = r7.E(r5)
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayCoinsRecover$2 r7 = new com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayCoinsRecover$2
            r2 = 0
            r7.<init>(r6, r2)
            r0.f43342j = r3
            java.lang.Object r5 = r5.o(r7, r0)
            if (r5 != r1) goto L53
            return r1
        L53:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS.b(boolean, java.util.List, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(@org.jetbrains.annotations.Nullable android.content.Context r13, @org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.purchase.CoinSku r14, @org.jetbrains.annotations.NotNull zc.f r15, @org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.purchase.GPayPriceInfo r16, @org.jetbrains.annotations.Nullable com.startshorts.androidplayer.bean.shorts.BaseEpisode r17, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends com.startshorts.androidplayer.bean.purchase.GPayExchangeCoinsResult>> r18) {
        /*
            r12 = this;
            r0 = r18
            boolean r1 = r0 instanceof com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayExchangeCoins$1
            if (r1 == 0) goto L16
            r1 = r0
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayExchangeCoins$1 r1 = (com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayExchangeCoins$1) r1
            int r2 = r1.f43347j
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L16
            int r2 = r2 - r3
            r1.f43347j = r2
            r2 = r12
            goto L1c
        L16:
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayExchangeCoins$1 r1 = new com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayExchangeCoins$1
            r2 = r12
            r1.<init>(r12, r0)
        L1c:
            java.lang.Object r0 = r1.f43345h
            java.lang.Object r3 = kotlin.coroutines.intrinsics.a.f()
            int r4 = r1.f43347j
            r5 = 1
            if (r4 == 0) goto L3b
            if (r4 != r5) goto L33
            kotlin.f.b(r0)
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.n()
            goto L5f
        L33:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3b:
            kotlin.f.b(r0)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r0.<init>()
            r4 = 0
            r6 = r13
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = r0.u(r13, r4)
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayExchangeCoins$2 r4 = new com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayExchangeCoins$2
            r11 = 0
            r6 = r4
            r7 = r14
            r8 = r15
            r9 = r16
            r10 = r17
            r6.<init>(r7, r8, r9, r10, r11)
            r1.f43347j = r5
            java.lang.Object r0 = r0.o(r4, r1)
            if (r0 != r3) goto L5f
            return r3
        L5f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS.c(android.content.Context, com.startshorts.androidplayer.bean.purchase.CoinSku, zc.f, com.startshorts.androidplayer.bean.purchase.GPayPriceInfo, com.startshorts.androidplayer.bean.shorts.BaseEpisode, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.purchase.QueryBlackFridayCoinSkuResult>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$queryBlackFridayCoinSkuList$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$queryBlackFridayCoinSkuList$1 r0 = (com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$queryBlackFridayCoinSkuList$1) r0
            int r1 = r0.f43355j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43355j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$queryBlackFridayCoinSkuList$1 r0 = new com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$queryBlackFridayCoinSkuList$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f43353h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43355j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.n()
            goto L52
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L37:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r6.<init>()
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = r6.n()
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$queryBlackFridayCoinSkuList$2 r2 = new com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$queryBlackFridayCoinSkuList$2
            r4 = 0
            r2.<init>(r4)
            r0.f43355j = r3
            java.lang.Object r6 = r6.o(r2, r0)
            if (r6 != r1) goto L52
            return r1
        L52:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS.d(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(boolean r5, @org.jetbrains.annotations.Nullable java.lang.String r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.purchase.QueryNormalCoinSkuResult>> r7) {
        /*
            r4 = this;
            boolean r5 = r7 instanceof com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$queryNormalCoinSkuList$1
            if (r5 == 0) goto L13
            r5 = r7
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$queryNormalCoinSkuList$1 r5 = (com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$queryNormalCoinSkuList$1) r5
            int r0 = r5.f43359j
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r5.f43359j = r0
            goto L18
        L13:
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$queryNormalCoinSkuList$1 r5 = new com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$queryNormalCoinSkuList$1
            r5.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r5.f43357h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r5.f43359j
            r2 = 1
            if (r1 == 0) goto L37
            if (r1 != r2) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.n()
            goto L52
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r7 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r7.<init>()
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r7 = r7.n()
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$queryNormalCoinSkuList$2 r1 = new com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$queryNormalCoinSkuList$2
            r3 = 0
            r1.<init>(r6, r3)
            r5.f43359j = r2
            java.lang.Object r5 = r7.o(r1, r5)
            if (r5 != r0) goto L52
            return r0
        L52:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS.e(boolean, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.purchase.RefreshPayScoreResult>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$refreshPayScore$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$refreshPayScore$1 r0 = (com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$refreshPayScore$1) r0
            int r1 = r0.f43364j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43364j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$refreshPayScore$1 r0 = new com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$refreshPayScore$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f43362h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43364j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.n()
            goto L57
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L37:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r6.<init>()
            r2 = 0
            r4 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.z(r6, r2, r3, r4)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = r6.n()
            com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$refreshPayScore$2 r2 = new com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$refreshPayScore$2
            r2.<init>(r4)
            r0.f43364j = r3
            java.lang.Object r6 = r6.o(r2, r0)
            if (r6 != r1) goto L57
            return r1
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS.f(rs.c):java.lang.Object");
    }
}
