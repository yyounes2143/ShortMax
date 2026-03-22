package androidx.compose.material;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TabRow.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class TabPosition {
    private final float left;
    private final float width;

    public /* synthetic */ TabPosition(float f10, float f11, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TabPosition)) {
            return false;
        }
        TabPosition tabPosition = (TabPosition) obj;
        if (Dp.m4054equalsimpl0(this.left, tabPosition.left) && Dp.m4054equalsimpl0(this.width, tabPosition.width)) {
            return true;
        }
        return false;
    }

    /* renamed from: getLeft-D9Ej5fM  reason: not valid java name */
    public final float m1224getLeftD9Ej5fM() {
        return this.left;
    }

    /* renamed from: getRight-D9Ej5fM  reason: not valid java name */
    public final float m1225getRightD9Ej5fM() {
        return Dp.m4049constructorimpl(this.left + this.width);
    }

    /* renamed from: getWidth-D9Ej5fM  reason: not valid java name */
    public final float m1226getWidthD9Ej5fM() {
        return this.width;
    }

    public int hashCode() {
        return (Dp.m4055hashCodeimpl(this.left) * 31) + Dp.m4055hashCodeimpl(this.width);
    }

    @NotNull
    public String toString() {
        return "TabPosition(left=" + ((Object) Dp.m4060toStringimpl(this.left)) + ", right=" + ((Object) Dp.m4060toStringimpl(m1225getRightD9Ej5fM())) + ", width=" + ((Object) Dp.m4060toStringimpl(this.width)) + ')';
    }

    private TabPosition(float f10, float f11) {
        this.left = f10;
        this.width = f11;
    }
}
