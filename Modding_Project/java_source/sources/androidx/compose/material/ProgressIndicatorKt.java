package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.InfiniteRepeatableSpec;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.InfiniteTransitionKt;
import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.ProgressSemanticsKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProgressIndicator.kt */
@Metadata
/* loaded from: classes.dex */
public final class ProgressIndicatorKt {
    private static final float BaseRotationAngle = 286.0f;
    private static final int FirstLineHeadDelay = 0;
    private static final int FirstLineHeadDuration = 750;
    private static final int FirstLineTailDelay = 333;
    private static final int FirstLineTailDuration = 850;
    private static final int HeadAndTailAnimationDuration = 666;
    private static final int HeadAndTailDelayDuration = 666;
    private static final float JumpRotationAngle = 290.0f;
    private static final int LinearAnimationDuration = 1800;
    private static final float RotationAngleOffset = 216.0f;
    private static final int RotationDuration = 1332;
    private static final int RotationsPerCycle = 5;
    private static final int SecondLineHeadDelay = 1000;
    private static final int SecondLineHeadDuration = 567;
    private static final int SecondLineTailDelay = 1267;
    private static final int SecondLineTailDuration = 533;
    private static final float StartAngleOffset = -90.0f;
    private static final float LinearIndicatorHeight = ProgressIndicatorDefaults.INSTANCE.m1139getStrokeWidthD9Ej5fM();
    private static final float LinearIndicatorWidth = Dp.m4049constructorimpl(240);
    private static final float CircularIndicatorDiameter = Dp.m4049constructorimpl(40);
    @NotNull
    private static final CubicBezierEasing FirstLineHeadEasing = new CubicBezierEasing(0.2f, 0.0f, 0.8f, 1.0f);
    @NotNull
    private static final CubicBezierEasing FirstLineTailEasing = new CubicBezierEasing(0.4f, 0.0f, 1.0f, 1.0f);
    @NotNull
    private static final CubicBezierEasing SecondLineHeadEasing = new CubicBezierEasing(0.0f, 0.0f, 0.65f, 1.0f);
    @NotNull
    private static final CubicBezierEasing SecondLineTailEasing = new CubicBezierEasing(0.1f, 0.0f, 0.45f, 1.0f);
    @NotNull
    private static final CubicBezierEasing CircularEasing = new CubicBezierEasing(0.4f, 0.0f, 0.2f, 1.0f);

