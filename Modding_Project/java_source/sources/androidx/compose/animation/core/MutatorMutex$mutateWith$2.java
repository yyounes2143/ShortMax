package androidx.compose.animation.core;

import androidx.compose.animation.core.MutatorMutex;
import gt.g0;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: InternalMutatorMutex.kt */
@Metadata
@d(c = "androidx.compose.animation.core.MutatorMutex$mutateWith$2", f = "InternalMutatorMutex.kt", l = {171, 158}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class MutatorMutex$mutateWith$2<R> extends SuspendLambda implements Function2<g0, c<? super R>, Object> {
    final /* synthetic */ Function2<T, c<? super R>, Object> $block;
    final /* synthetic */ MutatePriority $priority;
    final /* synthetic */ T $receiver;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    final /* synthetic */ MutatorMutex this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MutatorMutex$mutateWith$2(MutatePriority mutatePriority, MutatorMutex mutatorMutex, Function2<? super T, ? super c<? super R>, ? extends Object> function2, T t10, c<? super MutatorMutex$mutateWith$2> cVar) {
        super(2, cVar);
        this.$priority = mutatePriority;
        this.this$0 = mutatorMutex;
        this.$block = function2;
        this.$receiver = t10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        MutatorMutex$mutateWith$2 mutatorMutex$mutateWith$2 = new MutatorMutex$mutateWith$2(this.$priority, this.this$0, this.$block, this.$receiver, cVar);
        mutatorMutex$mutateWith$2.L$0 = obj;
        return mutatorMutex$mutateWith$2;
    }

    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super R> cVar) {
        return ((MutatorMutex$mutateWith$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [qt.a, int] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        qt.a aVar;
        Function2 function2;
        Object obj2;
        MutatorMutex.Mutator mutator;
        MutatorMutex mutatorMutex;
        MutatorMutex.Mutator mutator2;
        Throwable th2;
        MutatorMutex mutatorMutex2;
        qt.a aVar2;
        AtomicReference atomicReference;
        AtomicReference atomicReference2;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        ?? r12 = this.label;
        try {
            try {
                if (r12 != 0) {
                    if (r12 != 1) {
                        if (r12 == 2) {
                            mutatorMutex2 = (MutatorMutex) this.L$2;
                            aVar2 = (qt.a) this.L$1;
                            mutator2 = (MutatorMutex.Mutator) this.L$0;
                            try {
                                f.b(obj);
                                atomicReference2 = mutatorMutex2.currentMutator;
                                a.a(atomicReference2, mutator2, null);
                                aVar2.unlock(null);
                                return obj;
                            } catch (Throwable th3) {
                                th2 = th3;
                                atomicReference = mutatorMutex2.currentMutator;
                                a.a(atomicReference, mutator2, null);
                                throw th2;
                            }
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    mutatorMutex = (MutatorMutex) this.L$4;
                    obj2 = this.L$3;
                    function2 = (Function2) this.L$2;
                    mutator = (MutatorMutex.Mutator) this.L$0;
                    f.b(obj);
                    aVar = (qt.a) this.L$1;
                } else {
                    f.b(obj);
                    MutatePriority mutatePriority = this.$priority;
                    CoroutineContext.Element element = ((g0) this.L$0).getCoroutineContext().get(r.G8);
                    Intrinsics.checkNotNull(element);
                    MutatorMutex.Mutator mutator3 = new MutatorMutex.Mutator(mutatePriority, (r) element);
                    this.this$0.tryMutateOrCancel(mutator3);
                    aVar = this.this$0.mutex;
                    function2 = this.$block;
                    Object obj3 = this.$receiver;
                    MutatorMutex mutatorMutex3 = this.this$0;
                    this.L$0 = mutator3;
                    this.L$1 = aVar;
                    this.L$2 = function2;
                    this.L$3 = obj3;
                    this.L$4 = mutatorMutex3;
                    this.label = 1;
                    if (aVar.lock(null, this) == f10) {
                        return f10;
                    }
                    obj2 = obj3;
                    mutator = mutator3;
                    mutatorMutex = mutatorMutex3;
                }
                this.L$0 = mutator;
                this.L$1 = aVar;
                this.L$2 = mutatorMutex;
                this.L$3 = null;
                this.L$4 = null;
                this.label = 2;
                Object invoke = function2.invoke(obj2, this);
                if (invoke == f10) {
                    return f10;
                }
                mutatorMutex2 = mutatorMutex;
                aVar2 = aVar;
                obj = invoke;
                mutator2 = mutator;
                atomicReference2 = mutatorMutex2.currentMutator;
                a.a(atomicReference2, mutator2, null);
                aVar2.unlock(null);
                return obj;
            } catch (Throwable th4) {
                mutator2 = mutator;
                th2 = th4;
                mutatorMutex2 = mutatorMutex;
                atomicReference = mutatorMutex2.currentMutator;
                a.a(atomicReference, mutator2, null);
                throw th2;
            }
        } catch (Throwable th5) {
            r12.unlock(null);
            throw th5;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (c) ((c) obj));
    }
}
