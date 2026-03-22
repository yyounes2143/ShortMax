package com.startshorts.androidplayer.viewmodel.mylist;

import com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRepo;
import com.startshorts.androidplayer.viewmodel.mylist.e;
import gt.g0;
import java.util.List;
import jk.z;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WatchHistoryViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.mylist.WatchHistoryViewModel$queryWatchHistoriesSimple$1", f = "WatchHistoryViewModel.kt", l = {80}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class WatchHistoryViewModel$queryWatchHistoriesSimple$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48877h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ long f48878i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f48879j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ WatchHistoryViewModel f48880k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchHistoryViewModel$queryWatchHistoriesSimple$1(long j10, int i10, WatchHistoryViewModel watchHistoryViewModel, rs.c<? super WatchHistoryViewModel$queryWatchHistoriesSimple$1> cVar) {
        super(2, cVar);
        this.f48878i = j10;
        this.f48879j = i10;
        this.f48880k = watchHistoryViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new WatchHistoryViewModel$queryWatchHistoriesSimple$1(this.f48878i, this.f48879j, this.f48880k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((WatchHistoryViewModel$queryWatchHistoriesSimple$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10;
        Object f11 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48877h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                f10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            WatchHistoryRepo watchHistoryRepo = WatchHistoryRepo.f44286a;
            long j10 = this.f48878i;
            int i11 = this.f48879j;
            this.f48877h = 1;
            f10 = watchHistoryRepo.f(j10, i11, this);
            if (f10 == f11) {
                return f11;
            }
        }
        WatchHistoryViewModel watchHistoryViewModel = this.f48880k;
        if (Result.j(f10)) {
            watchHistoryViewModel.f48867e = false;
            watchHistoryViewModel.G().postValue(new e.b((List) f10));
        }
        WatchHistoryViewModel watchHistoryViewModel2 = this.f48880k;
        Throwable g10 = Result.g(f10);
        if (g10 != null) {
            watchHistoryViewModel2.H(z.a(g10));
        }
        return Unit.f60915a;
    }
}
