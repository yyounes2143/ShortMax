package com.startshorts.androidplayer.viewmodel.mylist;

import android.content.Context;
import com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRepo;
import com.startshorts.androidplayer.viewmodel.mylist.e;
import gt.g0;
import java.util.List;
import jk.l;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* compiled from: WatchHistoryViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.mylist.WatchHistoryViewModel$deleteWatchHistories$1", f = "WatchHistoryViewModel.kt", l = {99}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class WatchHistoryViewModel$deleteWatchHistories$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48869h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Context f48870i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ List<Long> f48871j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ WatchHistoryViewModel f48872k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchHistoryViewModel$deleteWatchHistories$1(Context context, List<Long> list, WatchHistoryViewModel watchHistoryViewModel, rs.c<? super WatchHistoryViewModel$deleteWatchHistories$1> cVar) {
        super(2, cVar);
        this.f48870i = context;
        this.f48871j = list;
        this.f48872k = watchHistoryViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new WatchHistoryViewModel$deleteWatchHistories$1(this.f48870i, this.f48871j, this.f48872k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((WatchHistoryViewModel$deleteWatchHistories$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object b10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48869h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                b10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            WatchHistoryRepo watchHistoryRepo = WatchHistoryRepo.f44286a;
            Context context = this.f48870i;
            String d10 = l.d(this.f48871j);
            this.f48869h = 1;
            b10 = watchHistoryRepo.b(context, d10, this);
            if (b10 == f10) {
                return f10;
            }
        }
        WatchHistoryViewModel watchHistoryViewModel = this.f48872k;
        List<Long> list = this.f48871j;
        if (Result.j(b10)) {
            watchHistoryViewModel.G().postValue(new e.a(list));
        }
        return Unit.f60915a;
    }
}
