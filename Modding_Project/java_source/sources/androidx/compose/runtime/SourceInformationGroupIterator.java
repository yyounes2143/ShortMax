package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionGroup;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: SlotTable.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SourceInformationGroupIterator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,4061:1\n1#2:4062\n*E\n"})
/* loaded from: classes.dex */
final class SourceInformationGroupIterator implements Iterator<CompositionGroup>, KMappedMarker {
    @NotNull
    private final GroupSourceInformation group;
    private int index;
    private final int parent;
    @NotNull
    private final SourceInformationGroupPath path;
    @NotNull
    private final SlotTable table;
    private final int version;

    public SourceInformationGroupIterator(@NotNull SlotTable slotTable, int i10, @NotNull GroupSourceInformation groupSourceInformation, @NotNull SourceInformationGroupPath sourceInformationGroupPath) {
        this.table = slotTable;
        this.parent = i10;
        this.group = groupSourceInformation;
        this.path = sourceInformationGroupPath;
        this.version = slotTable.getVersion$runtime();
    }

    @NotNull
    public final GroupSourceInformation getGroup() {
        return this.group;
    }

    public final int getParent() {
        return this.parent;
    }

    @NotNull
    public final SourceInformationGroupPath getPath() {
        return this.path;
    }

    @NotNull
    public final SlotTable getTable() {
        return this.table;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        ArrayList<Object> groups = this.group.getGroups();
        if (groups == null || this.index >= groups.size()) {
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    @NotNull
    public CompositionGroup next() {
        Object obj;
        ArrayList<Object> groups = this.group.getGroups();
        if (groups != null) {
            int i10 = this.index;
            this.index = i10 + 1;
            obj = groups.get(i10);
        } else {
            obj = null;
        }
        if (obj instanceof Anchor) {
            return new SlotTableGroup(this.table, ((Anchor) obj).getLocation$runtime(), this.version);
        }
        if (obj instanceof GroupSourceInformation) {
            return new SourceInformationSlotTableGroup(this.table, this.parent, (GroupSourceInformation) obj, new RelativeGroupPath(this.path, this.index - 1));
        }
        ComposerKt.composeRuntimeError("Unexpected group information structure");
        throw new KotlinNothingValueException();
    }
}
