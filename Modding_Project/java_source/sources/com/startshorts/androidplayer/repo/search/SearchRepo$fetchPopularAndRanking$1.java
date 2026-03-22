package com.startshorts.androidplayer.repo.search;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SearchRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.search.SearchRepo", f = "SearchRepo.kt", l = {18}, m = "fetchPopularAndRanking-0E7RQCE")
/* loaded from: classes7.dex */
public final class SearchRepo$fetchPopularAndRanking$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44586h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SearchRepo f44587i;

    /* renamed from: j  reason: collision with root package name */
    int f44588j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchRepo$fetchPopularAndRanking$1(SearchRepo searchRepo, c<? super SearchRepo$fetchPopularAndRanking$1> cVar) {
        super(cVar);
        this.f44587i = searchRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44586h = obj;
        this.f44588j |= Integer.MIN_VALUE;
        Object d10 = this.f44587i.d(0, 0, this);
        if (d10 == a.f()) {
            return d10;
        }
        return Result.b(d10);
    }
}
