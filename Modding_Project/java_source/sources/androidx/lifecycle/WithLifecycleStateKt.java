package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import gt.c0;
import gt.j1;
import gt.q0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WithLifecycleState.kt */
@Metadata
@SourceDebugExtension({"SMAP\nWithLifecycleState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WithLifecycleState.kt\nandroidx/lifecycle/WithLifecycleStateKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,175:1\n127#1,8:176\n127#1,8:184\n127#1,8:192\n127#1,8:200\n43#1,5:208\n127#1,8:213\n43#1,5:221\n127#1,8:226\n127#1,8:234\n127#1,8:242\n127#1,8:250\n318#2,11:258\n*S KotlinDebug\n*F\n+ 1 WithLifecycleState.kt\nandroidx/lifecycle/WithLifecycleStateKt\n*L\n47#1:176,8\n57#1:184,8\n66#1:192,8\n75#1:200,8\n86#1:208,5\n86#1:213,8\n86#1:221,5\n86#1:226,8\n95#1:234,8\n104#1:242,8\n113#1:250,8\n148#1:258,11\n*E\n"})
/* loaded from: classes2.dex */
public final class WithLifecycleStateKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1, androidx.lifecycle.LifecycleObserver] */
    @Nullable
    public static final <R> Object suspendWithStateAtLeastUnchecked(@NotNull final Lifecycle lifecycle, @NotNull final Lifecycle.State state, boolean z10, @NotNull final c0 c0Var, @NotNull final Function0<? extends R> function0, @NotNull rs.c<? super R> cVar) {
        final kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        final ?? r12 = new LifecycleEventObserver() { // from class: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1
            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
                Object d10;
                Intrinsics.checkNotNullParameter(source, "source");
                Intrinsics.checkNotNullParameter(event, "event");
                if (event == Lifecycle.Event.Companion.upTo(Lifecycle.State.this)) {
                    lifecycle.removeObserver(this);
                    rs.c cVar2 = eVar;
                    Function0<R> function02 = function0;
                    try {
                        Result.a aVar = Result.f60901b;
                        d10 = Result.d(function02.invoke());
                    } catch (Throwable th2) {
                        Result.a aVar2 = Result.f60901b;
                        d10 = Result.d(kotlin.f.a(th2));
                    }
                    cVar2.resumeWith(d10);
                } else if (event == Lifecycle.Event.ON_DESTROY) {
                    lifecycle.removeObserver(this);
                    rs.c cVar3 = eVar;
                    Result.a aVar3 = Result.f60901b;
                    cVar3.resumeWith(Result.d(kotlin.f.a(new LifecycleDestroyedException())));
                }
            }
        };
        if (z10) {
            c0Var.dispatch(EmptyCoroutineContext.f61040a, new Runnable() { // from class: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$1
                @Override // java.lang.Runnable
                public final void run() {
                    Lifecycle.this.addObserver(r12);
                }
            });
        } else {
            lifecycle.addObserver(r12);
        }
        eVar.u(new Function1<Throwable, Unit>() { // from class: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th2) {
                c0 c0Var2 = c0.this;
                EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.f61040a;
                if (c0Var2.isDispatchNeeded(emptyCoroutineContext)) {
                    c0 c0Var3 = c0.this;
                    final Lifecycle lifecycle2 = lifecycle;
                    final WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 withLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 = r12;
                    c0Var3.dispatch(emptyCoroutineContext, new Runnable() { // from class: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            Lifecycle.this.removeObserver(withLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1);
                        }
                    });
                    return;
                }
                lifecycle.removeObserver(r12);
            }
        });
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    @Nullable
    public static final <R> Object withCreated(@NotNull Lifecycle lifecycle, @NotNull Function0<? extends R> function0, @NotNull rs.c<? super R> cVar) {
        Lifecycle.State state = Lifecycle.State.CREATED;
        j1 m10 = q0.c().m();
        boolean isDispatchNeeded = m10.isDispatchNeeded(cVar.getContext());
        if (!isDispatchNeeded) {
            if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                    return function0.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, m10, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), cVar);
    }

    private static final <R> Object withCreated$$forInline(Lifecycle lifecycle, Function0<? extends R> function0, rs.c<? super R> cVar) {
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        q0.c().m();
        InlineMarker.mark(3);
        throw null;
    }

    @Nullable
    public static final <R> Object withResumed(@NotNull Lifecycle lifecycle, @NotNull Function0<? extends R> function0, @NotNull rs.c<? super R> cVar) {
        Lifecycle.State state = Lifecycle.State.RESUMED;
        j1 m10 = q0.c().m();
        boolean isDispatchNeeded = m10.isDispatchNeeded(cVar.getContext());
        if (!isDispatchNeeded) {
            if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                    return function0.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, m10, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), cVar);
    }

    private static final <R> Object withResumed$$forInline(Lifecycle lifecycle, Function0<? extends R> function0, rs.c<? super R> cVar) {
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        q0.c().m();
        InlineMarker.mark(3);
        throw null;
    }

    @Nullable
    public static final <R> Object withStarted(@NotNull Lifecycle lifecycle, @NotNull Function0<? extends R> function0, @NotNull rs.c<? super R> cVar) {
        Lifecycle.State state = Lifecycle.State.STARTED;
        j1 m10 = q0.c().m();
        boolean isDispatchNeeded = m10.isDispatchNeeded(cVar.getContext());
        if (!isDispatchNeeded) {
            if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                    return function0.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, m10, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), cVar);
    }

    private static final <R> Object withStarted$$forInline(Lifecycle lifecycle, Function0<? extends R> function0, rs.c<? super R> cVar) {
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        q0.c().m();
        InlineMarker.mark(3);
        throw null;
    }

    @Nullable
    public static final <R> Object withStateAtLeast(@NotNull Lifecycle lifecycle, @NotNull Lifecycle.State state, @NotNull Function0<? extends R> function0, @NotNull rs.c<? super R> cVar) {
        if (state.compareTo(Lifecycle.State.CREATED) >= 0) {
            j1 m10 = q0.c().m();
            boolean isDispatchNeeded = m10.isDispatchNeeded(cVar.getContext());
            if (!isDispatchNeeded) {
                if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                    if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                        return function0.invoke();
                    }
                } else {
                    throw new LifecycleDestroyedException();
                }
            }
            return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, m10, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), cVar);
        }
        throw new IllegalArgumentException(("target state must be CREATED or greater, found " + state).toString());
    }

    private static final <R> Object withStateAtLeast$$forInline(Lifecycle lifecycle, Lifecycle.State state, Function0<? extends R> function0, rs.c<? super R> cVar) {
        if (state.compareTo(Lifecycle.State.CREATED) >= 0) {
            q0.c().m();
            InlineMarker.mark(3);
            throw null;
        }
        throw new IllegalArgumentException(("target state must be CREATED or greater, found " + state).toString());
    }

    @Nullable
    public static final <R> Object withStateAtLeastUnchecked(@NotNull Lifecycle lifecycle, @NotNull Lifecycle.State state, @NotNull Function0<? extends R> function0, @NotNull rs.c<? super R> cVar) {
        j1 m10 = q0.c().m();
        boolean isDispatchNeeded = m10.isDispatchNeeded(cVar.getContext());
        if (!isDispatchNeeded) {
            if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                    return function0.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, m10, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), cVar);
    }

    private static final <R> Object withStateAtLeastUnchecked$$forInline(Lifecycle lifecycle, Lifecycle.State state, Function0<? extends R> function0, rs.c<? super R> cVar) {
        q0.c().m();
        InlineMarker.mark(3);
        throw null;
    }

    private static final <R> Object withCreated$$forInline(LifecycleOwner lifecycleOwner, Function0<? extends R> function0, rs.c<? super R> cVar) {
        lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        q0.c().m();
        InlineMarker.mark(3);
        throw null;
    }

    private static final <R> Object withResumed$$forInline(LifecycleOwner lifecycleOwner, Function0<? extends R> function0, rs.c<? super R> cVar) {
        lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        q0.c().m();
        InlineMarker.mark(3);
        throw null;
    }

    private static final <R> Object withStarted$$forInline(LifecycleOwner lifecycleOwner, Function0<? extends R> function0, rs.c<? super R> cVar) {
        lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        q0.c().m();
        InlineMarker.mark(3);
        throw null;
    }

    private static final <R> Object withStateAtLeast$$forInline(LifecycleOwner lifecycleOwner, Lifecycle.State state, Function0<? extends R> function0, rs.c<? super R> cVar) {
        lifecycleOwner.getLifecycle();
        if (state.compareTo(Lifecycle.State.CREATED) >= 0) {
            q0.c().m();
            InlineMarker.mark(3);
            throw null;
        }
        throw new IllegalArgumentException(("target state must be CREATED or greater, found " + state).toString());
    }

    @Nullable
    public static final <R> Object withCreated(@NotNull LifecycleOwner lifecycleOwner, @NotNull Function0<? extends R> function0, @NotNull rs.c<? super R> cVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.CREATED;
        j1 m10 = q0.c().m();
        boolean isDispatchNeeded = m10.isDispatchNeeded(cVar.getContext());
        if (!isDispatchNeeded) {
            if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                    return function0.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, m10, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), cVar);
    }

    @Nullable
    public static final <R> Object withResumed(@NotNull LifecycleOwner lifecycleOwner, @NotNull Function0<? extends R> function0, @NotNull rs.c<? super R> cVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.RESUMED;
        j1 m10 = q0.c().m();
        boolean isDispatchNeeded = m10.isDispatchNeeded(cVar.getContext());
        if (!isDispatchNeeded) {
            if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                    return function0.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, m10, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), cVar);
    }

    @Nullable
    public static final <R> Object withStarted(@NotNull LifecycleOwner lifecycleOwner, @NotNull Function0<? extends R> function0, @NotNull rs.c<? super R> cVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.STARTED;
        j1 m10 = q0.c().m();
        boolean isDispatchNeeded = m10.isDispatchNeeded(cVar.getContext());
        if (!isDispatchNeeded) {
            if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                    return function0.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, m10, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), cVar);
    }

    @Nullable
    public static final <R> Object withStateAtLeast(@NotNull LifecycleOwner lifecycleOwner, @NotNull Lifecycle.State state, @NotNull Function0<? extends R> function0, @NotNull rs.c<? super R> cVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (state.compareTo(Lifecycle.State.CREATED) >= 0) {
            j1 m10 = q0.c().m();
            boolean isDispatchNeeded = m10.isDispatchNeeded(cVar.getContext());
            if (!isDispatchNeeded) {
                if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                    if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                        return function0.invoke();
                    }
                } else {
                    throw new LifecycleDestroyedException();
                }
            }
            return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, m10, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), cVar);
        }
        throw new IllegalArgumentException(("target state must be CREATED or greater, found " + state).toString());
    }
}
