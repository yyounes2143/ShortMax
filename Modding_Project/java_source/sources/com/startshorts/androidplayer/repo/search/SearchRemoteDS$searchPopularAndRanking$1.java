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
/* compiled from: SearchRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.search.SearchRemoteDS", f = "SearchRemoteDS.kt", l = {45}, m = "searchPopularAndRanking-yxL6bBk")
/* loaded from: classes7.dex */
public final class SearchRemoteDS$searchPopularAndRanking$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44575h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SearchRemoteDS f44576i;

    /* renamed from: j  reason: collision with root package name */
    int f44577j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchRemoteDS$searchPopularAndRanking$1(SearchRemoteDS searchRemoteDS, c<? super SearchRemoteDS$searchPopularAndRanking$1> cVar) {
        super(cVar);
        this.f44576i = searchRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44575h = obj;
        this.f44577j |= Integer.MIN_VALUE;
        Object c10 = this.f44576i.c(0, 0, null, null, this);
        if (c10 == a.f()) {
            return c10;
        }
        return Result.b(c10);
    }
}
