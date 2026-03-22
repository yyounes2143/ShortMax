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
@d(c = "com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRepo", f = "WatchHistoryRepo.kt", l = {22}, m = "deleteWatchHistories-0E7RQCE")
/* loaded from: classes7.dex */
public final class WatchHistoryRepo$deleteWatchHistories$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44288h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ WatchHistoryRepo f44289i;

    /* renamed from: j  reason: collision with root package name */
    int f44290j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchHistoryRepo$deleteWatchHistories$1(WatchHistoryRepo watchHistoryRepo, c<? super WatchHistoryRepo$deleteWatchHistories$1> cVar) {
        super(cVar);
        this.f44289i = watchHistoryRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44288h = obj;
        this.f44290j |= Integer.MIN_VALUE;
        Object b10 = this.f44289i.b(null, null, this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
