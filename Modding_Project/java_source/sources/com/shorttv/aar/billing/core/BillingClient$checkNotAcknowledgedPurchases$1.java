package com.shorttv.aar.billing.core;

import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BillingClient.kt */
@Metadata
@d(c = "com.shorttv.aar.billing.core.BillingClient$checkNotAcknowledgedPurchases$1", f = "BillingClient.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_GET_CUR_UI_FPS, MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class BillingClient$checkNotAcknowledgedPurchases$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f37011h;

    /* renamed from: i  reason: collision with root package name */
    int f37012i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ BillingClient f37013j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingClient$checkNotAcknowledgedPurchases$1(BillingClient billingClient, c<? super BillingClient$checkNotAcknowledgedPurchases$1> cVar) {
        super(2, cVar);
        this.f37013j = billingClient;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new BillingClient$checkNotAcknowledgedPurchases$1(this.f37013j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((BillingClient$checkNotAcknowledgedPurchases$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0089  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r6.f37012i
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L26
            if (r1 == r3) goto L1e
            if (r1 != r2) goto L16
            java.lang.Object r0 = r6.f37011h
            java.util.List r0 = (java.util.List) r0
            kotlin.f.b(r7)
            goto L6f
        L16:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L1e:
            java.lang.Object r1 = r6.f37011h
            java.util.List r1 = (java.util.List) r1
            kotlin.f.b(r7)
            goto L40
        L26:
            kotlin.f.b(r7)
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            com.shorttv.aar.billing.core.BillingClient r1 = r6.f37013j
            r6.f37011h = r7
            r6.f37012i = r3
            java.lang.String r4 = "inapp"
            java.lang.Object r1 = r1.F(r4, r6)
            if (r1 != r0) goto L3d
            return r0
        L3d:
            r5 = r1
            r1 = r7
            r7 = r5
        L40:
            java.util.List r7 = (java.util.List) r7
            java.util.Collection r7 = (java.util.Collection) r7
            if (r7 == 0) goto L50
            boolean r4 = r7.isEmpty()
            if (r4 == 0) goto L4d
            goto L50
        L4d:
            r1.addAll(r7)
        L50:
            com.shorttv.aar.billing.core.BillingClient r7 = r6.f37013j
            zc.j r7 = com.shorttv.aar.billing.core.BillingClient.n(r7)
            if (r7 == 0) goto L80
            boolean r7 = r7.c()
            if (r7 != r3) goto L80
            com.shorttv.aar.billing.core.BillingClient r7 = r6.f37013j
            r6.f37011h = r1
            r6.f37012i = r2
            java.lang.String r2 = "subs"
            java.lang.Object r7 = r7.F(r2, r6)
            if (r7 != r0) goto L6e
            return r0
        L6e:
            r0 = r1
        L6f:
            java.util.List r7 = (java.util.List) r7
            java.util.Collection r7 = (java.util.Collection) r7
            if (r7 == 0) goto L7f
            boolean r1 = r7.isEmpty()
            if (r1 == 0) goto L7c
            goto L7f
        L7c:
            r0.addAll(r7)
        L7f:
            r1 = r0
        L80:
            r7 = r1
            java.util.Collection r7 = (java.util.Collection) r7
            boolean r7 = r7.isEmpty()
            if (r7 != 0) goto L8e
            com.shorttv.aar.billing.core.BillingClient r7 = r6.f37013j
            com.shorttv.aar.billing.core.BillingClient.v(r7, r1)
        L8e:
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shorttv.aar.billing.core.BillingClient$checkNotAcknowledgedPurchases$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
