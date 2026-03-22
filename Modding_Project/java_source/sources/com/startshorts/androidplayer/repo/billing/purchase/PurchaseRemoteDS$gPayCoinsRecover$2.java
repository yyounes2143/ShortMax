package com.startshorts.androidplayer.repo.billing.purchase;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.purchase.GPayCoinsRecover;
import com.startshorts.androidplayer.bean.purchase.GPayCoinsRecoverResponse;
import com.startshorts.androidplayer.manager.api.base.k;
import java.util.List;
import jk.l;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PurchaseRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayCoinsRecover$2", f = "PurchaseRemoteDS.kt", l = {99}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PurchaseRemoteDS$gPayCoinsRecover$2 extends SuspendLambda implements Function1<c<? super ServerResult<GPayCoinsRecoverResponse>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43343h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ List<GPayCoinsRecover> f43344i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseRemoteDS$gPayCoinsRecover$2(List<GPayCoinsRecover> list, c<? super PurchaseRemoteDS$gPayCoinsRecover$2> cVar) {
        super(1, cVar);
        this.f43344i = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new PurchaseRemoteDS$gPayCoinsRecover$2(this.f43344i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43343h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            String d10 = l.d(this.f43344i);
            this.f43343h = 1;
            obj = j10.D1(d10, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<GPayCoinsRecoverResponse>> cVar) {
        return ((PurchaseRemoteDS$gPayCoinsRecover$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
