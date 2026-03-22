package com.startshorts.androidplayer.viewmodel.comingsoon;

import com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo;
import com.startshorts.androidplayer.viewmodel.comingsoon.b;
import gt.g0;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: ComingSoonViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.comingsoon.ComingSoonViewModel$loadShortcutConfig$1", f = "ComingSoonViewModel.kt", l = {60}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class ComingSoonViewModel$loadShortcutConfig$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48428h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ComingSoonViewModel f48429i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComingSoonViewModel$loadShortcutConfig$1(ComingSoonViewModel comingSoonViewModel, c<? super ComingSoonViewModel$loadShortcutConfig$1> cVar) {
        super(2, cVar);
        this.f48429i = comingSoonViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ComingSoonViewModel$loadShortcutConfig$1(this.f48429i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ComingSoonViewModel$loadShortcutConfig$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10;
        Object f11 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48428h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                f10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            ComingSoonRepo comingSoonRepo = ComingSoonRepo.f43745a;
            this.f48428h = 1;
            f10 = comingSoonRepo.f(this);
            if (f10 == f11) {
                return f11;
            }
        }
        ComingSoonViewModel comingSoonViewModel = this.f48429i;
        if (Result.j(f10)) {
            o.b(comingSoonViewModel.C(), new b.C0656b((List) f10));
        }
        return Unit.f60915a;
    }
}
