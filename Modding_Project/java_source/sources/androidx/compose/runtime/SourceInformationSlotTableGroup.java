package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionGroup;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SlotTable.kt */
@Metadata
/* loaded from: classes.dex */
final class SourceInformationSlotTableGroup implements CompositionGroup, Iterable<CompositionGroup>, KMappedMarker {
    @NotNull
    private final Iterable<CompositionGroup> compositionGroups = this;
    @NotNull
    private final SourceInformationGroupPath identityPath;
    @NotNull
    private final Object key;
    private final int parent;
    @NotNull
    private final GroupSourceInformation sourceInformation;
    @NotNull
    private final SlotTable table;

    public SourceInformationSlotTableGroup(@NotNull SlotTable slotTable, int i10, @NotNull GroupSourceInformation groupSourceInformation, @NotNull SourceInformationGroupPath sourceInformationGroupPath) {
        this.table = slotTable;
        this.parent = i10;
        this.sourceInformation = groupSourceInformation;
        this.identityPath = sourceInformationGroupPath;
        this.key = Integer.valueOf(groupSourceInformation.getKey());
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    @NotNull
    public Iterable<CompositionGroup> getCompositionGroups() {
        return this.compositionGroups;
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    @NotNull
    public Iterable<Object> getData() {
        return new SourceInformationGroupDataIterator(this.table, this.parent, this.sourceInformation);
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    @NotNull
    public Object getIdentity() {
        return this.identityPath.getIdentity(this.table);
    }

    @NotNull
    public final SourceInformationGroupPath getIdentityPath() {
        return this.identityPath;
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    @NotNull
    public Object getKey() {
        return this.key;
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    @Nullable
    public Object getNode() {
        return null;
    }

    public final int getParent() {
        return this.parent;
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    @Nullable
    public String getSourceInfo() {
        return this.sourceInformation.getSourceInformation();
    }

    @NotNull
    public final GroupSourceInformation getSourceInformation() {
        return this.sourceInformation;
    }

    @NotNull
    public final SlotTable getTable() {
        return this.table;
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    public boolean isEmpty() {
        ArrayList<Object> groups = this.sourceInformation.getGroups();
        boolean z10 = false;
        if (groups != null && !groups.isEmpty()) {
            z10 = true;
        }
        return !z10;
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<CompositionGroup> iterator() {
        return new SourceInformationGroupIterator(this.table, this.parent, this.sourceInformation, this.identityPath);
    }
}
