package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CanvasDrawScope.kt */
@Metadata
/* loaded from: classes.dex */
public final class CanvasDrawScopeKt {
    @NotNull
    private static final Density DefaultDensity = DensityKt.Density(1.0f, 1.0f);

    /* JADX INFO: Access modifiers changed from: private */
    public static final DrawTransform asDrawTransform(final DrawContext drawContext) {
        return new DrawTransform() { // from class: androidx.compose.ui.graphics.drawscope.CanvasDrawScopeKt$asDrawTransform$1
            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* renamed from: clipPath-mtrdD-E  reason: not valid java name */
            public void mo2263clipPathmtrdDE(@NotNull Path path, int i10) {
                Intrinsics.checkNotNullParameter(path, "path");
                DrawContext.this.getCanvas().mo1700clipPathmtrdDE(path, i10);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* renamed from: clipRect-N_I0leg  reason: not valid java name */
            public void mo2264clipRectN_I0leg(float f10, float f11, float f12, float f13, int i10) {
                DrawContext.this.getCanvas().mo1701clipRectN_I0leg(f10, f11, f12, f13, i10);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* renamed from: getCenter-F1C5BW0  reason: not valid java name */
            public long mo2265getCenterF1C5BW0() {
                return SizeKt.m1685getCenteruvyYCjk(mo2266getSizeNHjbRc());
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* renamed from: getSize-NH-jbRc  reason: not valid java name */
            public long mo2266getSizeNHjbRc() {
                return DrawContext.this.mo2261getSizeNHjbRc();
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            public void inset(float f10, float f11, float f12, float f13) {
                Canvas canvas = DrawContext.this.getCanvas();
                DrawContext drawContext2 = DrawContext.this;
                long Size = SizeKt.Size(Size.m1675getWidthimpl(mo2266getSizeNHjbRc()) - (f12 + f10), Size.m1672getHeightimpl(mo2266getSizeNHjbRc()) - (f13 + f11));
                if (Size.m1675getWidthimpl(Size) >= 0.0f && Size.m1672getHeightimpl(Size) >= 0.0f) {
                    drawContext2.mo2262setSizeuvyYCjk(Size);
                    canvas.translate(f10, f11);
                    return;
                }
                throw new IllegalArgumentException("Width and height must be greater than or equal to zero");
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* renamed from: rotate-Uv8p0NA  reason: not valid java name */
            public void mo2267rotateUv8p0NA(float f10, long j10) {
                Canvas canvas = DrawContext.this.getCanvas();
                canvas.translate(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10));
                canvas.rotate(f10);
                canvas.translate(-Offset.m1606getXimpl(j10), -Offset.m1607getYimpl(j10));
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* renamed from: scale-0AR0LA0  reason: not valid java name */
            public void mo2268scale0AR0LA0(float f10, float f11, long j10) {
                Canvas canvas = DrawContext.this.getCanvas();
                canvas.translate(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10));
                canvas.scale(f10, f11);
                canvas.translate(-Offset.m1606getXimpl(j10), -Offset.m1607getYimpl(j10));
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* renamed from: transform-58bKbWc  reason: not valid java name */
            public void mo2269transform58bKbWc(@NotNull float[] matrix) {
                Intrinsics.checkNotNullParameter(matrix, "matrix");
                DrawContext.this.getCanvas().mo1702concat58bKbWc(matrix);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            public void translate(float f10, float f11) {
                DrawContext.this.getCanvas().translate(f10, f11);
            }
        };
    }
}
