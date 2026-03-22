package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SlotTable.kt */
@Metadata
/* loaded from: classes.dex */
final class SourceInformationSlotTableGroupIdentity {
    private final int index;
    @NotNull
    private final Object parentIdentity;

    public SourceInformationSlotTableGroupIdentity(@NotNull Object obj, int i10) {
        this.parentIdentity = obj;
        this.index = i10;
    }

    public static /* synthetic */ SourceInformationSlotTableGroupIdentity copy$default(SourceInformationSlotTableGroupIdentity sourceInformationSlotTableGroupIdentity, Object obj, int i10, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            obj = sourceInformationSlotTableGroupIdentity.parentIdentity;
        }
        if ((i11 & 2) != 0) {
            i10 = sourceInformationSlotTableGroupIdentity.index;
        }
        return sourceInformationSlotTableGroupIdentity.copy(obj, i10);
    }

    @NotNull
    public final Object component1() {
        return this.parentIdentity;
    }

    public final int component2() {
        return this.index;
    }

    @NotNull
    public final SourceInformationSlotTableGroupIdentity copy(@NotNull Object obj, int i10) {
        return new SourceInformationSlotTableGroupIdentity(obj, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SourceInformationSlotTableGroupIdentity)) {
            return false;
        }
        SourceInformationSlotTableGroupIdentity sourceInformationSlotTableGroupIdentity = (SourceInformationSlotTableGroupIdentity) obj;
        if (Intrinsics.areEqual(this.parentIdentity, sourceInformationSlotTableGroupIdentity.parentIdentity) && this.index == sourceInformationSlotTableGroupIdentity.index) {
            return true;
        }
        return false;
    }

    public final int getIndex() {
        return this.index;
    }

    @NotNull
    public final Object getParentIdentity() {
        return this.parentIdentity;
    }

    public int hashCode() {
        return (this.parentIdentity.hashCode() * 31) + Integer.hashCode(this.index);
    }

    @NotNull
    public String toString() {
        return "SourceInformationSlotTableGroupIdentity(parentIdentity=" + this.parentIdentity + ", index=" + this.index + ')';
    }
}
