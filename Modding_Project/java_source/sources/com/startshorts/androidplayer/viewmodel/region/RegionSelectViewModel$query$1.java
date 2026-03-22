package com.startshorts.androidplayer.viewmodel.region;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.repo.region.RegionRepo;
import com.startshorts.androidplayer.viewmodel.region.RegionSelectViewModel;
import gt.g0;
import java.util.ArrayList;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RegionSelectViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.region.RegionSelectViewModel$query$1", f = "RegionSelectViewModel.kt", l = {20}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class RegionSelectViewModel$query$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49084h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RegionSelectViewModel f49085i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RegionSelectViewModel$query$1(RegionSelectViewModel regionSelectViewModel, c<? super RegionSelectViewModel$query$1> cVar) {
        super(2, cVar);
        this.f49085i = regionSelectViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new RegionSelectViewModel$query$1(this.f49085i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((RegionSelectViewModel$query$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object a10;
        Object f10 = a.f();
        int i10 = this.f49084h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                a10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            RegionRepo regionRepo = RegionRepo.f44446a;
            this.f49084h = 1;
            a10 = regionRepo.a(this);
            if (a10 == f10) {
                return f10;
            }
        }
        RegionSelectViewModel regionSelectViewModel = this.f49085i;
        if (Result.j(a10)) {
            List list = (List) a10;
            o.b(regionSelectViewModel.C(), kotlin.coroutines.jvm.internal.a.a(false));
            MutableLiveData<RegionSelectViewModel.a.C0680a> D = regionSelectViewModel.D();
            if (list == null) {
                list = new ArrayList();
            }
            o.b(D, new RegionSelectViewModel.a.C0680a(list));
        }
        RegionSelectViewModel regionSelectViewModel2 = this.f49085i;
        Throwable g10 = Result.g(a10);
        if (g10 != null) {
            regionSelectViewModel2.E(g10);
        }
        return Unit.f60915a;
    }
}
