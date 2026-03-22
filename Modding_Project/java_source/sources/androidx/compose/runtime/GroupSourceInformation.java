package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SlotTable.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/GroupSourceInformation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,4061:1\n1#2:4062\n806#3,8:4063\n796#3,7:4071\n91#4:4078\n34#4,5:4079\n92#4:4084\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/GroupSourceInformation\n*L\n740#1:4063,8\n756#1:4071,7\n767#1:4078\n767#1:4079,5\n767#1:4084\n*E\n"})
/* loaded from: classes.dex */
public final class GroupSourceInformation {
    public static final int $stable = 8;
    private boolean closed;
    private int dataEndOffset;
    private final int dataStartOffset;
    @Nullable
    private ArrayList<Object> groups;
    private final int key;
    @Nullable
    private String sourceInformation;

    public GroupSourceInformation(int i10, @Nullable String str, int i11) {
        this.key = i10;
        this.sourceInformation = str;
        this.dataStartOffset = i11;
    }

    private final void add(Object obj) {
        ArrayList<Object> arrayList = this.groups;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        this.groups = arrayList;
        arrayList.add(obj);
    }

    private final boolean hasAnchor(Anchor anchor) {
        ArrayList<Object> arrayList = this.groups;
        if (arrayList == null) {
            return false;
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = arrayList.get(i10);
            if (Intrinsics.areEqual(obj, anchor) || ((obj instanceof GroupSourceInformation) && ((GroupSourceInformation) obj).hasAnchor(anchor))) {
                return true;
            }
        }
        return false;
    }

    private final GroupSourceInformation openInformation() {
        Object obj;
        GroupSourceInformation openInformation;
        ArrayList<Object> arrayList = this.groups;
        GroupSourceInformation groupSourceInformation = null;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                obj = arrayList.get(size);
                if ((obj instanceof GroupSourceInformation) && !((GroupSourceInformation) obj).closed) {
                    break;
                }
            }
        }
        obj = null;
        if (obj instanceof GroupSourceInformation) {
            groupSourceInformation = (GroupSourceInformation) obj;
        }
        if (groupSourceInformation == null || (openInformation = groupSourceInformation.openInformation()) == null) {
            return this;
        }
        return openInformation;
    }

    public final void addGroupAfter(@NotNull SlotWriter slotWriter, int i10, int i11) {
        Anchor tryAnchor$runtime;
        ArrayList<Object> arrayList = this.groups;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.groups = arrayList;
        }
        int i12 = 0;
        if (i10 >= 0 && (tryAnchor$runtime = slotWriter.tryAnchor$runtime(i10)) != null) {
            int size = arrayList.size();
            while (true) {
                if (i12 < size) {
                    Object obj = arrayList.get(i12);
                    if (Intrinsics.areEqual(obj, tryAnchor$runtime) || ((obj instanceof GroupSourceInformation) && ((GroupSourceInformation) obj).hasAnchor(tryAnchor$runtime))) {
                        break;
                    }
                    i12++;
                } else {
                    i12 = -1;
                    break;
                }
            }
        }
        arrayList.add(i12, slotWriter.anchor(i11));
    }

    public final void close(int i10) {
        this.closed = true;
        this.dataEndOffset = i10;
    }

    public final void endGrouplessCall(int i10) {
        openInformation().close(i10);
    }

    public final boolean getClosed() {
        return this.closed;
    }

    public final int getDataEndOffset() {
        return this.dataEndOffset;
    }

    public final int getDataStartOffset() {
        return this.dataStartOffset;
    }

    @Nullable
    public final ArrayList<Object> getGroups() {
        return this.groups;
    }

    public final int getKey() {
        return this.key;
    }

    @Nullable
    public final String getSourceInformation() {
        return this.sourceInformation;
    }

    public final boolean removeAnchor(@NotNull Anchor anchor) {
        ArrayList<Object> arrayList = this.groups;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                Object obj = arrayList.get(size);
                if (obj instanceof Anchor) {
                    if (Intrinsics.areEqual(obj, anchor)) {
                        arrayList.remove(size);
                    }
                } else if ((obj instanceof GroupSourceInformation) && !((GroupSourceInformation) obj).removeAnchor(anchor)) {
                    arrayList.remove(size);
                }
            }
            if (arrayList.isEmpty()) {
                this.groups = null;
                return false;
            }
        }
        return true;
    }

    public final void reportGroup(@NotNull SlotWriter slotWriter, int i10) {
        openInformation().add(slotWriter.anchor(i10));
    }

    public final void setClosed(boolean z10) {
        this.closed = z10;
    }

    public final void setDataEndOffset(int i10) {
        this.dataEndOffset = i10;
    }

    public final void setGroups(@Nullable ArrayList<Object> arrayList) {
        this.groups = arrayList;
    }

    public final void setSourceInformation(@Nullable String str) {
        this.sourceInformation = str;
    }

    public final void startGrouplessCall(int i10, @NotNull String str, int i11) {
        openInformation().add(new GroupSourceInformation(i10, str, i11));
    }

    public final void reportGroup(@NotNull SlotTable slotTable, int i10) {
        openInformation().add(slotTable.anchor(i10));
    }
}
