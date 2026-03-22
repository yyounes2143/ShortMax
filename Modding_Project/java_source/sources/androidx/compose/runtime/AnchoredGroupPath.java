package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SlotTable.kt */
@Metadata
/* loaded from: classes.dex */
final class AnchoredGroupPath extends SourceInformationGroupPath {
    private final int group;

    public AnchoredGroupPath(int i10) {
        super(null);
        this.group = i10;
    }

    public final int getGroup() {
        return this.group;
    }

    @Override // androidx.compose.runtime.SourceInformationGroupPath
    @NotNull
    public Object getIdentity(@NotNull SlotTable slotTable) {
        return slotTable.anchor(this.group);
    }
}
