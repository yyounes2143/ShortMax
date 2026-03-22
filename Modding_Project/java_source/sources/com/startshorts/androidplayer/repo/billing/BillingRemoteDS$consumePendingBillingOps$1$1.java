package com.startshorts.androidplayer.repo.billing;

import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.purchase.ConsumeData;
import com.startshorts.androidplayer.bean.purchase.PendingBillingOp;
import gt.g0;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BillingRemoteDS.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.repo.billing.BillingRemoteDS$consumePendingBillingOps$1$1", f = "BillingRemoteDS.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_OPEN_TIMEOUT}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class BillingRemoteDS$consumePendingBillingOps$1$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43215h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BillingRemoteDS f43216i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Map.Entry<String, PendingBillingOp> f43217j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ PendingBillingOp f43218k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingRemoteDS$consumePendingBillingOps$1$1(BillingRemoteDS billingRemoteDS, Map.Entry<String, PendingBillingOp> entry, PendingBillingOp pendingBillingOp, rs.c<? super BillingRemoteDS$consumePendingBillingOps$1$1> cVar) {
        super(2, cVar);
        this.f43216i = billingRemoteDS;
        this.f43217j = entry;
        this.f43218k = pendingBillingOp;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new BillingRemoteDS$consumePendingBillingOps$1$1(this.f43216i, this.f43217j, this.f43218k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((BillingRemoteDS$consumePendingBillingOps$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43215h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Object extra = this.f43218k.getExtra();
            Intrinsics.checkNotNull(extra, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.purchase.ConsumeData");
            this.f43215h = 1;
            if (this.f43216i.w(this.f43217j.getKey(), (ConsumeData) extra, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
