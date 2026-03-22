package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BrushPainter.kt */
@Metadata
/* loaded from: classes.dex */
public final class BrushPainter extends Painter {
    private float alpha;
    @NotNull
    private final Brush brush;
    @Nullable
    private ColorFilter colorFilter;

    public BrushPainter(@NotNull Brush brush) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        this.brush = brush;
        this.alpha = 1.0f;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyAlpha(float f10) {
        this.alpha = f10;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyColorFilter(@Nullable ColorFilter colorFilter) {
        this.colorFilter = colorFilter;
        return true;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof BrushPainter) && Intrinsics.areEqual(this.brush, ((BrushPainter) obj).brush)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final Brush getBrush() {
        return this.brush;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public long mo2405getIntrinsicSizeNHjbRc() {
        return this.brush.mo1790getIntrinsicSizeNHjbRc();
    }

    public int hashCode() {
        return this.brush.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.graphics.painter.Painter
    public void onDraw(@NotNull DrawScope drawScope) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        DrawScope.m2330drawRectAsUm42w$default(drawScope, this.brush, 0L, 0L, this.alpha, null, this.colorFilter, 0, 86, null);
    }

    @NotNull
    public String toString() {
        return "BrushPainter(brush=" + this.brush + ')';
    }
}
