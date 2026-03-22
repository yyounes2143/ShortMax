package androidx.compose.material;

import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.CornerRadiusKt;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Metadata;
/* compiled from: Checkbox.kt */
@Metadata
/* loaded from: classes.dex */
public final class CheckboxKt {
    private static final int BoxInDuration = 50;
    private static final int BoxOutDuration = 100;
    private static final int CheckAnimationDuration = 100;
    private static final float CheckboxDefaultPadding;
    private static final float CheckboxRippleRadius = Dp.m4049constructorimpl(24);
    private static final float CheckboxSize = Dp.m4049constructorimpl(20);
    private static final float RadiusSize;
    private static final float StrokeWidth;

    /* compiled from: Checkbox.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ToggleableState.values().length];
            iArr[ToggleableState.On.ordinal()] = 1;
            iArr[ToggleableState.Off.ordinal()] = 2;
            iArr[ToggleableState.Indeterminate.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        float f10 = 2;
        CheckboxDefaultPadding = Dp.m4049constructorimpl(f10);
        StrokeWidth = Dp.m4049constructorimpl(f10);
        RadiusSize = Dp.m4049constructorimpl(f10);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:113:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0116  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Checkbox(final boolean r24, @org.jetbrains.annotations.Nullable final kotlin.jvm.functions.Function1<? super java.lang.Boolean, kotlin.Unit> r25, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r26, boolean r27, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r28, @org.jetbrains.annotations.Nullable androidx.compose.material.CheckboxColors r29, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r30, final int r31, final int r32) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.CheckboxKt.Checkbox(boolean, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.material.CheckboxColors, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0206 A[LOOP:0: B:76:0x0203->B:78:0x0206, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0216  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CheckboxImpl(final boolean r34, final androidx.compose.ui.state.ToggleableState r35, final androidx.compose.ui.Modifier r36, final androidx.compose.material.CheckboxColors r37, androidx.compose.runtime.Composer r38, final int r39) {
        /*
            Method dump skipped, instructions count: 598
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.CheckboxKt.CheckboxImpl(boolean, androidx.compose.ui.state.ToggleableState, androidx.compose.ui.Modifier, androidx.compose.material.CheckboxColors, androidx.compose.runtime.Composer, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: CheckboxImpl$lambda-10  reason: not valid java name */
    public static final long m969CheckboxImpl$lambda10(State<Color> state) {
        return state.getValue().m1852unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: CheckboxImpl$lambda-4  reason: not valid java name */
    public static final float m970CheckboxImpl$lambda4(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: CheckboxImpl$lambda-6  reason: not valid java name */
    public static final float m971CheckboxImpl$lambda6(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: CheckboxImpl$lambda-8  reason: not valid java name */
    public static final long m972CheckboxImpl$lambda8(State<Color> state) {
        return state.getValue().m1852unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: CheckboxImpl$lambda-9  reason: not valid java name */
    public static final long m973CheckboxImpl$lambda9(State<Color> state) {
        return state.getValue().m1852unboximpl();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0141  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void TriStateCheckbox(@org.jetbrains.annotations.NotNull final androidx.compose.ui.state.ToggleableState r25, @org.jetbrains.annotations.Nullable final kotlin.jvm.functions.Function0<kotlin.Unit> r26, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r27, boolean r28, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r29, @org.jetbrains.annotations.Nullable androidx.compose.material.CheckboxColors r30, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r31, final int r32, final int r33) {
        /*
            Method dump skipped, instructions count: 468
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.CheckboxKt.TriStateCheckbox(androidx.compose.ui.state.ToggleableState, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.material.CheckboxColors, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawBox-1wkBAMs  reason: not valid java name */
    public static final void m981drawBox1wkBAMs(DrawScope drawScope, long j10, long j11, float f10, float f11) {
        float f12 = f11 / 2.0f;
        Stroke stroke = new Stroke(f11, 0.0f, 0, 0, null, 30, null);
        float m1675getWidthimpl = Size.m1675getWidthimpl(drawScope.mo2336getSizeNHjbRc());
        if (Color.m1843equalsimpl0(j10, j11)) {
            DrawScope.m2333drawRoundRectuAw5IA$default(drawScope, j10, 0L, SizeKt.Size(m1675getWidthimpl, m1675getWidthimpl), CornerRadiusKt.CornerRadius$default(f10, 0.0f, 2, null), Fill.INSTANCE, 0.0f, null, 0, 226, null);
            return;
        }
        float f13 = m1675getWidthimpl - (2 * f11);
        DrawScope.m2333drawRoundRectuAw5IA$default(drawScope, j10, OffsetKt.Offset(f11, f11), SizeKt.Size(f13, f13), CornerRadiusKt.CornerRadius$default(Math.max(0.0f, f10 - f11), 0.0f, 2, null), Fill.INSTANCE, 0.0f, null, 0, 224, null);
        float f14 = m1675getWidthimpl - f11;
        DrawScope.m2333drawRoundRectuAw5IA$default(drawScope, j11, OffsetKt.Offset(f12, f12), SizeKt.Size(f14, f14), CornerRadiusKt.CornerRadius$default(f10 - f12, 0.0f, 2, null), stroke, 0.0f, null, 0, 224, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawCheck-3IgeMak  reason: not valid java name */
    public static final void m982drawCheck3IgeMak(DrawScope drawScope, long j10, float f10, float f11, float f12, CheckDrawingCache checkDrawingCache) {
        Stroke stroke = new Stroke(f12, 0.0f, StrokeCap.Companion.m2148getSquareKaPHkGw(), 0, null, 26, null);
        float m1675getWidthimpl = Size.m1675getWidthimpl(drawScope.mo2336getSizeNHjbRc());
        float lerp = MathHelpersKt.lerp(0.4f, 0.5f, f11);
        float lerp2 = MathHelpersKt.lerp(0.7f, 0.5f, f11);
        float lerp3 = MathHelpersKt.lerp(0.5f, 0.5f, f11);
        float lerp4 = MathHelpersKt.lerp(0.3f, 0.5f, f11);
        checkDrawingCache.getCheckPath().reset();
        checkDrawingCache.getCheckPath().moveTo(0.2f * m1675getWidthimpl, lerp3 * m1675getWidthimpl);
        checkDrawingCache.getCheckPath().lineTo(lerp * m1675getWidthimpl, lerp2 * m1675getWidthimpl);
        checkDrawingCache.getCheckPath().lineTo(0.8f * m1675getWidthimpl, m1675getWidthimpl * lerp4);
        checkDrawingCache.getPathMeasure().setPath(checkDrawingCache.getCheckPath(), false);
        checkDrawingCache.getPathToDraw().reset();
        checkDrawingCache.getPathMeasure().getSegment(0.0f, checkDrawingCache.getPathMeasure().getLength() * f10, checkDrawingCache.getPathToDraw(), true);
        DrawScope.m2327drawPathLG529CI$default(drawScope, checkDrawingCache.getPathToDraw(), j10, 0.0f, stroke, null, 0, 52, null);
    }
}
