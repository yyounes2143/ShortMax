package androidx.compose.animation.core;

import androidx.compose.runtime.Stable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qt.d;
import rs.c;
/* compiled from: InternalMutatorMutex.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public final class MutatorMutex {
    @NotNull
    private final AtomicReference<Mutator> currentMutator = new AtomicReference<>(null);
    @NotNull
    private final qt.a mutex = d.b(false, 1, null);

    /* compiled from: InternalMutatorMutex.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Mutator {
        @NotNull
        private final r job;
        @NotNull
        private final MutatePriority priority;

        public Mutator(@NotNull MutatePriority priority, @NotNull r job) {
            Intrinsics.checkNotNullParameter(priority, "priority");
            Intrinsics.checkNotNullParameter(job, "job");
            this.priority = priority;
            this.job = job;
        }

        public final boolean canInterrupt(@NotNull Mutator other) {
            Intrinsics.checkNotNullParameter(other, "other");
            if (this.priority.compareTo(other.priority) >= 0) {
                return true;
            }
            return false;
        }

        public final void cancel() {
            r.a.b(this.job, null, 1, null);
        }

        @NotNull
        public final r getJob() {
            return this.job;
        }

        @NotNull
        public final MutatePriority getPriority() {
            return this.priority;
        }
    }

    public static /* synthetic */ Object mutate$default(MutatorMutex mutatorMutex, MutatePriority mutatePriority, Function1 function1, c cVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return mutatorMutex.mutate(mutatePriority, function1, cVar);
    }

    public static /* synthetic */ Object mutateWith$default(MutatorMutex mutatorMutex, Object obj, MutatePriority mutatePriority, Function2 function2, c cVar, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return mutatorMutex.mutateWith(obj, mutatePriority, function2, cVar);
    }

    public final void tryMutateOrCancel(Mutator mutator) {
        Mutator mutator2;
        do {
            mutator2 = this.currentMutator.get();
            if (mutator2 != null && !mutator.canInterrupt(mutator2)) {
                throw new CancellationException("Current mutation had a higher priority");
            }
        } while (!a.a(this.currentMutator, mutator2, mutator));
        if (mutator2 != null) {
            mutator2.cancel();
        }
    }

    @Nullable
    public final <R> Object mutate(@NotNull MutatePriority mutatePriority, @NotNull Function1<? super c<? super R>, ? extends Object> function1, @NotNull c<? super R> cVar) {
        return i.f(new MutatorMutex$mutate$2(mutatePriority, this, function1, null), cVar);
    }

    @Nullable
    public final <T, R> Object mutateWith(T t10, @NotNull MutatePriority mutatePriority, @NotNull Function2<? super T, ? super c<? super R>, ? extends Object> function2, @NotNull c<? super R> cVar) {
        return i.f(new MutatorMutex$mutateWith$2(mutatePriority, this, function2, t10, null), cVar);
    }
}
