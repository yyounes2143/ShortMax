package com.startshorts.androidplayer.repo.config;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: QueryDeferredDelegate.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.QueryDeferredDelegate", f = "QueryDeferredDelegate.kt", l = {51}, m = "awaitQueryResult")
/* loaded from: classes7.dex */
public final class QueryDeferredDelegate$awaitQueryResult$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f43782h;

    /* renamed from: i  reason: collision with root package name */
    Object f43783i;

    /* renamed from: j  reason: collision with root package name */
    Object f43784j;

    /* renamed from: k  reason: collision with root package name */
    /* synthetic */ Object f43785k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ QueryDeferredDelegate f43786l;

    /* renamed from: m  reason: collision with root package name */
    int f43787m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QueryDeferredDelegate$awaitQueryResult$1(QueryDeferredDelegate queryDeferredDelegate, c<? super QueryDeferredDelegate$awaitQueryResult$1> cVar) {
        super(cVar);
        this.f43786l = queryDeferredDelegate;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43785k = obj;
        this.f43787m |= Integer.MIN_VALUE;
        return this.f43786l.a(null, null, this);
    }
}
