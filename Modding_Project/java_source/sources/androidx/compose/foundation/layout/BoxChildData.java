package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Box.kt */
@Metadata
/* loaded from: classes.dex */
final class BoxChildData extends InspectorValueInfo implements ParentDataModifier {
    @NotNull
    private Alignment alignment;
    private boolean matchParentSize;

    public /* synthetic */ BoxChildData(Alignment alignment, boolean z10, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(alignment, (i10 & 2) != 0 ? false : z10, (i10 & 4) != 0 ? InspectableValueKt.getNoInspectorInfo() : function1);
    }

    public boolean equals(@Nullable Object obj) {
        BoxChildData boxChildData;
        if (this == obj) {
            return true;
        }
        if (obj instanceof BoxChildData) {
            boxChildData = (BoxChildData) obj;
        } else {
            boxChildData = null;
        }
        if (boxChildData == null) {
            return false;
        }
        if (Intrinsics.areEqual(this.alignment, boxChildData.alignment) && this.matchParentSize == boxChildData.matchParentSize) {
            return true;
        }
        return false;
    }

    @NotNull
    public final Alignment getAlignment() {
        return this.alignment;
    }

    public final boolean getMatchParentSize() {
        return this.matchParentSize;
    }

    public int hashCode() {
        return (this.alignment.hashCode() * 31) + Boolean.hashCode(this.matchParentSize);
    }

    @Override // androidx.compose.ui.layout.ParentDataModifier
    @NotNull
    public BoxChildData modifyParentData(@NotNull Density density, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(density, "<this>");
        return this;
    }

    public final void setAlignment(@NotNull Alignment alignment) {
        Intrinsics.checkNotNullParameter(alignment, "<set-?>");
        this.alignment = alignment;
    }

    public final void setMatchParentSize(boolean z10) {
        this.matchParentSize = z10;
    }

    @NotNull
    public String toString() {
        return "BoxChildData(alignment=" + this.alignment + ", matchParentSize=" + this.matchParentSize + ')';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BoxChildData(@NotNull Alignment alignment, boolean z10, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.alignment = alignment;
        this.matchParentSize = z10;
    }
}
