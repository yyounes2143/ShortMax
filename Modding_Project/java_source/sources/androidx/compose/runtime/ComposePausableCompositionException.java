package androidx.compose.runtime;

import androidx.collection.IntList;
import androidx.collection.ObjectList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.sequences.Sequence;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PausableComposition.kt */
@Metadata
/* loaded from: classes.dex */
final class ComposePausableCompositionException extends Exception {
    @NotNull
    private final ObjectList<Object> instances;
    private final int lastOperation;
    @NotNull
    private final IntList operations;
    @NotNull
    private final ObjectList<Object> reused;

    public ComposePausableCompositionException(@NotNull ObjectList<Object> objectList, @NotNull ObjectList<Object> objectList2, @NotNull IntList intList, int i10, @Nullable Throwable th2) {
        super(th2);
        this.instances = objectList;
        this.reused = objectList2;
        this.operations = intList;
        this.lastOperation = i10;
    }

    private final Sequence<String> operationsSequence() {
        return kotlin.sequences.j.b(new ComposePausableCompositionException$operationsSequence$1(this, null));
    }

    @Override // java.lang.Throwable
    @Nullable
    public String getMessage() {
        return StringsKt.p("\n            |Exception while applying pausable composition. Last 10 operations:\n            |" + CollectionsKt.A0(CollectionsKt.W0(kotlin.sequences.j.P(operationsSequence()), 10), "\n", null, null, 0, null, null, 62, null) + "\n            ", null, 1, null);
    }

    public static /* synthetic */ void getMessage$annotations() {
    }
}
