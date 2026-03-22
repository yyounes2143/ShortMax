package androidx.compose.foundation;

import androidx.compose.ui.draw.DrawModifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.OutlineKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Background.kt */
@Metadata
/* loaded from: classes.dex */
public final class Background extends InspectorValueInfo implements DrawModifier {
    private final float alpha;
    @Nullable
    private final Brush brush;
    @Nullable
    private final Color color;
    @Nullable
    private LayoutDirection lastLayoutDirection;
    @Nullable
    private Outline lastOutline;
    @Nullable
    private Size lastSize;
    @NotNull
    private final Shape shape;

    public /* synthetic */ Background(Color color, Brush brush, float f10, Shape shape, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(color, brush, f10, shape, function1);
    }

    private final void drawOutline(ContentDrawScope contentDrawScope) {
        Outline mo235createOutlinePq9zytI;
        if (Size.m1670equalsimpl(contentDrawScope.mo2336getSizeNHjbRc(), this.lastSize) && contentDrawScope.getLayoutDirection() == this.lastLayoutDirection) {
            mo235createOutlinePq9zytI = this.lastOutline;
            Intrinsics.checkNotNull(mo235createOutlinePq9zytI);
        } else {
            mo235createOutlinePq9zytI = this.shape.mo235createOutlinePq9zytI(contentDrawScope.mo2336getSizeNHjbRc(), contentDrawScope.getLayoutDirection(), contentDrawScope);
        }
        Color color = this.color;
        if (color != null) {
            color.m1852unboximpl();
            OutlineKt.m2064drawOutlinewDX37Ww$default(contentDrawScope, mo235createOutlinePq9zytI, this.color.m1852unboximpl(), 0.0f, null, null, 0, 60, null);
        }
        Brush brush = this.brush;
        if (brush != null) {
            OutlineKt.m2062drawOutlinehn5TExg$default(contentDrawScope, mo235createOutlinePq9zytI, brush, this.alpha, null, null, 0, 56, null);
        }
        this.lastOutline = mo235createOutlinePq9zytI;
        this.lastSize = Size.m1663boximpl(contentDrawScope.mo2336getSizeNHjbRc());
    }

    private final void drawRect(ContentDrawScope contentDrawScope) {
        Color color = this.color;
        if (color != null) {
            DrawScope.m2331drawRectnJ9OG0$default(contentDrawScope, color.m1852unboximpl(), 0L, 0L, 0.0f, null, null, 0, 126, null);
        }
        Brush brush = this.brush;
        if (brush != null) {
            DrawScope.m2330drawRectAsUm42w$default(contentDrawScope, brush, 0L, 0L, this.alpha, null, null, 0, 118, null);
        }
    }

    @Override // androidx.compose.ui.draw.DrawModifier
    public void draw(@NotNull ContentDrawScope contentDrawScope) {
        Intrinsics.checkNotNullParameter(contentDrawScope, "<this>");
        if (this.shape == RectangleShapeKt.getRectangleShape()) {
            drawRect(contentDrawScope);
        } else {
            drawOutline(contentDrawScope);
        }
        contentDrawScope.drawContent();
    }

    public boolean equals(@Nullable Object obj) {
        Background background;
        if (obj instanceof Background) {
            background = (Background) obj;
        } else {
            background = null;
        }
        if (background == null || !Intrinsics.areEqual(this.color, background.color) || !Intrinsics.areEqual(this.brush, background.brush) || this.alpha != background.alpha || !Intrinsics.areEqual(this.shape, background.shape)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i10;
        Color color = this.color;
        int i11 = 0;
        if (color != null) {
            i10 = Color.m1849hashCodeimpl(color.m1852unboximpl());
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        Brush brush = this.brush;
        if (brush != null) {
            i11 = brush.hashCode();
        }
        return ((((i12 + i11) * 31) + Float.hashCode(this.alpha)) * 31) + this.shape.hashCode();
    }

    @NotNull
    public String toString() {
        return "Background(color=" + this.color + ", brush=" + this.brush + ", alpha = " + this.alpha + ", shape=" + this.shape + ')';
    }

    public /* synthetic */ Background(Color color, Brush brush, float f10, Shape shape, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : color, (i10 & 2) != 0 ? null : brush, (i10 & 4) != 0 ? 1.0f : f10, shape, function1, null);
    }

    private Background(Color color, Brush brush, float f10, Shape shape, Function1<? super InspectorInfo, Unit> function1) {
        super(function1);
        this.color = color;
        this.brush = brush;
        this.alpha = f10;
        this.shape = shape;
    }
}
