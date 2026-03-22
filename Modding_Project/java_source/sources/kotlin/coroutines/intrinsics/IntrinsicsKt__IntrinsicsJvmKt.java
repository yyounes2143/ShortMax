package kotlin.coroutines.intrinsics;

import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IntrinsicsJvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\nIntrinsicsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n1#1,269:1\n204#1,4:270\n225#1:274\n204#1,4:275\n225#1:279\n*S KotlinDebug\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n130#1:270,4\n130#1:274\n165#1:275,4\n165#1:279\n*E\n"})
/* loaded from: classes8.dex */
public class IntrinsicsKt__IntrinsicsJvmKt {
    @NotNull
    public static <R, T> c<Unit> a(@NotNull final Function2<? super R, ? super c<? super T>, ? extends Object> function2, final R r10, @NotNull c<? super T> completion) {
        Intrinsics.checkNotNullParameter(function2, "<this>");
        Intrinsics.checkNotNullParameter(completion, "completion");
        final c<?> a10 = f.a(completion);
        if (function2 instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) function2).create(r10, a10);
        }
        final CoroutineContext context = a10.getContext();
        if (context == EmptyCoroutineContext.f61040a) {
            return new RestrictedContinuationImpl(a10, function2, r10) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3

                /* renamed from: h  reason: collision with root package name */
                private int f61044h;

                /* renamed from: i  reason: collision with root package name */
                final /* synthetic */ Function2 f61045i;

                /* renamed from: j  reason: collision with root package name */
                final /* synthetic */ Object f61046j;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(a10);
                    this.f61045i = function2;
                    this.f61046j = r10;
                    Intrinsics.checkNotNull(a10, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                protected Object invokeSuspend(Object obj) {
                    int i10 = this.f61044h;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            this.f61044h = 2;
                            kotlin.f.b(obj);
                            return obj;
                        }
                        throw new IllegalStateException("This coroutine had already completed");
                    }
                    this.f61044h = 1;
                    kotlin.f.b(obj);
                    Intrinsics.checkNotNull(this.f61045i, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted>, kotlin.Any?>");
                    return ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(this.f61045i, 2)).invoke(this.f61046j, this);
                }
            };
        }
        return new ContinuationImpl(a10, context, function2, r10) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4

            /* renamed from: h  reason: collision with root package name */
            private int f61047h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ Function2 f61048i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ Object f61049j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(a10, context);
                this.f61048i = function2;
                this.f61049j = r10;
                Intrinsics.checkNotNull(a10, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            protected Object invokeSuspend(Object obj) {
                int i10 = this.f61047h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        this.f61047h = 2;
                        kotlin.f.b(obj);
                        return obj;
                    }
                    throw new IllegalStateException("This coroutine had already completed");
                }
                this.f61047h = 1;
                kotlin.f.b(obj);
                Intrinsics.checkNotNull(this.f61048i, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted>, kotlin.Any?>");
                return ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(this.f61048i, 2)).invoke(this.f61049j, this);
            }
        };
    }

    private static final <T> c<T> b(final c<? super T> cVar) {
        final CoroutineContext context = cVar.getContext();
        if (context == EmptyCoroutineContext.f61040a) {
            return new RestrictedContinuationImpl(cVar) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(cVar);
                    Intrinsics.checkNotNull(cVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                protected Object invokeSuspend(Object obj) {
                    kotlin.f.b(obj);
                    return obj;
                }
            };
        }
        return new ContinuationImpl(cVar, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(cVar, context);
                Intrinsics.checkNotNull(cVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            protected Object invokeSuspend(Object obj) {
                kotlin.f.b(obj);
                return obj;
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static <T> c<T> c(@NotNull c<? super T> cVar) {
        ContinuationImpl continuationImpl;
        c<T> cVar2;
        Intrinsics.checkNotNullParameter(cVar, "<this>");
        if (cVar instanceof ContinuationImpl) {
            continuationImpl = (ContinuationImpl) cVar;
        } else {
            continuationImpl = null;
        }
        if (continuationImpl != null && (cVar2 = (c<T>) continuationImpl.intercepted()) != null) {
            return cVar2;
        }
        return cVar;
    }

    @Nullable
    public static <R, P, T> Object d(@NotNull n<? super R, ? super P, ? super c<? super T>, ? extends Object> nVar, R r10, P p10, @NotNull c<? super T> completion) {
        Intrinsics.checkNotNullParameter(nVar, "<this>");
        Intrinsics.checkNotNullParameter(completion, "completion");
        return ((n) TypeIntrinsics.beforeCheckcastToFunctionOfArity(nVar, 3)).invoke(r10, p10, b(f.a(completion)));
    }

    @Nullable
    public static <R, T> Object e(@NotNull Function2<? super R, ? super c<? super T>, ? extends Object> function2, R r10, @NotNull c<? super T> completion) {
        Intrinsics.checkNotNullParameter(function2, "<this>");
        Intrinsics.checkNotNullParameter(completion, "completion");
        return ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r10, b(f.a(completion)));
    }
}
