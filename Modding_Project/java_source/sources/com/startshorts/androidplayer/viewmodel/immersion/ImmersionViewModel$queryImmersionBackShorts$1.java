package com.startshorts.androidplayer.viewmodel.immersion;

import com.startshorts.androidplayer.repo.immersion.ImmersionRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: ImmersionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$queryImmersionBackShorts$1", f = "ImmersionViewModel.kt", l = {725}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class ImmersionViewModel$queryImmersionBackShorts$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48640h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f48641i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionViewModel$queryImmersionBackShorts$1(int i10, rs.c<? super ImmersionViewModel$queryImmersionBackShorts$1> cVar) {
        super(2, cVar);
        this.f48641i = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ImmersionViewModel$queryImmersionBackShorts$1(this.f48641i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ImmersionViewModel$queryImmersionBackShorts$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48640h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            ImmersionRepo immersionRepo = ImmersionRepo.f44129a;
            int i11 = this.f48641i;
            this.f48640h = 1;
            if (immersionRepo.u(i11, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
