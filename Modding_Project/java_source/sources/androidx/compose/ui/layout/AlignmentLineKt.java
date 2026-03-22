package androidx.compose.ui.layout;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AlignmentLine.kt */
@Metadata
/* loaded from: classes.dex */
public final class AlignmentLineKt {
    @NotNull
    private static final HorizontalAlignmentLine FirstBaseline = new HorizontalAlignmentLine(AlignmentLineKt$FirstBaseline$1.INSTANCE);
    @NotNull
    private static final HorizontalAlignmentLine LastBaseline = new HorizontalAlignmentLine(AlignmentLineKt$LastBaseline$1.INSTANCE);

    @NotNull
    public static final HorizontalAlignmentLine getFirstBaseline() {
        return FirstBaseline;
    }

    @NotNull
    public static final HorizontalAlignmentLine getLastBaseline() {
        return LastBaseline;
    }

    public static final int merge(@NotNull AlignmentLine alignmentLine, int i10, int i11) {
        Intrinsics.checkNotNullParameter(alignmentLine, "<this>");
        return alignmentLine.getMerger$ui_release().invoke(Integer.valueOf(i10), Integer.valueOf(i11)).intValue();
    }
}
