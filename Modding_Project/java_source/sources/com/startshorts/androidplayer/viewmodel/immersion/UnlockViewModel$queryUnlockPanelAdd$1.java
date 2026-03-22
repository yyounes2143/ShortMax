package com.startshorts.androidplayer.viewmodel.immersion;

import com.startshorts.androidplayer.repo.unlock.UnlockRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import ve.h;
/* compiled from: UnlockViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel$queryUnlockPanelAdd$1", f = "UnlockViewModel.kt", l = {408}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class UnlockViewModel$queryUnlockPanelAdd$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48673h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnlockViewModel$queryUnlockPanelAdd$1(rs.c<? super UnlockViewModel$queryUnlockPanelAdd$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new UnlockViewModel$queryUnlockPanelAdd$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((UnlockViewModel$queryUnlockPanelAdd$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48673h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            UnlockRepo unlockRepo = UnlockRepo.f44686a;
            String m10 = h.f68906a.m();
            this.f48673h = 1;
            if (unlockRepo.p(m10, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
