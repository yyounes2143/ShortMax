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
@d(c = "com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS", f = "WatchHistoryRemoteDS.kt", l = {32}, m = "deleteWatchHistories-0E7RQCE")
/* loaded from: classes7.dex */
public final class WatchHistoryRemoteDS$deleteWatchHistories$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44269h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ WatchHistoryRemoteDS f44270i;

    /* renamed from: j  reason: collision with root package name */
    int f44271j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchHistoryRemoteDS$deleteWatchHistories$1(WatchHistoryRemoteDS watchHistoryRemoteDS, c<? super WatchHistoryRemoteDS$deleteWatchHistories$1> cVar) {
        super(cVar);
        this.f44270i = watchHistoryRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44269h = obj;
        this.f44271j |= Integer.MIN_VALUE;
        Object a10 = this.f44270i.a(null, null, this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
