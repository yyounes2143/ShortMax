package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RowColumnImpl.kt */
@Metadata
/* loaded from: classes.dex */
public final class VerticalAlignModifier extends InspectorValueInfo implements ParentDataModifier {
    @NotNull
    private final Alignment.Vertical vertical;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VerticalAlignModifier(@NotNull Alignment.Vertical vertical, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(vertical, "vertical");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.vertical = vertical;
    }

    public boolean equals(@Nullable Object obj) {
        VerticalAlignModifier verticalAlignModifier;
        if (this == obj) {
            return true;
        }
        if (obj instanceof VerticalAlignModifier) {
            verticalAlignModifier = (VerticalAlignModifier) obj;
        } else {
            verticalAlignModifier = null;
        }
        if (verticalAlignModifier == null) {
            return false;
        }
        return Intrinsics.areEqual(this.vertical, verticalAlignModifier.vertical);
    }

    @NotNull
    public final Alignment.Vertical getVertical() {
        return this.vertical;
    }

    public int hashCode() {
        return this.vertical.hashCode();
    }

    @NotNull
    public String toString() {
        return "VerticalAlignModifier(vertical=" + this.vertical + ')';
    }

    @Override // androidx.compose.ui.layout.ParentDataModifier
    @NotNull
    public RowColumnParentData modifyParentData(@NotNull Density density, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(density, "<this>");
        RowColumnParentData rowColumnParentData = obj instanceof RowColumnParentData ? (RowColumnParentData) obj : null;
        if (rowColumnParentData == null) {
            rowColumnParentData = new RowColumnParentData(0.0f, false, null, 7, null);
        }
        rowColumnParentData.setCrossAxisAlignment(CrossAxisAlignment.Companion.vertical$foundation_layout_release(this.vertical));
        return rowColumnParentData;
    }
}
