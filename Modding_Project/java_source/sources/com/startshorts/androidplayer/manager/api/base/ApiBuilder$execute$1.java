package com.startshorts.androidplayer.manager.api.base;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ApiBuilder.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.api.base.ApiBuilder", f = "ApiBuilder.kt", l = {56}, m = "execute-gIAlu-s")
/* loaded from: classes6.dex */
public final class ApiBuilder$execute$1<T> extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f41762h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ApiBuilder f41763i;

    /* renamed from: j  reason: collision with root package name */
    int f41764j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApiBuilder$execute$1(ApiBuilder apiBuilder, rs.c<? super ApiBuilder$execute$1> cVar) {
        super(cVar);
        this.f41763i = apiBuilder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f41762h = obj;
        this.f41764j |= Integer.MIN_VALUE;
        Object o10 = this.f41763i.o(null, this);
        if (o10 == kotlin.coroutines.intrinsics.a.f()) {
            return o10;
        }
        return Result.b(o10);
    }
}
