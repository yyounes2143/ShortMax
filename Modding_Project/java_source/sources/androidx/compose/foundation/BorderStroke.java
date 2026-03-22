package androidx.compose.foundation;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BorderStroke.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class BorderStroke {
    @NotNull
    private final Brush brush;
    private final float width;

    public /* synthetic */ BorderStroke(float f10, Brush brush, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, brush);
    }

    /* renamed from: copy-D5KLDUw$default  reason: not valid java name */
    public static /* synthetic */ BorderStroke m211copyD5KLDUw$default(BorderStroke borderStroke, float f10, Brush brush, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = borderStroke.width;
        }
        if ((i10 & 2) != 0) {
            brush = borderStroke.brush;
        }
        return borderStroke.m212copyD5KLDUw(f10, brush);
    }

    @NotNull
    /* renamed from: copy-D5KLDUw  reason: not valid java name */
    public final BorderStroke m212copyD5KLDUw(float f10, @NotNull Brush brush) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        return new BorderStroke(f10, brush, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BorderStroke)) {
            return false;
        }
        BorderStroke borderStroke = (BorderStroke) obj;
        if (Dp.m4054equalsimpl0(this.width, borderStroke.width) && Intrinsics.areEqual(this.brush, borderStroke.brush)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final Brush getBrush() {
        return this.brush;
    }

    /* renamed from: getWidth-D9Ej5fM  reason: not valid java name */
    public final float m213getWidthD9Ej5fM() {
        return this.width;
    }

    public int hashCode() {
        return (Dp.m4055hashCodeimpl(this.width) * 31) + this.brush.hashCode();
    }

    @NotNull
    public String toString() {
        return "BorderStroke(width=" + ((Object) Dp.m4060toStringimpl(this.width)) + ", brush=" + this.brush + ')';
    }

    private BorderStroke(float f10, Brush brush) {
        this.width = f10;
        this.brush = brush;
    }
}
