package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
/* compiled from: SemanticsProperties.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class CollectionItemInfo {
    public static final int $stable = 0;
    private final int columnIndex;
    private final int columnSpan;
    private final int rowIndex;
    private final int rowSpan;

    public CollectionItemInfo(int i10, int i11, int i12, int i13) {
        this.rowIndex = i10;
        this.rowSpan = i11;
        this.columnIndex = i12;
        this.columnSpan = i13;
    }

    public final int getColumnIndex() {
        return this.columnIndex;
    }

    public final int getColumnSpan() {
        return this.columnSpan;
    }

    public final int getRowIndex() {
        return this.rowIndex;
    }

    public final int getRowSpan() {
        return this.rowSpan;
    }
}
