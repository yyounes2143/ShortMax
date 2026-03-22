package androidx.compose.material;

import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.ripple.RippleKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import bt.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Switch.kt */
@Metadata
/* loaded from: classes.dex */
public final class SwitchKt {
    @NotNull
    private static final TweenSpec<Float> AnimationSpec;
    private static final float DefaultSwitchPadding;
    private static final float SwitchHeight;
    private static final float SwitchWidth;
    private static final float ThumbDefaultElevation;
    private static final float ThumbDiameter;
    private static final float ThumbPathLength;
    private static final float ThumbPressedElevation;
    private static final float ThumbRippleRadius;
    private static final float TrackStrokeWidth;
    private static final float TrackWidth;

    static {
        float m4049constructorimpl = Dp.m4049constructorimpl(34);
        TrackWidth = m4049constructorimpl;
        TrackStrokeWidth = Dp.m4049constructorimpl(14);
        float m4049constructorimpl2 = Dp.m4049constructorimpl(20);
        ThumbDiameter = m4049constructorimpl2;
        ThumbRippleRadius = Dp.m4049constructorimpl(24);
        DefaultSwitchPadding = Dp.m4049constructorimpl(2);
        SwitchWidth = m4049constructorimpl;
        SwitchHeight = m4049constructorimpl2;
        ThumbPathLength = Dp.m4049constructorimpl(m4049constructorimpl - m4049constructorimpl2);
        AnimationSpec = new TweenSpec<>(100, 0, null, 6, null);
        ThumbDefaultElevation = Dp.m4049constructorimpl(1);
        ThumbPressedElevation = Dp.m4049constructorimpl(6);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x014b  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Switch(final boolean r35, @org.jetbrains.annotations.Nullable final kotlin.jvm.functions.Function1<? super java.lang.Boolean, kotlin.Unit> r36, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r37, boolean r38, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r39, @org.jetbrains.annotations.Nullable androidx.compose.material.SwitchColors r40, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r41, final int r42, final int r43) {
        /*
            Method dump skipped, instructions count: 780
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SwitchKt.Switch(boolean, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.material.SwitchColors, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void SwitchImpl(final BoxScope boxScope, final boolean z10, final boolean z11, final SwitchColors switchColors, final State<Float> state, final InteractionSource interactionSource, Composer composer, final int i10) {
        int i11;
        float f10;
        int i12;
        long m1213SwitchImpl$lambda7;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        Composer startRestartGroup = composer.startRestartGroup(-1834839253);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(boxScope)) {
                i18 = 4;
            } else {
                i18 = 2;
            }
            i11 = i18 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(z10)) {
                i17 = 32;
            } else {
                i17 = 16;
            }
            i11 |= i17;
        }
        if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(z11)) {
                i16 = 256;
            } else {
                i16 = 128;
            }
            i11 |= i16;
        }
        if ((i10 & 7168) == 0) {
            if (startRestartGroup.changed(switchColors)) {
                i15 = 2048;
            } else {
                i15 = 1024;
            }
            i11 |= i15;
        }
        if ((57344 & i10) == 0) {
            if (startRestartGroup.changed(state)) {
                i14 = 16384;
            } else {
                i14 = 8192;
            }
            i11 |= i14;
        }
        if ((458752 & i10) == 0) {
            if (startRestartGroup.changed(interactionSource)) {
                i13 = 131072;
            } else {
                i13 = 65536;
            }
            i11 |= i13;
        }
        if ((374491 & i11) == 74898 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            startRestartGroup.startReplaceableGroup(-492369756);
            Object rememberedValue = startRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (rememberedValue == companion.getEmpty()) {
                rememberedValue = SnapshotStateKt.mutableStateListOf();
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            SnapshotStateList snapshotStateList = (SnapshotStateList) rememberedValue;
            int i19 = (i11 >> 15) & 14;
            startRestartGroup.startReplaceableGroup(511388516);
            boolean changed = startRestartGroup.changed(interactionSource) | startRestartGroup.changed(snapshotStateList);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed || rememberedValue2 == companion.getEmpty()) {
                rememberedValue2 = new SwitchKt$SwitchImpl$1$1(interactionSource, snapshotStateList, null);
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            EffectsKt.LaunchedEffect(interactionSource, (Function2) rememberedValue2, startRestartGroup, i19);
            if (!snapshotStateList.isEmpty()) {
                f10 = ThumbPressedElevation;
            } else {
                f10 = ThumbDefaultElevation;
            }
            float f11 = f10;
            int i20 = ((i11 >> 3) & 896) | ((i11 >> 6) & 14) | (i11 & 112);
            final State<Color> trackColor = switchColors.trackColor(z11, z10, startRestartGroup, i20);
            Modifier.Companion companion2 = Modifier.Companion;
            Alignment.Companion companion3 = Alignment.Companion;
            Modifier fillMaxSize$default = SizeKt.fillMaxSize$default(boxScope.align(companion2, companion3.getCenter()), 0.0f, 1, null);
            startRestartGroup.startReplaceableGroup(1157296644);
            boolean changed2 = startRestartGroup.changed(trackColor);
            Object rememberedValue3 = startRestartGroup.rememberedValue();
            if (changed2 || rememberedValue3 == companion.getEmpty()) {
                rememberedValue3 = new Function1<DrawScope, Unit>() { // from class: androidx.compose.material.SwitchKt$SwitchImpl$2$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                        invoke2(drawScope);
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull DrawScope Canvas) {
                        long m1212SwitchImpl$lambda5;
                        Intrinsics.checkNotNullParameter(Canvas, "$this$Canvas");
                        m1212SwitchImpl$lambda5 = SwitchKt.m1212SwitchImpl$lambda5(trackColor);
                        SwitchKt.m1216drawTrackRPmYEkk(Canvas, m1212SwitchImpl$lambda5, Canvas.mo342toPx0680j_4(SwitchKt.getTrackWidth()), Canvas.mo342toPx0680j_4(SwitchKt.getTrackStrokeWidth()));
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue3);
            }
            startRestartGroup.endReplaceableGroup();
            CanvasKt.Canvas(fillMaxSize$default, (Function1) rememberedValue3, startRestartGroup, 0);
            State<Color> thumbColor = switchColors.thumbColor(z11, z10, startRestartGroup, i20);
            ElevationOverlay elevationOverlay = (ElevationOverlay) startRestartGroup.consume(ElevationOverlayKt.getLocalElevationOverlay());
            float m4049constructorimpl = Dp.m4049constructorimpl(((Dp) startRestartGroup.consume(ElevationOverlayKt.getLocalAbsoluteElevation())).m4063unboximpl() + f11);
            startRestartGroup.startReplaceableGroup(-539245361);
            if (Color.m1843equalsimpl0(m1213SwitchImpl$lambda7(thumbColor), MaterialTheme.INSTANCE.getColors(startRestartGroup, 6).m1007getSurface0d7_KjU()) && elevationOverlay != null) {
                i12 = 1157296644;
                m1213SwitchImpl$lambda7 = elevationOverlay.mo1037apply7g2Lkgo(m1213SwitchImpl$lambda7(thumbColor), m4049constructorimpl, startRestartGroup, 0);
            } else {
                i12 = 1157296644;
                m1213SwitchImpl$lambda7 = m1213SwitchImpl$lambda7(thumbColor);
            }
            long j10 = m1213SwitchImpl$lambda7;
            startRestartGroup.endReplaceableGroup();
            Modifier align = boxScope.align(companion2, companion3.getCenterStart());
            startRestartGroup.startReplaceableGroup(i12);
            boolean changed3 = startRestartGroup.changed(state);
            Object rememberedValue4 = startRestartGroup.rememberedValue();
            if (changed3 || rememberedValue4 == companion.getEmpty()) {
                rememberedValue4 = new Function1<Density, IntOffset>() { // from class: androidx.compose.material.SwitchKt$SwitchImpl$3$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ IntOffset invoke(Density density) {
                        return IntOffset.m4158boximpl(m1217invokeBjo55l4(density));
                    }

                    /* renamed from: invoke-Bjo55l4  reason: not valid java name */
                    public final long m1217invokeBjo55l4(@NotNull Density offset) {
                        Intrinsics.checkNotNullParameter(offset, "$this$offset");
                        return IntOffsetKt.IntOffset(a.c(state.getValue().floatValue()), 0);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue4);
            }
            startRestartGroup.endReplaceableGroup();
            SpacerKt.Spacer(BackgroundKt.m199backgroundbw27NRU(ShadowKt.m1535shadows4CzXII$default(SizeKt.m480requiredSize3ABfNKs(IndicationKt.indication(OffsetKt.offset(align, (Function1) rememberedValue4), interactionSource, RippleKt.m1289rememberRipple9IZ8Weo(false, ThumbRippleRadius, 0L, startRestartGroup, 54, 4)), ThumbDiameter), f11, RoundedCornerShapeKt.getCircleShape(), false, 0L, 0L, 24, null), j10, RoundedCornerShapeKt.getCircleShape()), startRestartGroup, 0);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.SwitchKt$SwitchImpl$4
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i21) {
                    SwitchKt.SwitchImpl(BoxScope.this, z10, z11, switchColors, state, interactionSource, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: SwitchImpl$lambda-5  reason: not valid java name */
    public static final long m1212SwitchImpl$lambda5(State<Color> state) {
        return state.getValue().m1852unboximpl();
    }

    /* renamed from: SwitchImpl$lambda-7  reason: not valid java name */
    private static final long m1213SwitchImpl$lambda7(State<Color> state) {
        return state.getValue().m1852unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawTrack-RPmYEkk  reason: not valid java name */
    public static final void m1216drawTrackRPmYEkk(DrawScope drawScope, long j10, float f10, float f11) {
        float f12 = f11 / 2;
        DrawScope.m2323drawLineNGM6Ib0$default(drawScope, j10, androidx.compose.ui.geometry.OffsetKt.Offset(f12, Offset.m1607getYimpl(drawScope.mo2335getCenterF1C5BW0())), androidx.compose.ui.geometry.OffsetKt.Offset(f10 - f12, Offset.m1607getYimpl(drawScope.mo2335getCenterF1C5BW0())), f11, StrokeCap.Companion.m2147getRoundKaPHkGw(), null, 0.0f, null, 0, 480, null);
    }

    public static final float getThumbDiameter() {
        return ThumbDiameter;
    }

    public static final float getTrackStrokeWidth() {
        return TrackStrokeWidth;
    }

    public static final float getTrackWidth() {
        return TrackWidth;
    }
}
