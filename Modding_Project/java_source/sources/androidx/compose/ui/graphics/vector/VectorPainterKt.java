package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableOpenTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import at.o;
import com.ss.ttm.utils.AVLogger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VectorPainter.kt */
@Metadata
/* loaded from: classes.dex */
public final class VectorPainterKt {
    @NotNull
    public static final String RootGroupName = "VectorRootGroup";

    /* JADX WARN: Removed duplicated region for block: B:35:0x0071  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.graphics.vector.VectorComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void RenderVectorGroup(@org.jetbrains.annotations.NotNull final androidx.compose.ui.graphics.vector.VectorGroup r23, @org.jetbrains.annotations.Nullable java.util.Map<java.lang.String, ? extends androidx.compose.ui.graphics.vector.VectorConfig> r24, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r25, final int r26, final int r27) {
        /*
            Method dump skipped, instructions count: 621
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.vector.VectorPainterKt.RenderVectorGroup(androidx.compose.ui.graphics.vector.VectorGroup, java.util.Map, androidx.compose.runtime.Composer, int, int):void");
    }

    private static final void mirror(DrawScope drawScope, Function1<? super DrawScope, Unit> function1) {
        long mo2335getCenterF1C5BW0 = drawScope.mo2335getCenterF1C5BW0();
        DrawContext drawContext = drawScope.getDrawContext();
        long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo2268scale0AR0LA0(-1.0f, 1.0f, mo2335getCenterF1C5BW0);
        function1.invoke(drawScope);
        drawContext.getCanvas().restore();
        drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
    }

    @Composable
    @NotNull
    public static final VectorPainter rememberVectorPainter(@NotNull final ImageVector image, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(image, "image");
        composer.startReplaceableGroup(1413834416);
        VectorPainter m2446rememberVectorPaintervIP8VLU = m2446rememberVectorPaintervIP8VLU(image.m2414getDefaultWidthD9Ej5fM(), image.m2413getDefaultHeightD9Ej5fM(), image.getViewportWidth(), image.getViewportHeight(), image.getName(), image.m2416getTintColor0d7_KjU(), image.m2415getTintBlendMode0nO6VwU(), image.getAutoMirror(), ComposableLambdaKt.composableLambda(composer, 1873274766, true, new o<Float, Float, Composer, Integer, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$rememberVectorPainter$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(4);
            }

            @Override // at.o
            public /* bridge */ /* synthetic */ Unit invoke(Float f10, Float f11, Composer composer2, Integer num) {
                invoke(f10.floatValue(), f11.floatValue(), composer2, num.intValue());
                return Unit.f60915a;
            }

