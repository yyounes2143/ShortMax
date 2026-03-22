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
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.mylist.WatchHistoryViewModel$queryWatchHistories$1", f = "WatchHistoryViewModel.kt", l = {63}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class WatchHistoryViewModel$queryWatchHistories$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48873h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ long f48874i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f48875j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ WatchHistoryViewModel f48876k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchHistoryViewModel$queryWatchHistories$1(long j10, int i10, WatchHistoryViewModel watchHistoryViewModel, rs.c<? super WatchHistoryViewModel$queryWatchHistories$1> cVar) {
        super(2, cVar);
        this.f48874i = j10;
        this.f48875j = i10;
        this.f48876k = watchHistoryViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new WatchHistoryViewModel$queryWatchHistories$1(this.f48874i, this.f48875j, this.f48876k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((WatchHistoryViewModel$queryWatchHistories$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object e10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48873h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                e10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            WatchHistoryRepo watchHistoryRepo = WatchHistoryRepo.f44286a;
            long j10 = this.f48874i;
            int i11 = this.f48875j;
            this.f48873h = 1;
            e10 = watchHistoryRepo.e(j10, i11, this);
            if (e10 == f10) {
                return f10;
            }
        }
        WatchHistoryViewModel watchHistoryViewModel = this.f48876k;
        if (Result.j(e10)) {
            watchHistoryViewModel.f48867e = false;
            watchHistoryViewModel.G().postValue(new e.b((List) e10));
        }
        WatchHistoryViewModel watchHistoryViewModel2 = this.f48876k;
        Throwable g10 = Result.g(e10);
        if (g10 != null) {
            watchHistoryViewModel2.H(z.a(g10));
        }
        return Unit.f60915a;
    }
}
