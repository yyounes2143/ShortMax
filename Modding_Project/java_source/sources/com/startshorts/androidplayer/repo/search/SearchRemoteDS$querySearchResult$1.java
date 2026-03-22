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
@d(c = "com.startshorts.androidplayer.repo.search.SearchRemoteDS", f = "SearchRemoteDS.kt", l = {17}, m = "querySearchResult-BWLJW6A")
/* loaded from: classes7.dex */
public final class SearchRemoteDS$querySearchResult$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44559h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SearchRemoteDS f44560i;

    /* renamed from: j  reason: collision with root package name */
    int f44561j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchRemoteDS$querySearchResult$1(SearchRemoteDS searchRemoteDS, c<? super SearchRemoteDS$querySearchResult$1> cVar) {
        super(cVar);
        this.f44560i = searchRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44559h = obj;
        this.f44561j |= Integer.MIN_VALUE;
        Object a10 = this.f44560i.a(null, 0, 0, this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