            @ComposableTarget(applier = "androidx.compose.ui.graphics.vector.VectorComposable")
            @Composable
            public final void invoke(float f10, float f11, @Nullable Composer composer2, int i11) {
                if ((i11 & 11) == 2 && composer2.getSkipping()) {
                    composer2.skipToGroupEnd();
                } else {
                    VectorPainterKt.RenderVectorGroup(ImageVector.this.getRoot(), null, composer2, 0, 2);
                }
            }
        }), composer, AVLogger.LEVEL_LOG_SILENT, 0);
        composer.endReplaceableGroup();
        return m2446rememberVectorPaintervIP8VLU;
    }

    @c
    @ComposableOpenTarget(index = -1)
    @NotNull
    @Composable
    /* renamed from: rememberVectorPainter-mlNsNFs  reason: not valid java name */
    public static final VectorPainter m2445rememberVectorPaintermlNsNFs(float f10, float f11, float f12, float f13, @Nullable String str, long j10, int i10, @NotNull o<? super Float, ? super Float, ? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, int i11, int i12) {
        float f14;
        float f15;
        String str2;
        long j11;
        int i13;
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(-964365210);
        if ((i12 & 4) != 0) {
            f14 = Float.NaN;
        } else {
            f14 = f12;
        }
        if ((i12 & 8) != 0) {
            f15 = Float.NaN;
        } else {
            f15 = f13;
        }
        if ((i12 & 16) != 0) {
            str2 = RootGroupName;
        } else {
            str2 = str;
        }
        if ((i12 & 32) != 0) {
            j11 = Color.Companion.m1878getUnspecified0d7_KjU();
        } else {
            j11 = j10;
        }
        if ((i12 & 64) != 0) {
            i13 = BlendMode.Companion.m1784getSrcIn0nO6VwU();
        } else {
            i13 = i10;
        }
        VectorPainter m2446rememberVectorPaintervIP8VLU = m2446rememberVectorPaintervIP8VLU(f10, f11, f14, f15, str2, j11, i13, false, content, composer, (i11 & 14) | 12582912 | (i11 & 112) | (i11 & 896) | (i11 & 7168) | (57344 & i11) | (458752 & i11) | (3670016 & i11) | ((i11 << 3) & 234881024), 0);
        composer.endReplaceableGroup();
        return m2446rememberVectorPaintervIP8VLU;
    }

    @Composable
    @ComposableOpenTarget(index = -1)
    @NotNull
    /* renamed from: rememberVectorPainter-vIP8VLU  reason: not valid java name */
    public static final VectorPainter m2446rememberVectorPaintervIP8VLU(float f10, float f11, float f12, float f13, @Nullable String str, long j10, int i10, boolean z10, @NotNull o<? super Float, ? super Float, ? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, int i11, int i12) {
        float f14;
        String str2;
        long j11;
        int i13;
        boolean z11;
        ColorFilter colorFilter;
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(1068590786);
        float f15 = Float.NaN;
        if ((i12 & 4) != 0) {
            f14 = Float.NaN;
        } else {
            f14 = f12;
        }
        if ((i12 & 8) == 0) {
            f15 = f13;
        }
        if ((i12 & 16) != 0) {
            str2 = RootGroupName;
        } else {
            str2 = str;
        }
        if ((i12 & 32) != 0) {
            j11 = Color.Companion.m1878getUnspecified0d7_KjU();
        } else {
            j11 = j10;
        }
        if ((i12 & 64) != 0) {
            i13 = BlendMode.Companion.m1784getSrcIn0nO6VwU();
        } else {
            i13 = i10;
        }
        if ((i12 & 128) != 0) {
            z11 = false;
        } else {
            z11 = z10;
        }
        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        float mo342toPx0680j_4 = density.mo342toPx0680j_4(f10);
        float mo342toPx0680j_42 = density.mo342toPx0680j_4(f11);
        if (Float.isNaN(f14)) {
            f14 = mo342toPx0680j_4;
        }
        if (Float.isNaN(f15)) {
            f15 = mo342toPx0680j_42;
        }
        Color m1832boximpl = Color.m1832boximpl(j11);
        BlendMode m1752boximpl = BlendMode.m1752boximpl(i13);
        int i14 = i11 >> 15;
        composer.startReplaceableGroup(511388516);
        boolean changed = composer.changed(m1832boximpl) | composer.changed(m1752boximpl);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            if (!Color.m1843equalsimpl0(j11, Color.Companion.m1878getUnspecified0d7_KjU())) {
                colorFilter = ColorFilter.Companion.m1886tintxETnrds(j11, i13);
            } else {
                colorFilter = null;
            }
            rememberedValue = colorFilter;
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        ColorFilter colorFilter2 = (ColorFilter) rememberedValue;
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue2 = composer.rememberedValue();
        if (rememberedValue2 == Composer.Companion.getEmpty()) {
            rememberedValue2 = new VectorPainter();
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        VectorPainter vectorPainter = (VectorPainter) rememberedValue2;
        vectorPainter.m2444setSizeuvyYCjk$ui_release(SizeKt.Size(mo342toPx0680j_4, mo342toPx0680j_42));
        vectorPainter.setAutoMirror$ui_release(z11);
        vectorPainter.setIntrinsicColorFilter$ui_release(colorFilter2);
        vectorPainter.RenderVector$ui_release(str2, f14, f15, content, composer, ((i11 >> 12) & 14) | 32768 | (i14 & 7168));
        composer.endReplaceableGroup();
        return vectorPainter;
    }
}
