package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SlotTable.kt */
@Metadata
/* loaded from: classes.dex */
final class RelativeGroupPath extends SourceInformationGroupPath {
    private final int index;
    @NotNull
    private final SourceInformationGroupPath parent;

    public RelativeGroupPath(@NotNull SourceInformationGroupPath sourceInformationGroupPath, int i10) {
        super(null);
        this.parent = sourceInformationGroupPath;
        this.index = i10;
    }

    @Override // androidx.compose.runtime.SourceInformationGroupPath
    @NotNull
    public Object getIdentity(@NotNull SlotTable slotTable) {
        return new SourceInformationSlotTableGroupIdentity(this.parent.getIdentity(slotTable), this.index);
    }

    public final int getIndex() {
        return this.index;
    }

    @NotNull
    public final SourceInformationGroupPath getParent() {
        return this.parent;
    }
}
