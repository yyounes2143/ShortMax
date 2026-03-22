package com.unity3d.services.core.extensions;

import gt.g;
import gt.g0;
import gt.k0;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qt.a;
import rs.c;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: CoroutineExtensions.kt */
@Metadata
@d(c = "com.unity3d.services.core.extensions.CoroutineExtensionsKt$memoize$2", f = "CoroutineExtensions.kt", l = {53, 45}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nCoroutineExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt$memoize$2\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,47:1\n107#2,8:48\n116#2:63\n115#2,2:64\n361#3,7:56\n*S KotlinDebug\n*F\n+ 1 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt$memoize$2\n*L\n40#1:48,8\n40#1:63\n40#1:64,2\n41#1:56,7\n*E\n"})
/* loaded from: classes7.dex */
public final class CoroutineExtensionsKt$memoize$2<T> extends SuspendLambda implements Function2<g0, c<? super T>, Object> {
    final /* synthetic */ Function1<c<? super T>, Object> $action;
    final /* synthetic */ Object $key;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CoroutineExtensionsKt$memoize$2(Object obj, Function1<? super c<? super T>, ? extends Object> function1, c<? super CoroutineExtensionsKt$memoize$2> cVar) {
        super(2, cVar);
        this.$key = obj;
        this.$action = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        CoroutineExtensionsKt$memoize$2 coroutineExtensionsKt$memoize$2 = new CoroutineExtensionsKt$memoize$2(this.$key, this.$action, cVar);
        coroutineExtensionsKt$memoize$2.L$0 = obj;
        return coroutineExtensionsKt$memoize$2;
    }

    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super T> cVar) {
        return ((CoroutineExtensionsKt$memoize$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        g0 g0Var;
        a mutex;
        Function1<c<? super T>, Object> function1;
        Object obj2;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        f.b(obj);
                        return obj;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) this.L$3;
                obj2 = this.L$2;
                mutex = (a) this.L$1;
                g0Var = (g0) this.L$0;
                f.b(obj);
            } else {
                f.b(obj);
                g0Var = (g0) this.L$0;
                mutex = CoroutineExtensionsKt.getMutex();
                Object obj3 = this.$key;
                function1 = this.$action;
                this.L$0 = g0Var;
                this.L$1 = mutex;
                this.L$2 = obj3;
                this.L$3 = function1;
                this.label = 1;
                if (mutex.lock(null, this) == f10) {
                    return f10;
                }
                obj2 = obj3;
            }
            LinkedHashMap<Object, k0<?>> deferreds = CoroutineExtensionsKt.getDeferreds();
            k0<?> k0Var = deferreds.get(obj2);
            if (k0Var == null) {
                k0Var = g.b(g0Var, null, null, new CoroutineExtensionsKt$memoize$2$deferred$1$1$1(function1, null), 3, null);
                deferreds.put(obj2, k0Var);
            }
            k0<?> k0Var2 = k0Var;
            mutex.unlock(null);
            this.L$0 = null;
            this.L$1 = null;
            this.L$2 = null;
            this.L$3 = null;
            this.label = 2;
            obj = k0Var2.await(this);
            if (obj == f10) {
                return f10;
            }
            return obj;
        } catch (Throwable th2) {
            mutex.unlock(null);
            throw th2;
        }
    }

    @Nullable
    public final Object invokeSuspend$$forInline(@NotNull Object obj) {
        g0 g0Var = (g0) this.L$0;
        a mutex = CoroutineExtensionsKt.getMutex();
        Object obj2 = this.$key;
        Function1<c<? super T>, Object> function1 = this.$action;
        InlineMarker.mark(0);
        mutex.lock(null, this);
        InlineMarker.mark(1);
        try {
            LinkedHashMap<Object, k0<?>> deferreds = CoroutineExtensionsKt.getDeferreds();
            k0<?> k0Var = deferreds.get(obj2);
            if (k0Var == null) {
                k0Var = g.b(g0Var, null, null, new CoroutineExtensionsKt$memoize$2$deferred$1$1$1(function1, null), 3, null);
                deferreds.put(obj2, k0Var);
            }
            k0<?> k0Var2 = k0Var;
            mutex.unlock(null);
            InlineMarker.mark(0);
            Object await = k0Var2.await(this);
            InlineMarker.mark(1);
            return await;
        } catch (Throwable th2) {
            mutex.unlock(null);
            throw th2;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (c) ((c) obj));
    }
}
