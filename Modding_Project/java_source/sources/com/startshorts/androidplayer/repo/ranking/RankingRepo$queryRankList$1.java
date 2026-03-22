package com.startshorts.androidplayer.repo.ranking;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RankingRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.ranking.RankingRepo", f = "RankingRepo.kt", l = {20}, m = "queryRankList-bMdYcbs")
/* loaded from: classes7.dex */
public final class RankingRepo$queryRankList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44436h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RankingRepo f44437i;

    /* renamed from: j  reason: collision with root package name */
    int f44438j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RankingRepo$queryRankList$1(RankingRepo rankingRepo, c<? super RankingRepo$queryRankList$1> cVar) {
        super(cVar);
        this.f44437i = rankingRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44436h = obj;
        this.f44438j |= Integer.MIN_VALUE;
        Object a10 = this.f44437i.a(null, null, 0, 0, null, null, this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
