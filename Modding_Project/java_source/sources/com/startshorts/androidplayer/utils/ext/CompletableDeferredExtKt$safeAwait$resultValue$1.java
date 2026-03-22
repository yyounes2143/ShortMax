package com.startshorts.androidplayer.utils.ext;

import gt.g0;
import gt.p;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: CompletableDeferredExt.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.ext.CompletableDeferredExtKt$safeAwait$resultValue$1", f = "CompletableDeferredExt.kt", l = {22}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class CompletableDeferredExtKt$safeAwait$resultValue$1<T> extends SuspendLambda implements Function2<g0, c<? super T>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48196h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ p<T> f48197i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CompletableDeferredExtKt$safeAwait$resultValue$1(p<T> pVar, c<? super CompletableDeferredExtKt$safeAwait$resultValue$1> cVar) {
        super(2, cVar);
        this.f48197i = pVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new CompletableDeferredExtKt$safeAwait$resultValue$1(this.f48197i, cVar);
    }

    public final Object invoke(g0 g0Var, c<? super T> cVar) {
        return ((CompletableDeferredExtKt$safeAwait$resultValue$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f48196h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            p<T> pVar = this.f48197i;
            this.f48196h = 1;
            obj = pVar.await(this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (c) ((c) obj));
    }
}
