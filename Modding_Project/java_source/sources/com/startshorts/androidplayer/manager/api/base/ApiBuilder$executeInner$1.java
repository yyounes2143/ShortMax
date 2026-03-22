package com.startshorts.androidplayer.manager.api.base;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ApiBuilder.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.api.base.ApiBuilder", f = "ApiBuilder.kt", l = {83}, m = "executeInner-gIAlu-s")
/* loaded from: classes6.dex */
public final class ApiBuilder$executeInner$1<T> extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f41772h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f41773i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ApiBuilder f41774j;

    /* renamed from: k  reason: collision with root package name */
    int f41775k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApiBuilder$executeInner$1(ApiBuilder apiBuilder, rs.c<? super ApiBuilder$executeInner$1> cVar) {
        super(cVar);
        this.f41774j = apiBuilder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object p10;
        this.f41773i = obj;
        this.f41775k |= Integer.MIN_VALUE;
        p10 = this.f41774j.p(null, this);
        if (p10 == kotlin.coroutines.intrinsics.a.f()) {
            return p10;
        }
        return Result.b(p10);
    }
}
