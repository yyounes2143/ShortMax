package com.startshorts.androidplayer.repo.payment;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PaymentRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class PaymentRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final PaymentRepo f44308a = new PaymentRepo();

    private PaymentRepo() {
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(@org.jetbrains.annotations.Nullable java.lang.String r6, @org.jetbrains.annotations.Nullable java.lang.Integer r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.payment.TTPInfoResult>> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.repo.payment.PaymentRepo$queryTTPInfo$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.repo.payment.PaymentRepo$queryTTPInfo$1 r0 = (com.startshorts.androidplayer.repo.payment.PaymentRepo$queryTTPInfo$1) r0
            int r1 = r0.f44311j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44311j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.payment.PaymentRepo$queryTTPInfo$1 r0 = new com.startshorts.androidplayer.repo.payment.PaymentRepo$queryTTPInfo$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f44309h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44311j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r6 = r8.n()
            goto L52
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r8 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r8.<init>()
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r8 = r8.n()
            com.startshorts.androidplayer.repo.payment.PaymentRepo$queryTTPInfo$2 r2 = new com.startshorts.androidplayer.repo.payment.PaymentRepo$queryTTPInfo$2
            r4 = 0
            r2.<init>(r6, r7, r4)
            r0.f44311j = r3
            java.lang.Object r6 = r8.o(r2, r0)
            if (r6 != r1) goto L52
            return r1
        L52:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.payment.PaymentRepo.a(java.lang.String, java.lang.Integer, rs.c):java.lang.Object");
    }
}
