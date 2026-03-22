package androidx.compose.ui.layout;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LayoutId.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
final class LayoutId extends InspectorValueInfo implements ParentDataModifier, LayoutIdParentData {
    @NotNull
    private final Object layoutId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LayoutId(@NotNull Object layoutId, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(layoutId, "layoutId");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.layoutId = layoutId;
    }

    public boolean equals(@Nullable Object obj) {
        LayoutId layoutId;
        if (this == obj) {
            return true;
        }
        if (obj instanceof LayoutId) {
            layoutId = (LayoutId) obj;
        } else {
            layoutId = null;
        }
        if (layoutId == null) {
            return false;
        }
        return Intrinsics.areEqual(getLayoutId(), layoutId.getLayoutId());
    }

    @Override // androidx.compose.ui.layout.LayoutIdParentData
    @NotNull
    public Object getLayoutId() {
        return this.layoutId;
    }

    public int hashCode() {
        return getLayoutId().hashCode();
    }

    @Override // androidx.compose.ui.layout.ParentDataModifier
    @Nullable
    public Object modifyParentData(@NotNull Density density, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(density, "<this>");
        return this;
    }

    @NotNull
    public String toString() {
        return "LayoutId(id=" + getLayoutId() + ')';
    }
}
