package com.moloco.sdk.internal.utils;

import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class a {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.utils.CoroutineUtilsKt$withReentrantLock$2", f = "CoroutineUtils.kt", l = {54, 37}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nCoroutineUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineUtils.kt\ncom/moloco/sdk/internal/utils/CoroutineUtilsKt$withReentrantLock$2\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,48:1\n116#2,11:49\n*S KotlinDebug\n*F\n+ 1 CoroutineUtils.kt\ncom/moloco/sdk/internal/utils/CoroutineUtilsKt$withReentrantLock$2\n*L\n37#1:49,11\n*E\n"})
    /* renamed from: com.moloco.sdk.internal.utils.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0493a<T> extends SuspendLambda implements Function2<g0, rs.c<? super T>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f33584h;

        /* renamed from: i  reason: collision with root package name */
        public Object f33585i;

        /* renamed from: j  reason: collision with root package name */
        public int f33586j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ qt.a f33587k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Function1<rs.c<? super T>, Object> f33588l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C0493a(qt.a aVar, Function1<? super rs.c<? super T>, ? extends Object> function1, rs.c<? super C0493a> cVar) {
            super(2, cVar);
            this.f33587k = aVar;
            this.f33588l = function1;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super T> cVar) {
            return ((C0493a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new C0493a(this.f33587k, this.f33588l, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            qt.a aVar;
            Function1<rs.c<? super T>, Object> function1;
            qt.a aVar2;
            Throwable th2;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33586j;
            try {
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            aVar2 = (qt.a) this.f33584h;
                            try {
                                kotlin.f.b(obj);
                                aVar2.unlock(null);
                                return obj;
                            } catch (Throwable th3) {
                                th2 = th3;
                                aVar2.unlock(null);
                                throw th2;
                            }
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    function1 = (Function1) this.f33585i;
                    kotlin.f.b(obj);
                    aVar = (qt.a) this.f33584h;
                } else {
                    kotlin.f.b(obj);
                    aVar = this.f33587k;
                    function1 = this.f33588l;
                    this.f33584h = aVar;
                    this.f33585i = function1;
                    this.f33586j = 1;
                    if (aVar.lock(null, this) == f10) {
                        return f10;
                    }
                }
                this.f33584h = aVar;
                this.f33585i = null;
                this.f33586j = 2;
                Object invoke = function1.invoke(this);
                if (invoke == f10) {
                    return f10;
                }
                aVar2 = aVar;
                obj = invoke;
                aVar2.unlock(null);
                return obj;
            } catch (Throwable th4) {
                aVar2 = aVar;
                th2 = th4;
                aVar2.unlock(null);
                throw th2;
            }
        }
    }

    @Nullable
    public static final <T> Object a(@NotNull qt.a aVar, @NotNull Function1<? super rs.c<? super T>, ? extends Object> function1, @NotNull rs.c<? super T> cVar) {
        f fVar = new f(aVar);
        if (cVar.getContext().get(fVar) != null) {
            return function1.invoke(cVar);
        }
        return gt.e.g(new e(fVar), new C0493a(aVar, function1, null), cVar);
    }
}