    /* JADX WARN: Removed duplicated region for block: B:26:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:74:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /* renamed from: CircularProgressIndicator-MBs18nI  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1140CircularProgressIndicatorMBs18nI(final float r21, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r22, long r23, float r25, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r26, final int r27, final int r28) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ProgressIndicatorKt.m1140CircularProgressIndicatorMBs18nI(float, androidx.compose.ui.Modifier, long, float, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /* renamed from: CircularProgressIndicator-aM-cp0Q  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1141CircularProgressIndicatoraMcp0Q(@org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r30, long r31, float r33, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r34, final int r35, final int r36) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ProgressIndicatorKt.m1141CircularProgressIndicatoraMcp0Q(androidx.compose.ui.Modifier, long, float, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: CircularProgressIndicator_aM_cp0Q$lambda-10  reason: not valid java name */
    public static final float m1142CircularProgressIndicator_aM_cp0Q$lambda10(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: CircularProgressIndicator_aM_cp0Q$lambda-11  reason: not valid java name */
    public static final float m1143CircularProgressIndicator_aM_cp0Q$lambda11(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: CircularProgressIndicator_aM_cp0Q$lambda-8  reason: not valid java name */
    public static final int m1144CircularProgressIndicator_aM_cp0Q$lambda8(State<Integer> state) {
        return state.getValue().intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: CircularProgressIndicator_aM_cp0Q$lambda-9  reason: not valid java name */
    public static final float m1145CircularProgressIndicator_aM_cp0Q$lambda9(State<Float> state) {
        return state.getValue().floatValue();
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    /* renamed from: LinearProgressIndicator-RIQooxk  reason: not valid java name */
    public static final void m1146LinearProgressIndicatorRIQooxk(@Nullable Modifier modifier, long j10, long j11, @Nullable Composer composer, final int i10, final int i11) {
        Object obj;
        int i12;
        int i13;
        long j12;
        long j13;
        final Object obj2;
        final long j14;
        int i14;
        int i15;
        Composer startRestartGroup = composer.startRestartGroup(-819397058);
        int i16 = i11 & 1;
        if (i16 != 0) {
            i12 = i10 | 6;
            obj = modifier;
        } else if ((i10 & 14) == 0) {
            obj = modifier;
            if (startRestartGroup.changed(obj)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i12 = i13 | i10;
        } else {
            obj = modifier;
            i12 = i10;
        }
        if ((i10 & 112) == 0) {
            if ((i11 & 2) == 0) {
                j12 = j10;
                if (startRestartGroup.changed(j12)) {
                    i15 = 32;
                    i12 |= i15;
                }
            } else {
                j12 = j10;
            }
            i15 = 16;
            i12 |= i15;
        } else {
            j12 = j10;
        }
        if ((i10 & 896) == 0) {
            if ((i11 & 4) == 0) {
                j13 = j11;
                if (startRestartGroup.changed(j13)) {
                    i14 = 256;
                    i12 |= i14;
                }
            } else {
                j13 = j11;
            }
            i14 = 128;
            i12 |= i14;
        } else {
            j13 = j11;
        }
        if ((i12 & TTVideoEngineInterface.PLAYER_OPTION_ENABLE_RECEIVE_BINARY_SEI) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
            obj2 = obj;
            j14 = j12;
        } else {
            startRestartGroup.startDefaults();
            if ((i10 & 1) != 0 && !startRestartGroup.getDefaultsInvalid()) {
                startRestartGroup.skipToGroupEnd();
                obj2 = obj;
                j14 = j12;
            } else {
                if (i16 != 0) {
                    obj2 = Modifier.Companion;
                } else {
                    obj2 = obj;
                }
                if ((i11 & 2) != 0) {
                    j14 = MaterialTheme.INSTANCE.getColors(startRestartGroup, 6).m1003getPrimary0d7_KjU();
                } else {
                    j14 = j12;
                }
                if ((i11 & 4) != 0) {
                    j13 = Color.m1841copywmQWz5c$default(j14, 0.24f, 0.0f, 0.0f, 0.0f, 14, null);
                }
            }
            startRestartGroup.endDefaults();
            InfiniteTransition rememberInfiniteTransition = InfiniteTransitionKt.rememberInfiniteTransition(startRestartGroup, 0);
            InfiniteRepeatableSpec m137infiniteRepeatable9IiC70o$default = AnimationSpecKt.m137infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new Function1<KeyframesSpec.KeyframesSpecConfig<Float>, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$LinearProgressIndicator$firstLineHead$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    invoke2(keyframesSpecConfig);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull KeyframesSpec.KeyframesSpecConfig<Float> keyframes) {
                    CubicBezierEasing cubicBezierEasing;
                    Intrinsics.checkNotNullParameter(keyframes, "$this$keyframes");
                    keyframes.setDurationMillis(MediaPlayer.MEDIA_PLAYER_OPTION_MASK_DELAY_LOADING);
                    KeyframesSpec.KeyframeEntity<Float> at2 = keyframes.at(Float.valueOf(0.0f), 0);
                    cubicBezierEasing = ProgressIndicatorKt.FirstLineHeadEasing;
                    keyframes.with(at2, cubicBezierEasing);
                    keyframes.at(Float.valueOf(1.0f), 750);
                }
            }), null, 0L, 6, null);
            int i17 = InfiniteTransition.$stable;
            int i18 = i17 | TTVideoEngineInterface.PLAYER_OPTION_ENABLE_h266;
            int i19 = InfiniteRepeatableSpec.$stable;
            final State<Float> animateFloat = InfiniteTransitionKt.animateFloat(rememberInfiniteTransition, 0.0f, 1.0f, m137infiniteRepeatable9IiC70o$default, startRestartGroup, i18 | (i19 << 9));
            final State<Float> animateFloat2 = InfiniteTransitionKt.animateFloat(rememberInfiniteTransition, 0.0f, 1.0f, AnimationSpecKt.m137infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new Function1<KeyframesSpec.KeyframesSpecConfig<Float>, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$LinearProgressIndicator$firstLineTail$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    invoke2(keyframesSpecConfig);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull KeyframesSpec.KeyframesSpecConfig<Float> keyframes) {
                    CubicBezierEasing cubicBezierEasing;
                    Intrinsics.checkNotNullParameter(keyframes, "$this$keyframes");
                    keyframes.setDurationMillis(MediaPlayer.MEDIA_PLAYER_OPTION_MASK_DELAY_LOADING);
                    KeyframesSpec.KeyframeEntity<Float> at2 = keyframes.at(Float.valueOf(0.0f), 333);
                    cubicBezierEasing = ProgressIndicatorKt.FirstLineTailEasing;
                    keyframes.with(at2, cubicBezierEasing);
                    keyframes.at(Float.valueOf(1.0f), 1183);
                }
            }), null, 0L, 6, null), startRestartGroup, i17 | TTVideoEngineInterface.PLAYER_OPTION_ENABLE_h266 | (i19 << 9));
            final State<Float> animateFloat3 = InfiniteTransitionKt.animateFloat(rememberInfiniteTransition, 0.0f, 1.0f, AnimationSpecKt.m137infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new Function1<KeyframesSpec.KeyframesSpecConfig<Float>, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$LinearProgressIndicator$secondLineHead$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    invoke2(keyframesSpecConfig);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull KeyframesSpec.KeyframesSpecConfig<Float> keyframes) {
                    CubicBezierEasing cubicBezierEasing;
                    Intrinsics.checkNotNullParameter(keyframes, "$this$keyframes");
                    keyframes.setDurationMillis(MediaPlayer.MEDIA_PLAYER_OPTION_MASK_DELAY_LOADING);
                    KeyframesSpec.KeyframeEntity<Float> at2 = keyframes.at(Float.valueOf(0.0f), 1000);
                    cubicBezierEasing = ProgressIndicatorKt.SecondLineHeadEasing;
                    keyframes.with(at2, cubicBezierEasing);
                    keyframes.at(Float.valueOf(1.0f), 1567);
                }
            }), null, 0L, 6, null), startRestartGroup, i17 | TTVideoEngineInterface.PLAYER_OPTION_ENABLE_h266 | (i19 << 9));
            final State<Float> animateFloat4 = InfiniteTransitionKt.animateFloat(rememberInfiniteTransition, 0.0f, 1.0f, AnimationSpecKt.m137infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new Function1<KeyframesSpec.KeyframesSpecConfig<Float>, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$LinearProgressIndicator$secondLineTail$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                    invoke2(keyframesSpecConfig);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull KeyframesSpec.KeyframesSpecConfig<Float> keyframes) {
                    CubicBezierEasing cubicBezierEasing;
                    Intrinsics.checkNotNullParameter(keyframes, "$this$keyframes");
                    keyframes.setDurationMillis(MediaPlayer.MEDIA_PLAYER_OPTION_MASK_DELAY_LOADING);
                    KeyframesSpec.KeyframeEntity<Float> at2 = keyframes.at(Float.valueOf(0.0f), 1267);
                    cubicBezierEasing = ProgressIndicatorKt.SecondLineTailEasing;
                    keyframes.with(at2, cubicBezierEasing);
                    keyframes.at(Float.valueOf(1.0f), MediaPlayer.MEDIA_PLAYER_OPTION_MASK_DELAY_LOADING);
                }
            }), null, 0L, 6, null), startRestartGroup, i17 | TTVideoEngineInterface.PLAYER_OPTION_ENABLE_h266 | (i19 << 9));
            Modifier m490sizeVpY3zN4 = SizeKt.m490sizeVpY3zN4(ProgressSemanticsKt.progressSemantics(obj2), LinearIndicatorWidth, LinearIndicatorHeight);
            Object[] objArr = {Color.m1832boximpl(j13), animateFloat, animateFloat2, Color.m1832boximpl(j14), animateFloat3, animateFloat4};
            startRestartGroup.startReplaceableGroup(-568225417);
            boolean z10 = false;
            for (int i20 = 0; i20 < 6; i20++) {
                z10 |= startRestartGroup.changed(objArr[i20]);
            }
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (z10 || rememberedValue == Composer.Companion.getEmpty()) {
                final long j15 = j13;
                final long j16 = j14;
                rememberedValue = new Function1<DrawScope, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$LinearProgressIndicator$3$1
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
                        float m1148LinearProgressIndicator_RIQooxk$lambda1;
                        float m1149LinearProgressIndicator_RIQooxk$lambda2;
                        float m1150LinearProgressIndicator_RIQooxk$lambda3;
                        float m1151LinearProgressIndicator_RIQooxk$lambda4;
                        float m1150LinearProgressIndicator_RIQooxk$lambda32;
                        float m1151LinearProgressIndicator_RIQooxk$lambda42;
                        float m1148LinearProgressIndicator_RIQooxk$lambda12;
                        float m1149LinearProgressIndicator_RIQooxk$lambda22;
                        Intrinsics.checkNotNullParameter(Canvas, "$this$Canvas");
                        float m1672getHeightimpl = Size.m1672getHeightimpl(Canvas.mo2336getSizeNHjbRc());
                        ProgressIndicatorKt.m1168drawLinearIndicatorBackgroundbw27NRU(Canvas, j15, m1672getHeightimpl);
                        m1148LinearProgressIndicator_RIQooxk$lambda1 = ProgressIndicatorKt.m1148LinearProgressIndicator_RIQooxk$lambda1(animateFloat);
                        m1149LinearProgressIndicator_RIQooxk$lambda2 = ProgressIndicatorKt.m1149LinearProgressIndicator_RIQooxk$lambda2(animateFloat2);
                        if (m1148LinearProgressIndicator_RIQooxk$lambda1 - m1149LinearProgressIndicator_RIQooxk$lambda2 > 0.0f) {
                            m1148LinearProgressIndicator_RIQooxk$lambda12 = ProgressIndicatorKt.m1148LinearProgressIndicator_RIQooxk$lambda1(animateFloat);
                            m1149LinearProgressIndicator_RIQooxk$lambda22 = ProgressIndicatorKt.m1149LinearProgressIndicator_RIQooxk$lambda2(animateFloat2);
                            ProgressIndicatorKt.m1167drawLinearIndicator42QJj7c(Canvas, m1148LinearProgressIndicator_RIQooxk$lambda12, m1149LinearProgressIndicator_RIQooxk$lambda22, j16, m1672getHeightimpl);
                        }
                        m1150LinearProgressIndicator_RIQooxk$lambda3 = ProgressIndicatorKt.m1150LinearProgressIndicator_RIQooxk$lambda3(animateFloat3);
                        m1151LinearProgressIndicator_RIQooxk$lambda4 = ProgressIndicatorKt.m1151LinearProgressIndicator_RIQooxk$lambda4(animateFloat4);
                        if (m1150LinearProgressIndicator_RIQooxk$lambda3 - m1151LinearProgressIndicator_RIQooxk$lambda4 > 0.0f) {
                            m1150LinearProgressIndicator_RIQooxk$lambda32 = ProgressIndicatorKt.m1150LinearProgressIndicator_RIQooxk$lambda3(animateFloat3);
                            m1151LinearProgressIndicator_RIQooxk$lambda42 = ProgressIndicatorKt.m1151LinearProgressIndicator_RIQooxk$lambda4(animateFloat4);
                            ProgressIndicatorKt.m1167drawLinearIndicator42QJj7c(Canvas, m1150LinearProgressIndicator_RIQooxk$lambda32, m1151LinearProgressIndicator_RIQooxk$lambda42, j16, m1672getHeightimpl);
                        }
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            CanvasKt.Canvas(m490sizeVpY3zN4, (Function1) rememberedValue, startRestartGroup, 0);
        }
        final long j17 = j13;
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ProgressIndicatorKt$LinearProgressIndicator$4
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
                    ProgressIndicatorKt.m1146LinearProgressIndicatorRIQooxk(Modifier.this, j14, j17, composer2, i10 | 1, i11);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /* renamed from: LinearProgressIndicator-eaDK9VM  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1147LinearProgressIndicatoreaDK9VM(final float r16, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r17, long r18, long r20, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r22, final int r23, final int r24) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ProgressIndicatorKt.m1147LinearProgressIndicatoreaDK9VM(float, androidx.compose.ui.Modifier, long, long, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: LinearProgressIndicator_RIQooxk$lambda-1  reason: not valid java name */
    public static final float m1148LinearProgressIndicator_RIQooxk$lambda1(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: LinearProgressIndicator_RIQooxk$lambda-2  reason: not valid java name */
    public static final float m1149LinearProgressIndicator_RIQooxk$lambda2(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: LinearProgressIndicator_RIQooxk$lambda-3  reason: not valid java name */
    public static final float m1150LinearProgressIndicator_RIQooxk$lambda3(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: LinearProgressIndicator_RIQooxk$lambda-4  reason: not valid java name */
    public static final float m1151LinearProgressIndicator_RIQooxk$lambda4(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* renamed from: drawCircularIndicator-42QJj7c  reason: not valid java name */
    private static final void m1164drawCircularIndicator42QJj7c(DrawScope drawScope, float f10, float f11, long j10, Stroke stroke) {
        float f12 = 2;
        float width = stroke.getWidth() / f12;
        float m1675getWidthimpl = Size.m1675getWidthimpl(drawScope.mo2336getSizeNHjbRc()) - (f12 * width);
        DrawScope.m2316drawArcyD3GUKo$default(drawScope, j10, f10, f11, false, OffsetKt.Offset(width, width), androidx.compose.ui.geometry.SizeKt.Size(m1675getWidthimpl, m1675getWidthimpl), 0.0f, stroke, null, 0, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_PRELOADING, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawDeterminateCircularIndicator-42QJj7c  reason: not valid java name */
    public static final void m1165drawDeterminateCircularIndicator42QJj7c(DrawScope drawScope, float f10, float f11, long j10, Stroke stroke) {
        m1164drawCircularIndicator42QJj7c(drawScope, f10, f11, j10, stroke);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawIndeterminateCircularIndicator-hrjfTZI  reason: not valid java name */
    public static final void m1166drawIndeterminateCircularIndicatorhrjfTZI(DrawScope drawScope, float f10, float f11, float f12, long j10, Stroke stroke) {
        m1164drawCircularIndicator42QJj7c(drawScope, f10 + (((f11 / Dp.m4049constructorimpl(CircularIndicatorDiameter / 2)) * 57.29578f) / 2.0f), Math.max(f12, 0.1f), j10, stroke);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawLinearIndicator-42QJj7c  reason: not valid java name */
    public static final void m1167drawLinearIndicator42QJj7c(DrawScope drawScope, float f10, float f11, long j10, float f12) {
        boolean z10;
        float f13;
        float f14;
        float m1675getWidthimpl = Size.m1675getWidthimpl(drawScope.mo2336getSizeNHjbRc());
        float m1672getHeightimpl = Size.m1672getHeightimpl(drawScope.mo2336getSizeNHjbRc()) / 2;
        if (drawScope.getLayoutDirection() == LayoutDirection.Ltr) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            f13 = f10;
        } else {
            f13 = 1.0f - f11;
        }
        float f15 = f13 * m1675getWidthimpl;
        if (z10) {
            f14 = f11;
        } else {
            f14 = 1.0f - f10;
        }
        DrawScope.m2323drawLineNGM6Ib0$default(drawScope, j10, OffsetKt.Offset(f15, m1672getHeightimpl), OffsetKt.Offset(f14 * m1675getWidthimpl, m1672getHeightimpl), f12, 0, null, 0.0f, null, 0, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_OPEN_TIMEOUT, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawLinearIndicatorBackground-bw27NRU  reason: not valid java name */
    public static final void m1168drawLinearIndicatorBackgroundbw27NRU(DrawScope drawScope, long j10, float f10) {
        m1167drawLinearIndicator42QJj7c(drawScope, 0.0f, 1.0f, j10, f10);
    }
}
