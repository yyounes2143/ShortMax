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
@d(c = "com.startshorts.androidplayer.repo.search.SearchRepo", f = "SearchRepo.kt", l = {24}, m = "searchFuzzy-BWLJW6A")
/* loaded from: classes7.dex */
public final class SearchRepo$searchFuzzy$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44592h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SearchRepo f44593i;

    /* renamed from: j  reason: collision with root package name */
    int f44594j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchRepo$searchFuzzy$1(SearchRepo searchRepo, c<? super SearchRepo$searchFuzzy$1> cVar) {
        super(cVar);
        this.f44593i = searchRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44592h = obj;
        this.f44594j |= Integer.MIN_VALUE;
        Object j10 = this.f44593i.j(null, 0, 0, this);
        if (j10 == a.f()) {
            return j10;
        }
        return Result.b(j10);
    }
}
