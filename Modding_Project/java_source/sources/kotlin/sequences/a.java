package kotlin.sequences;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SequencesJVM.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a<T> implements Sequence<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<Sequence<T>> f61102a;

    public a(@NotNull Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        this.f61102a = new AtomicReference<>(sequence);
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<T> iterator() {
        Sequence<T> andSet = this.f61102a.getAndSet(null);
        if (andSet != null) {
            return andSet.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
