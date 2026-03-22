package com.startshorts.androidplayer.viewmodel.comingsoon;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo;
import com.startshorts.androidplayer.viewmodel.comingsoon.b;
import gt.g0;
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
@d(c = "com.startshorts.androidplayer.viewmodel.comingsoon.ComingSoonViewModel$checkShortsReservation$1", f = "ComingSoonViewModel.kt", l = {53}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class ComingSoonViewModel$checkShortsReservation$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48424h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f48425i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f48426j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ComingSoonViewModel f48427k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComingSoonViewModel$checkShortsReservation$1(String str, int i10, ComingSoonViewModel comingSoonViewModel, c<? super ComingSoonViewModel$checkShortsReservation$1> cVar) {
        super(2, cVar);
        this.f48425i = str;
        this.f48426j = i10;
        this.f48427k = comingSoonViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ComingSoonViewModel$checkShortsReservation$1(this.f48425i, this.f48426j, this.f48427k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ComingSoonViewModel$checkShortsReservation$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object d10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48424h;
        boolean z10 = true;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                d10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            ComingSoonRepo comingSoonRepo = ComingSoonRepo.f43745a;
            String str = this.f48425i;
            int i11 = this.f48426j;
            this.f48424h = 1;
            d10 = comingSoonRepo.d(str, i11, this);
            if (d10 == f10) {
                return f10;
            }
        }
        ComingSoonViewModel comingSoonViewModel = this.f48427k;
        int i12 = this.f48426j;
        if (Result.j(d10)) {
            MutableLiveData<b> C = comingSoonViewModel.C();
            if (d10 == null) {
                z10 = false;
            }
            o.b(C, new b.a(i12, z10));
        }
        return Unit.f60915a;
    }
}
