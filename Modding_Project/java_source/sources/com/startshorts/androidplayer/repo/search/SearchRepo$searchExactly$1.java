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
@d(c = "com.startshorts.androidplayer.repo.search.SearchRepo", f = "SearchRepo.kt", l = {30}, m = "searchExactly-hUnOzRk")
/* loaded from: classes7.dex */
public final class SearchRepo$searchExactly$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44589h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SearchRepo f44590i;

    /* renamed from: j  reason: collision with root package name */
    int f44591j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchRepo$searchExactly$1(SearchRepo searchRepo, c<? super SearchRepo$searchExactly$1> cVar) {
        super(cVar);
        this.f44590i = searchRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44589h = obj;
        this.f44591j |= Integer.MIN_VALUE;
        Object i10 = this.f44590i.i(null, 0, 0, null, null, this);
        if (i10 == a.f()) {
            return i10;
        }
        return Result.b(i10);
    }
}
