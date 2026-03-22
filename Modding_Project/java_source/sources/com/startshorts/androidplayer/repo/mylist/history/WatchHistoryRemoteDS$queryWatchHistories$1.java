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
@d(c = "com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS", f = "WatchHistoryRemoteDS.kt", l = {25}, m = "queryWatchHistories-0E7RQCE")
/* loaded from: classes7.dex */
public final class WatchHistoryRemoteDS$queryWatchHistories$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44274h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ WatchHistoryRemoteDS f44275i;

    /* renamed from: j  reason: collision with root package name */
    int f44276j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchHistoryRemoteDS$queryWatchHistories$1(WatchHistoryRemoteDS watchHistoryRemoteDS, c<? super WatchHistoryRemoteDS$queryWatchHistories$1> cVar) {
        super(cVar);
        this.f44275i = watchHistoryRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44274h = obj;
        this.f44276j |= Integer.MIN_VALUE;
        Object b10 = this.f44275i.b(0L, 0, this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
