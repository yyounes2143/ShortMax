package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
/* compiled from: SemanticsProperties.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class CollectionInfo {
    public static final int $stable = 0;
    private final int columnCount;
    private final int rowCount;

    public CollectionInfo(int i10, int i11) {
        this.rowCount = i10;
        this.columnCount = i11;
    }

    public final int getColumnCount() {
        return this.columnCount;
    }

    public final int getRowCount() {
        return this.rowCount;
    }
}
