package com.startshorts.androidplayer.repo.mylist.history;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WatchHistoryRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS", f = "WatchHistoryRemoteDS.kt", l = {18}, m = "queryWatchHistoriesSimple-0E7RQCE")
/* loaded from: classes7.dex */
public final class WatchHistoryRemoteDS$queryWatchHistoriesSimple$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44280h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ WatchHistoryRemoteDS f44281i;

    /* renamed from: j  reason: collision with root package name */
    int f44282j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchHistoryRemoteDS$queryWatchHistoriesSimple$1(WatchHistoryRemoteDS watchHistoryRemoteDS, c<? super WatchHistoryRemoteDS$queryWatchHistoriesSimple$1> cVar) {
        super(cVar);
        this.f44281i = watchHistoryRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44280h = obj;
        this.f44282j |= Integer.MIN_VALUE;
        Object c10 = this.f44281i.c(0L, 0, this);
        if (c10 == a.f()) {
            return c10;
        }
        return Result.b(c10);
    }
}
