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
/* compiled from: WatchHistoryRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRepo", f = "WatchHistoryRepo.kt", l = {15}, m = "queryWatchHistoriesSimple-0E7RQCE")
/* loaded from: classes7.dex */
public final class WatchHistoryRepo$queryWatchHistoriesSimple$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44294h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ WatchHistoryRepo f44295i;

    /* renamed from: j  reason: collision with root package name */
    int f44296j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchHistoryRepo$queryWatchHistoriesSimple$1(WatchHistoryRepo watchHistoryRepo, c<? super WatchHistoryRepo$queryWatchHistoriesSimple$1> cVar) {
        super(cVar);
        this.f44295i = watchHistoryRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44294h = obj;
        this.f44296j |= Integer.MIN_VALUE;
        Object f10 = this.f44295i.f(0L, 0, this);
        if (f10 == a.f()) {
            return f10;
        }
        return Result.b(f10);
    }
}
