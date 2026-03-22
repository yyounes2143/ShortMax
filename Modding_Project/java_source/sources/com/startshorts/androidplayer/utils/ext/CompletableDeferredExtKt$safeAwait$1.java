package com.startshorts.androidplayer.utils.ext;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CompletableDeferredExt.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.ext.CompletableDeferredExtKt", f = "CompletableDeferredExt.kt", l = {19, 21}, m = "safeAwait")
/* loaded from: classes7.dex */
public final class CompletableDeferredExtKt$safeAwait$1<T> extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f48193h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f48194i;

    /* renamed from: j  reason: collision with root package name */
    int f48195j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompletableDeferredExtKt$safeAwait$1(c<? super CompletableDeferredExtKt$safeAwait$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f48194i = obj;
        this.f48195j |= Integer.MIN_VALUE;
        Object b10 = CompletableDeferredExtKt.b(null, null, this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
