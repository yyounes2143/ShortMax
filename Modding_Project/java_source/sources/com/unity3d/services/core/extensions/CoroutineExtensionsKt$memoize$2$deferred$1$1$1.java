package com.unity3d.services.core.extensions;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: CoroutineExtensions.kt */
@Metadata
@d(c = "com.unity3d.services.core.extensions.CoroutineExtensionsKt$memoize$2$deferred$1$1$1", f = "CoroutineExtensions.kt", l = {41}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nCoroutineExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt$memoize$2$deferred$1$1$1\n*L\n1#1,47:1\n*E\n"})
/* loaded from: classes7.dex */
public final class CoroutineExtensionsKt$memoize$2$deferred$1$1$1<T> extends SuspendLambda implements Function2<g0, c<? super T>, Object> {
    final /* synthetic */ Function1<c<? super T>, Object> $action;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CoroutineExtensionsKt$memoize$2$deferred$1$1$1(Function1<? super c<? super T>, ? extends Object> function1, c<? super CoroutineExtensionsKt$memoize$2$deferred$1$1$1> cVar) {
        super(2, cVar);
        this.$action = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new CoroutineExtensionsKt$memoize$2$deferred$1$1$1(this.$action, cVar);
    }

    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super T> cVar) {
        return ((CoroutineExtensionsKt$memoize$2$deferred$1$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Function1<c<? super T>, Object> function1 = this.$action;
            this.label = 1;
            obj = function1.invoke(this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Nullable
    public final Object invokeSuspend$$forInline(@NotNull Object obj) {
        return this.$action.invoke(this);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (c) ((c) obj));
    }
}
