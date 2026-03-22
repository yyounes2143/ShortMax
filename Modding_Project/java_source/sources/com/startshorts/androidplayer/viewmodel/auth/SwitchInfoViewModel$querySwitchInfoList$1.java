package com.startshorts.androidplayer.viewmodel.auth;

import com.startshorts.androidplayer.bean.auth.SwitchInfoList;
import com.startshorts.androidplayer.repo.p004switch.SwitchRepo;
import com.startshorts.androidplayer.viewmodel.auth.g;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SwitchViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.auth.SwitchInfoViewModel$querySwitchInfoList$1", f = "SwitchViewModel.kt", l = {53}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SwitchInfoViewModel$querySwitchInfoList$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48260h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SwitchInfoViewModel f48261i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwitchInfoViewModel$querySwitchInfoList$1(SwitchInfoViewModel switchInfoViewModel, rs.c<? super SwitchInfoViewModel$querySwitchInfoList$1> cVar) {
        super(2, cVar);
        this.f48261i = switchInfoViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new SwitchInfoViewModel$querySwitchInfoList$1(this.f48261i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((SwitchInfoViewModel$querySwitchInfoList$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object d10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48260h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                d10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            SwitchRepo switchRepo = SwitchRepo.f44618a;
            this.f48260h = 1;
            d10 = switchRepo.d(this);
            if (d10 == f10) {
                return f10;
            }
        }
        SwitchInfoViewModel switchInfoViewModel = this.f48261i;
        if (Result.j(d10)) {
            o.b(switchInfoViewModel.B(), new g.b((SwitchInfoList) d10));
        }
        SwitchInfoViewModel switchInfoViewModel2 = this.f48261i;
        Throwable g10 = Result.g(d10);
        if (g10 != null) {
            switchInfoViewModel2.z(g10);
        }
        return Unit.f60915a;
    }
}
