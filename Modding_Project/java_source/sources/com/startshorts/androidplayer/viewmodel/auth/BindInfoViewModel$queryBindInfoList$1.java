package com.startshorts.androidplayer.viewmodel.auth;

import com.startshorts.androidplayer.repo.bind.BindRepo;
import com.startshorts.androidplayer.viewmodel.auth.b;
import gt.g0;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: BindViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.auth.BindInfoViewModel$queryBindInfoList$1", f = "BindViewModel.kt", l = {84}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class BindInfoViewModel$queryBindInfoList$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48215h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BindInfoViewModel f48216i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BindInfoViewModel$queryBindInfoList$1(BindInfoViewModel bindInfoViewModel, rs.c<? super BindInfoViewModel$queryBindInfoList$1> cVar) {
        super(2, cVar);
        this.f48216i = bindInfoViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new BindInfoViewModel$queryBindInfoList$1(this.f48216i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((BindInfoViewModel$queryBindInfoList$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object d10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48215h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                d10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            BindRepo bindRepo = BindRepo.f43572a;
            this.f48215h = 1;
            d10 = bindRepo.d(this);
            if (d10 == f10) {
                return f10;
            }
        }
        BindInfoViewModel bindInfoViewModel = this.f48216i;
        if (Result.j(d10)) {
            o.b(bindInfoViewModel.D(), new b.c((List) d10));
        }
        BindInfoViewModel bindInfoViewModel2 = this.f48216i;
        Throwable g10 = Result.g(d10);
        if (g10 != null) {
            bindInfoViewModel2.z(g10);
        }
        return Unit.f60915a;
    }
}
