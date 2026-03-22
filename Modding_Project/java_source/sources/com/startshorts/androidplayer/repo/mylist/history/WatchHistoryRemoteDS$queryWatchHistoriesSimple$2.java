package com.startshorts.androidplayer.repo.mylist.history;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.mylist.WatchHistory;
import com.startshorts.androidplayer.manager.api.base.k;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WatchHistoryRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$queryWatchHistoriesSimple$2", f = "WatchHistoryRemoteDS.kt", l = {19}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class WatchHistoryRemoteDS$queryWatchHistoriesSimple$2 extends SuspendLambda implements Function1<c<? super ServerResult<List<WatchHistory>>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44283h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ long f44284i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f44285j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchHistoryRemoteDS$queryWatchHistoriesSimple$2(long j10, int i10, c<? super WatchHistoryRemoteDS$queryWatchHistoriesSimple$2> cVar) {
        super(1, cVar);
        this.f44284i = j10;
        this.f44285j = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new WatchHistoryRemoteDS$queryWatchHistoriesSimple$2(this.f44284i, this.f44285j, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44283h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            long j11 = this.f44284i;
            int i11 = this.f44285j;
            this.f44283h = 1;
            obj = j10.Q0(j11, i11, 1, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<List<WatchHistory>>> cVar) {
        return ((WatchHistoryRemoteDS$queryWatchHistoriesSimple$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
