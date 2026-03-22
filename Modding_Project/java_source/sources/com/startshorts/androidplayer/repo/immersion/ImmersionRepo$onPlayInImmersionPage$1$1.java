package com.startshorts.androidplayer.repo.immersion;

import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.repo.immersion.a;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRepo$onPlayInImmersionPage$1$1", f = "ImmersionRepo.kt", l = {225}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionRepo$onPlayInImmersionPage$1$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44133h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ a.b f44134i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRepo$onPlayInImmersionPage$1$1(a.b bVar, c<? super ImmersionRepo$onPlayInImmersionPage$1$1> cVar) {
        super(2, cVar);
        this.f44134i = bVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ImmersionRepo$onPlayInImmersionPage$1$1(this.f44134i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ImmersionRepo$onPlayInImmersionPage$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object d02;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44133h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                d02 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            BillingRepo billingRepo = BillingRepo.f43237a;
            this.f44133h = 1;
            d02 = billingRepo.d0(1, this);
            if (d02 == f10) {
                return f10;
            }
        }
        a.b bVar = this.f44134i;
        if (Result.j(d02)) {
            bVar.e();
        }
        a.b bVar2 = this.f44134i;
        if (Result.g(d02) != null) {
            bVar2.d();
        }
        return Unit.f60915a;
    }
}
