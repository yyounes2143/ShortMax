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
public final class HorizontalAlignModifier extends InspectorValueInfo implements ParentDataModifier {
    @NotNull
    private final Alignment.Horizontal horizontal;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HorizontalAlignModifier(@NotNull Alignment.Horizontal horizontal, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(horizontal, "horizontal");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.horizontal = horizontal;
    }

    public boolean equals(@Nullable Object obj) {
        HorizontalAlignModifier horizontalAlignModifier;
        if (this == obj) {
            return true;
        }
        if (obj instanceof HorizontalAlignModifier) {
            horizontalAlignModifier = (HorizontalAlignModifier) obj;
        } else {
            horizontalAlignModifier = null;
        }
        if (horizontalAlignModifier == null) {
            return false;
        }
        return Intrinsics.areEqual(this.horizontal, horizontalAlignModifier.horizontal);
    }

    @NotNull
    public final Alignment.Horizontal getHorizontal() {
        return this.horizontal;
    }

    public int hashCode() {
        return this.horizontal.hashCode();
    }

    @NotNull
    public String toString() {
        return "HorizontalAlignModifier(horizontal=" + this.horizontal + ')';
    }

    @Override // androidx.compose.ui.layout.ParentDataModifier
    @NotNull
    public RowColumnParentData modifyParentData(@NotNull Density density, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(density, "<this>");
        RowColumnParentData rowColumnParentData = obj instanceof RowColumnParentData ? (RowColumnParentData) obj : null;
        if (rowColumnParentData == null) {
            rowColumnParentData = new RowColumnParentData(0.0f, false, null, 7, null);
        }
        rowColumnParentData.setCrossAxisAlignment(CrossAxisAlignment.Companion.horizontal$foundation_layout_release(this.horizontal));
        return rowColumnParentData;
    }
}
