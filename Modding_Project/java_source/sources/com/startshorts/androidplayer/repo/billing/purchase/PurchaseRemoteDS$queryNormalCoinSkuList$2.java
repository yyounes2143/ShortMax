package com.startshorts.androidplayer.repo.billing.purchase;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.purchase.QueryNormalCoinSkuResult;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
import ud.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PurchaseRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$queryNormalCoinSkuList$2", f = "PurchaseRemoteDS.kt", l = {33}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PurchaseRemoteDS$queryNormalCoinSkuList$2 extends SuspendLambda implements Function1<c<? super ServerResult<QueryNormalCoinSkuResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43360h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43361i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseRemoteDS$queryNormalCoinSkuList$2(String str, c<? super PurchaseRemoteDS$queryNormalCoinSkuList$2> cVar) {
        super(1, cVar);
        this.f43361i = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new PurchaseRemoteDS$queryNormalCoinSkuList$2(this.f43361i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43360h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            b bVar = b.f68412a;
            long Z1 = bVar.Z1();
            k.a j10 = k.f41787a.j();
            String i02 = bVar.i0();
            String str = this.f43361i;
            this.f43360h = 1;
            obj = j10.X1(null, i02, str, Z1, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<QueryNormalCoinSkuResult>> cVar) {
        return ((PurchaseRemoteDS$queryNormalCoinSkuList$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
