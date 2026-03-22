package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: PausableComposition.kt */
@Metadata
/* loaded from: classes.dex */
public final class PausedCompositionState {
    private static final /* synthetic */ ss.a $ENTRIES;
    private static final /* synthetic */ PausedCompositionState[] $VALUES;
    public static final PausedCompositionState Invalid = new PausedCompositionState("Invalid", 0);
    public static final PausedCompositionState Cancelled = new PausedCompositionState("Cancelled", 1);
    public static final PausedCompositionState InitialPending = new PausedCompositionState("InitialPending", 2);
    public static final PausedCompositionState RecomposePending = new PausedCompositionState("RecomposePending", 3);
    public static final PausedCompositionState Recomposing = new PausedCompositionState("Recomposing", 4);
    public static final PausedCompositionState ApplyPending = new PausedCompositionState("ApplyPending", 5);
    public static final PausedCompositionState Applied = new PausedCompositionState("Applied", 6);

    private static final /* synthetic */ PausedCompositionState[] $values() {
        return new PausedCompositionState[]{Invalid, Cancelled, InitialPending, RecomposePending, Recomposing, ApplyPending, Applied};
    }

    static {
        PausedCompositionState[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private PausedCompositionState(String str, int i10) {
    }

    @NotNull
    public static ss.a<PausedCompositionState> getEntries() {
        return $ENTRIES;
    }

    public static PausedCompositionState valueOf(String str) {
        return (PausedCompositionState) Enum.valueOf(PausedCompositionState.class, str);
    }

    public static PausedCompositionState[] values() {
        return (PausedCompositionState[]) $VALUES.clone();
    }
}
