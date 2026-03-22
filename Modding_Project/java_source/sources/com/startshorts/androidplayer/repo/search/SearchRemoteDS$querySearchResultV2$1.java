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
@d(c = "com.startshorts.androidplayer.repo.search.SearchRemoteDS", f = "SearchRemoteDS.kt", l = {27}, m = "querySearchResultV2-hUnOzRk")
/* loaded from: classes7.dex */
public final class SearchRemoteDS$querySearchResultV2$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44566h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SearchRemoteDS f44567i;

    /* renamed from: j  reason: collision with root package name */
    int f44568j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchRemoteDS$querySearchResultV2$1(SearchRemoteDS searchRemoteDS, c<? super SearchRemoteDS$querySearchResultV2$1> cVar) {
        super(cVar);
        this.f44567i = searchRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44566h = obj;
        this.f44568j |= Integer.MIN_VALUE;
        Object b10 = this.f44567i.b(null, 0, 0, null, null, this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
