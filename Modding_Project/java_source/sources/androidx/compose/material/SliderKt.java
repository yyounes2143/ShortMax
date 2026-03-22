package androidx.compose.material;

import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.HoverableKt;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.ProgressSemanticsKt;
import androidx.compose.foundation.gestures.DragScope;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.GestureCancellationException;
import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.Strings;
import androidx.compose.material.ripple.RippleKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.PointMode;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.MathHelpersKt;
import at.n;
import com.ss.ttm.player.MediaPlayer;
import dt.b;
import gt.g;
import gt.g0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Slider.kt */
@Metadata
/* loaded from: classes.dex */
public final class SliderKt {
    @NotNull
    private static final Modifier DefaultSliderConstraints;
    private static final float SliderHeight;
    private static final float SliderMinWidth;
    @NotNull
    private static final TweenSpec<Float> SliderToTickAnimation;
    private static final float ThumbRadius = Dp.m4049constructorimpl(10);
    private static final float ThumbRippleRadius = Dp.m4049constructorimpl(24);
    private static final float ThumbDefaultElevation = Dp.m4049constructorimpl(1);
    private static final float ThumbPressedElevation = Dp.m4049constructorimpl(6);
    private static final float TrackHeight = Dp.m4049constructorimpl(4);

    static {
        float m4049constructorimpl = Dp.m4049constructorimpl(48);
        SliderHeight = m4049constructorimpl;
        float m4049constructorimpl2 = Dp.m4049constructorimpl(144);
        SliderMinWidth = m4049constructorimpl2;
        DefaultSliderConstraints = SizeKt.m476heightInVpY3zN4$default(SizeKt.m495widthInVpY3zN4$default(Modifier.Companion, m4049constructorimpl2, 0.0f, 2, null), 0.0f, m4049constructorimpl, 1, null);
        SliderToTickAnimation = new TweenSpec<>(100, 0, null, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    public static final void CorrectValueSideEffect(final Function1<? super Float, Float> function1, final b<Float> bVar, final b<Float> bVar2, final MutableState<Float> mutableState, final float f10, Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        Composer startRestartGroup = composer.startRestartGroup(-743965752);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(function1)) {
                i16 = 4;
            } else {
                i16 = 2;
            }
            i11 = i16 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(bVar)) {
                i15 = 32;
            } else {
                i15 = 16;
            }
            i11 |= i15;
        }
        if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(bVar2)) {
                i14 = 256;
            } else {
                i14 = 128;
            }
            i11 |= i14;
        }
        if ((i10 & 7168) == 0) {
            if (startRestartGroup.changed(mutableState)) {
                i13 = 2048;
            } else {
                i13 = 1024;
            }
            i11 |= i13;
        }
        if ((57344 & i10) == 0) {
            if (startRestartGroup.changed(f10)) {
                i12 = 16384;
            } else {
                i12 = 8192;
            }
            i11 |= i12;
        }
        if ((i11 & 46811) == 9362 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            Object[] objArr = {bVar, function1, Float.valueOf(f10), mutableState, bVar2};
            startRestartGroup.startReplaceableGroup(-568225417);
            boolean z10 = false;
            for (int i17 = 0; i17 < 5; i17++) {
                z10 |= startRestartGroup.changed(objArr[i17]);
            }
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (z10 || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function0<Unit>() { // from class: androidx.compose.material.SliderKt$CorrectValueSideEffect$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        float floatValue = (bVar.getEndInclusive().floatValue() - bVar.getStart().floatValue()) / 1000;
                        float floatValue2 = function1.invoke(Float.valueOf(f10)).floatValue();
                        if (Math.abs(floatValue2 - mutableState.getValue().floatValue()) <= floatValue || !bVar2.contains(mutableState.getValue())) {
                            return;
                        }
                        mutableState.setValue(Float.valueOf(floatValue2));
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            EffectsKt.SideEffect((Function0) rememberedValue, startRestartGroup, 0);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.SliderKt$CorrectValueSideEffect$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i18) {
                    SliderKt.CorrectValueSideEffect(function1, bVar, bVar2, mutableState, f10, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0121  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    @androidx.compose.material.ExperimentalMaterialApi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void RangeSlider(@org.jetbrains.annotations.NotNull final dt.b<java.lang.Float> r41, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super dt.b<java.lang.Float>, kotlin.Unit> r42, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r43, boolean r44, @org.jetbrains.annotations.Nullable dt.b<java.lang.Float> r45, int r46, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function0<kotlin.Unit> r47, @org.jetbrains.annotations.Nullable androidx.compose.material.SliderColors r48, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r49, final int r50, final int r51) {
        /*
            Method dump skipped, instructions count: 662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SliderKt.RangeSlider(dt.b, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, dt.b, int, kotlin.jvm.functions.Function0, androidx.compose.material.SliderColors, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void RangeSliderImpl(final boolean z10, final float f10, final float f11, final List<Float> list, final SliderColors sliderColors, final float f12, final MutableInteractionSource mutableInteractionSource, final MutableInteractionSource mutableInteractionSource2, final Modifier modifier, final Modifier modifier2, final Modifier modifier3, Composer composer, final int i10, final int i11) {
        Composer startRestartGroup = composer.startRestartGroup(-278895713);
        Strings.Companion companion = Strings.Companion;
        final String m1197getString4foXLRw = Strings_androidKt.m1197getString4foXLRw(companion.m1196getSliderRangeStartUdPEhr4(), startRestartGroup, 6);
        final String m1197getString4foXLRw2 = Strings_androidKt.m1197getString4foXLRw(companion.m1195getSliderRangeEndUdPEhr4(), startRestartGroup, 6);
        Modifier then = modifier.then(DefaultSliderConstraints);
        startRestartGroup.startReplaceableGroup(733328855);
        Alignment.Companion companion2 = Alignment.Companion;
        MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(companion2.getTopStart(), false, startRestartGroup, 0);
        startRestartGroup.startReplaceableGroup(-1323940314);
        Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
        LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
        ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
        Function0<ComposeUiNode> constructor = companion3.getConstructor();
        n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(then);
        if (startRestartGroup.getApplier() == null) {
            ComposablesKt.invalidApplier();
        }
        startRestartGroup.startReusableNode();
        if (startRestartGroup.getInserting()) {
            startRestartGroup.createNode(constructor);
        } else {
            startRestartGroup.useNode();
        }
        startRestartGroup.disableReusing();
        Composer m1376constructorimpl = Updater.m1376constructorimpl(startRestartGroup);
        Updater.m1383setimpl(m1376constructorimpl, rememberBoxMeasurePolicy, companion3.getSetMeasurePolicy());
        Updater.m1383setimpl(m1376constructorimpl, density, companion3.getSetDensity());
        Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion3.getSetLayoutDirection());
        Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion3.getSetViewConfiguration());
        startRestartGroup.enableReusing();
        materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
        startRestartGroup.startReplaceableGroup(2058660585);
        startRestartGroup.startReplaceableGroup(-2137368960);
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
        startRestartGroup.startReplaceableGroup(2044256857);
        Density density2 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
        float mo342toPx0680j_4 = density2.mo342toPx0680j_4(TrackHeight);
        float f13 = ThumbRadius;
        float mo342toPx0680j_42 = density2.mo342toPx0680j_4(f13);
        float mo338toDpu2uoSUM = density2.mo338toDpu2uoSUM(f12);
        Unit unit = Unit.f60915a;
        float m4049constructorimpl = Dp.m4049constructorimpl(f13 * 2);
        float m4049constructorimpl2 = Dp.m4049constructorimpl(mo338toDpu2uoSUM * f10);
        float m4049constructorimpl3 = Dp.m4049constructorimpl(mo338toDpu2uoSUM * f11);
        Modifier.Companion companion4 = Modifier.Companion;
        int i12 = i10 >> 9;
        int i13 = i10 << 6;
        Track(SizeKt.fillMaxSize$default(boxScopeInstance.align(companion4, companion2.getCenterStart()), 0.0f, 1, null), sliderColors, z10, f10, f11, list, mo342toPx0680j_42, mo342toPx0680j_4, startRestartGroup, (i12 & 112) | 262144 | (i13 & 896) | (i13 & 7168) | (i13 & 57344));
        startRestartGroup.startReplaceableGroup(1157296644);
        boolean changed = startRestartGroup.changed(m1197getString4foXLRw);
        Object rememberedValue = startRestartGroup.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material.SliderKt$RangeSliderImpl$1$2$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                    invoke2(semanticsPropertyReceiver);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull SemanticsPropertyReceiver semantics) {
                    Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                    SemanticsPropertiesKt.setContentDescription(semantics, m1197getString4foXLRw);
                }
            };
            startRestartGroup.updateRememberedValue(rememberedValue);
        }
        startRestartGroup.endReplaceableGroup();
        int i14 = i10 & 57344;
        int i15 = (i10 << 15) & 458752;
        m1175SliderThumbPcYyNuk(boxScopeInstance, FocusableKt.focusable(SemanticsModifierKt.semantics(companion4, true, (Function1) rememberedValue), true, mutableInteractionSource).then(modifier2), m4049constructorimpl2, mutableInteractionSource, sliderColors, z10, m4049constructorimpl, startRestartGroup, (i12 & 7168) | 1572870 | i14 | i15);
        startRestartGroup.startReplaceableGroup(1157296644);
        boolean changed2 = startRestartGroup.changed(m1197getString4foXLRw2);
        Object rememberedValue2 = startRestartGroup.rememberedValue();
        if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
            rememberedValue2 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material.SliderKt$RangeSliderImpl$1$3$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                    invoke2(semanticsPropertyReceiver);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull SemanticsPropertyReceiver semantics) {
                    Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                    SemanticsPropertiesKt.setContentDescription(semantics, m1197getString4foXLRw2);
                }
            };
            startRestartGroup.updateRememberedValue(rememberedValue2);
        }
        startRestartGroup.endReplaceableGroup();
        m1175SliderThumbPcYyNuk(boxScopeInstance, FocusableKt.focusable(SemanticsModifierKt.semantics(companion4, true, (Function1) rememberedValue2), true, mutableInteractionSource2).then(modifier3), m4049constructorimpl3, mutableInteractionSource2, sliderColors, z10, m4049constructorimpl, startRestartGroup, ((i10 >> 12) & 7168) | 1572870 | i14 | i15);
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.endNode();
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.endReplaceableGroup();
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.SliderKt$RangeSliderImpl$2
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

                public final void invoke(@Nullable Composer composer2, int i16) {
                    SliderKt.RangeSliderImpl(z10, f10, f11, list, sliderColors, f12, mutableInteractionSource, mutableInteractionSource2, modifier, modifier2, modifier3, composer2, i10 | 1, i11);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0113  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Slider(final float r37, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super java.lang.Float, kotlin.Unit> r38, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r39, boolean r40, @org.jetbrains.annotations.Nullable dt.b<java.lang.Float> r41, int r42, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function0<kotlin.Unit> r43, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r44, @org.jetbrains.annotations.Nullable androidx.compose.material.SliderColors r45, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r46, final int r47, final int r48) {
        /*
            Method dump skipped, instructions count: 700
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SliderKt.Slider(float, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, dt.b, int, kotlin.jvm.functions.Function0, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.material.SliderColors, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void SliderImpl(final boolean z10, final float f10, final List<Float> list, final SliderColors sliderColors, final float f11, final MutableInteractionSource mutableInteractionSource, final Modifier modifier, Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(1679682785);
        Modifier then = modifier.then(DefaultSliderConstraints);
        startRestartGroup.startReplaceableGroup(733328855);
        MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.Companion.getTopStart(), false, startRestartGroup, 0);
        startRestartGroup.startReplaceableGroup(-1323940314);
        Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
        LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
        ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        Function0<ComposeUiNode> constructor = companion.getConstructor();
        n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(then);
        if (startRestartGroup.getApplier() == null) {
            ComposablesKt.invalidApplier();
        }
        startRestartGroup.startReusableNode();
        if (startRestartGroup.getInserting()) {
            startRestartGroup.createNode(constructor);
        } else {
            startRestartGroup.useNode();
        }
        startRestartGroup.disableReusing();
        Composer m1376constructorimpl = Updater.m1376constructorimpl(startRestartGroup);
        Updater.m1383setimpl(m1376constructorimpl, rememberBoxMeasurePolicy, companion.getSetMeasurePolicy());
        Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
        Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
        Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
        startRestartGroup.enableReusing();
        materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
        startRestartGroup.startReplaceableGroup(2058660585);
        startRestartGroup.startReplaceableGroup(-2137368960);
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
        startRestartGroup.startReplaceableGroup(231316251);
        Density density2 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
        float mo342toPx0680j_4 = density2.mo342toPx0680j_4(TrackHeight);
        float f12 = ThumbRadius;
        float mo342toPx0680j_42 = density2.mo342toPx0680j_4(f12);
        float mo338toDpu2uoSUM = density2.mo338toDpu2uoSUM(f11);
        float m4049constructorimpl = Dp.m4049constructorimpl(f12 * 2);
        float m4049constructorimpl2 = Dp.m4049constructorimpl(mo338toDpu2uoSUM * f10);
        Modifier.Companion companion2 = Modifier.Companion;
        int i11 = i10 >> 6;
        Track(SizeKt.fillMaxSize$default(companion2, 0.0f, 1, null), sliderColors, z10, 0.0f, f10, list, mo342toPx0680j_42, mo342toPx0680j_4, startRestartGroup, (i11 & 112) | 265222 | ((i10 << 6) & 896) | ((i10 << 9) & 57344));
        m1175SliderThumbPcYyNuk(boxScopeInstance, companion2, m4049constructorimpl2, mutableInteractionSource, sliderColors, z10, m4049constructorimpl, startRestartGroup, (i11 & 7168) | 1572918 | ((i10 << 3) & 57344) | ((i10 << 15) & 458752));
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.endNode();
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.endReplaceableGroup();
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.SliderKt$SliderImpl$2
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

                public final void invoke(@Nullable Composer composer2, int i12) {
                    SliderKt.SliderImpl(z10, f10, list, sliderColors, f11, mutableInteractionSource, modifier, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    /* renamed from: SliderThumb-PcYyNuk  reason: not valid java name */
    public static final void m1175SliderThumbPcYyNuk(final BoxScope boxScope, final Modifier modifier, final float f10, final MutableInteractionSource mutableInteractionSource, final SliderColors sliderColors, final boolean z10, final float f11, Composer composer, final int i10) {
        int i11;
        float f12;
        float m4049constructorimpl;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        Composer startRestartGroup = composer.startRestartGroup(428907178);
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
            if (startRestartGroup.changed(modifier)) {
                i17 = 32;
            } else {
                i17 = 16;
            }
            i11 |= i17;
        }
        if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(f10)) {
                i16 = 256;
            } else {
                i16 = 128;
            }
            i11 |= i16;
        }
        if ((i10 & 7168) == 0) {
            if (startRestartGroup.changed(mutableInteractionSource)) {
                i15 = 2048;
            } else {
                i15 = 1024;
            }
            i11 |= i15;
        }
        if ((57344 & i10) == 0) {
            if (startRestartGroup.changed(sliderColors)) {
                i14 = 16384;
            } else {
                i14 = 8192;
            }
            i11 |= i14;
        }
        if ((458752 & i10) == 0) {
            if (startRestartGroup.changed(z10)) {
                i13 = 131072;
            } else {
                i13 = 65536;
            }
            i11 |= i13;
        }
        if ((3670016 & i10) == 0) {
            if (startRestartGroup.changed(f11)) {
                i12 = 1048576;
            } else {
                i12 = 524288;
            }
            i11 |= i12;
        }
        if ((2995931 & i11) == 599186 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            Modifier m451paddingqDBjuR0$default = PaddingKt.m451paddingqDBjuR0$default(Modifier.Companion, f10, 0.0f, 0.0f, 0.0f, 14, null);
            Alignment.Companion companion = Alignment.Companion;
            Modifier align = boxScope.align(m451paddingqDBjuR0$default, companion.getCenterStart());
            startRestartGroup.startReplaceableGroup(733328855);
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(companion.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion2.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(align);
            if (startRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m1376constructorimpl = Updater.m1376constructorimpl(startRestartGroup);
            Updater.m1383setimpl(m1376constructorimpl, rememberBoxMeasurePolicy, companion2.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion2.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion2.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion2.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-2137368960);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            startRestartGroup.startReplaceableGroup(-587645648);
            startRestartGroup.startReplaceableGroup(-492369756);
            Object rememberedValue = startRestartGroup.rememberedValue();
            Composer.Companion companion3 = Composer.Companion;
            if (rememberedValue == companion3.getEmpty()) {
                rememberedValue = SnapshotStateKt.mutableStateListOf();
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            SnapshotStateList snapshotStateList = (SnapshotStateList) rememberedValue;
            int i19 = i11 >> 9;
            int i20 = i19 & 14;
            startRestartGroup.startReplaceableGroup(511388516);
            boolean changed = startRestartGroup.changed(mutableInteractionSource) | startRestartGroup.changed(snapshotStateList);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed || rememberedValue2 == companion3.getEmpty()) {
                rememberedValue2 = new SliderKt$SliderThumb$1$1$1(mutableInteractionSource, snapshotStateList, null);
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            EffectsKt.LaunchedEffect(mutableInteractionSource, (Function2) rememberedValue2, startRestartGroup, i20);
            if (!snapshotStateList.isEmpty()) {
                f12 = ThumbPressedElevation;
            } else {
                f12 = ThumbDefaultElevation;
            }
            float f13 = f12;
            Modifier hoverable$default = HoverableKt.hoverable$default(IndicationKt.indication(SizeKt.m490sizeVpY3zN4(modifier, f11, f11), mutableInteractionSource, RippleKt.m1289rememberRipple9IZ8Weo(false, ThumbRippleRadius, 0L, startRestartGroup, 54, 4)), mutableInteractionSource, false, 2, null);
            if (z10) {
                m4049constructorimpl = f13;
            } else {
                m4049constructorimpl = Dp.m4049constructorimpl(0);
            }
            SpacerKt.Spacer(BackgroundKt.m199backgroundbw27NRU(ShadowKt.m1535shadows4CzXII$default(hoverable$default, m4049constructorimpl, RoundedCornerShapeKt.getCircleShape(), false, 0L, 0L, 24, null), sliderColors.thumbColor(z10, startRestartGroup, ((i11 >> 15) & 14) | (i19 & 112)).getValue().m1852unboximpl(), RoundedCornerShapeKt.getCircleShape()), startRestartGroup, 0);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.SliderKt$SliderThumb$2
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
                    SliderKt.m1175SliderThumbPcYyNuk(BoxScope.this, modifier, f10, mutableInteractionSource, sliderColors, z10, f11, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void Track(final Modifier modifier, final SliderColors sliderColors, final boolean z10, final float f10, final float f11, final List<Float> list, final float f12, final float f13, Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(1833126050);
        int i11 = ((i10 >> 6) & 14) | 48 | ((i10 << 3) & 896);
        final State<Color> trackColor = sliderColors.trackColor(z10, false, startRestartGroup, i11);
        final State<Color> trackColor2 = sliderColors.trackColor(z10, true, startRestartGroup, i11);
        final State<Color> tickColor = sliderColors.tickColor(z10, false, startRestartGroup, i11);
        final State<Color> tickColor2 = sliderColors.tickColor(z10, true, startRestartGroup, i11);
        CanvasKt.Canvas(modifier, new Function1<DrawScope, Unit>() { // from class: androidx.compose.material.SliderKt$Track$1
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
                Intrinsics.checkNotNullParameter(Canvas, "$this$Canvas");
                boolean z11 = Canvas.getLayoutDirection() == LayoutDirection.Rtl;
                long Offset = OffsetKt.Offset(f12, Offset.m1607getYimpl(Canvas.mo2335getCenterF1C5BW0()));
                long Offset2 = OffsetKt.Offset(Size.m1675getWidthimpl(Canvas.mo2336getSizeNHjbRc()) - f12, Offset.m1607getYimpl(Canvas.mo2335getCenterF1C5BW0()));
                long j10 = z11 ? Offset2 : Offset;
                long j11 = z11 ? Offset : Offset2;
                long m1852unboximpl = trackColor.getValue().m1852unboximpl();
                float f14 = f13;
                StrokeCap.Companion companion = StrokeCap.Companion;
                long j12 = j11;
                long j13 = j10;
                DrawScope.m2323drawLineNGM6Ib0$default(Canvas, m1852unboximpl, j10, j11, f14, companion.m2147getRoundKaPHkGw(), null, 0.0f, null, 0, 480, null);
                DrawScope.m2323drawLineNGM6Ib0$default(Canvas, trackColor2.getValue().m1852unboximpl(), OffsetKt.Offset(Offset.m1606getXimpl(j13) + ((Offset.m1606getXimpl(j12) - Offset.m1606getXimpl(j13)) * f10), Offset.m1607getYimpl(Canvas.mo2335getCenterF1C5BW0())), OffsetKt.Offset(Offset.m1606getXimpl(j13) + ((Offset.m1606getXimpl(j12) - Offset.m1606getXimpl(j13)) * f11), Offset.m1607getYimpl(Canvas.mo2335getCenterF1C5BW0())), f13, companion.m2147getRoundKaPHkGw(), null, 0.0f, null, 0, 480, null);
                float f15 = f11;
                float f16 = f10;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Object obj : list) {
                    float floatValue = ((Number) obj).floatValue();
                    Boolean valueOf = Boolean.valueOf(floatValue > f15 || floatValue < f16);
                    Object obj2 = linkedHashMap.get(valueOf);
                    if (obj2 == null) {
                        obj2 = new ArrayList();
                        linkedHashMap.put(valueOf, obj2);
                    }
                    ((List) obj2).add(obj);
                }
                State<Color> state = tickColor;
                State<Color> state2 = tickColor2;
                float f17 = f13;
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    boolean booleanValue = ((Boolean) entry.getKey()).booleanValue();
                    List<Number> list2 = (List) entry.getValue();
                    ArrayList arrayList = new ArrayList(CollectionsKt.z(list2, 10));
                    for (Number number : list2) {
                        arrayList.add(Offset.m1595boximpl(OffsetKt.Offset(Offset.m1606getXimpl(OffsetKt.m1629lerpWko1d7g(j13, j12, number.floatValue())), Offset.m1607getYimpl(Canvas.mo2335getCenterF1C5BW0()))));
                    }
                    long j14 = j13;
                    long j15 = j12;
                    DrawScope.m2328drawPointsF8ZwMP8$default(Canvas, arrayList, PointMode.Companion.m2108getPointsr_lszbg(), (booleanValue ? state : state2).getValue().m1852unboximpl(), f17, StrokeCap.Companion.m2147getRoundKaPHkGw(), null, 0.0f, null, 0, 480, null);
                    f17 = f17;
                    j13 = j14;
                    j12 = j15;
                }
            }
        }, startRestartGroup, i10 & 14);
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.SliderKt$Track$2
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

                public final void invoke(@Nullable Composer composer2, int i12) {
                    SliderKt.Track(Modifier.this, sliderColors, z10, f10, f11, list, f12, f13, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object animateToTarget(DraggableState draggableState, float f10, float f11, float f12, c<? super Unit> cVar) {
        Object drag$default = DraggableState.drag$default(draggableState, null, new SliderKt$animateToTarget$2(f10, f11, f12, null), cVar, 1, null);
        if (drag$default == a.f()) {
            return drag$default;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0064 A[ORIG_RETURN, RETURN] */
    /* renamed from: awaitSlop-8vUncbI  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m1178awaitSlop8vUncbI(androidx.compose.ui.input.pointer.AwaitPointerEventScope r8, long r9, int r11, rs.c<? super kotlin.Pair<androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Float>> r12) {
        /*
            boolean r0 = r12 instanceof androidx.compose.material.SliderKt$awaitSlop$1
            if (r0 == 0) goto L14
            r0 = r12
            androidx.compose.material.SliderKt$awaitSlop$1 r0 = (androidx.compose.material.SliderKt$awaitSlop$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.label = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            androidx.compose.material.SliderKt$awaitSlop$1 r0 = new androidx.compose.material.SliderKt$awaitSlop$1
            r0.<init>(r12)
            goto L12
        L1a:
            java.lang.Object r12 = r6.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r6.label
            r2 = 1
            if (r1 == 0) goto L37
            if (r1 != r2) goto L2f
            java.lang.Object r8 = r6.L$0
            kotlin.jvm.internal.Ref$FloatRef r8 = (kotlin.jvm.internal.Ref.FloatRef) r8
            kotlin.f.b(r12)
            goto L55
        L2f:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L37:
            kotlin.f.b(r12)
            kotlin.jvm.internal.Ref$FloatRef r12 = new kotlin.jvm.internal.Ref$FloatRef
            r12.<init>()
            androidx.compose.material.SliderKt$awaitSlop$postPointerSlop$1 r5 = new androidx.compose.material.SliderKt$awaitSlop$postPointerSlop$1
            r5.<init>()
            r6.L$0 = r12
            r6.label = r2
            r1 = r8
            r2 = r9
            r4 = r11
            java.lang.Object r8 = androidx.compose.material.DragGestureDetectorCopyKt.m1044awaitHorizontalPointerSlopOrCancellationgDDlDlE(r1, r2, r4, r5, r6)
            if (r8 != r0) goto L52
            return r0
        L52:
            r7 = r12
            r12 = r8
            r8 = r7
        L55:
            androidx.compose.ui.input.pointer.PointerInputChange r12 = (androidx.compose.ui.input.pointer.PointerInputChange) r12
            if (r12 == 0) goto L64
            float r8 = r8.element
            java.lang.Float r8 = kotlin.coroutines.jvm.internal.a.c(r8)
            kotlin.Pair r8 = ms.k.a(r12, r8)
            goto L65
        L64:
            r8 = 0
        L65:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SliderKt.m1178awaitSlop8vUncbI(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, int, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float calcFraction(float f10, float f11, float f12) {
        float f13;
        float f14 = f11 - f10;
        if (f14 == 0.0f) {
            f13 = 0.0f;
        } else {
            f13 = (f12 - f10) / f14;
        }
        return e.m(f13, 0.0f, 1.0f);
    }

    public static final float getThumbRadius() {
        return ThumbRadius;
    }

    public static final float getTrackHeight() {
        return TrackHeight;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier rangeSliderPressDragModifier(Modifier modifier, MutableInteractionSource mutableInteractionSource, MutableInteractionSource mutableInteractionSource2, State<Float> state, State<Float> state2, boolean z10, boolean z11, float f10, b<Float> bVar, State<? extends Function1<? super Boolean, Unit>> state3, State<? extends Function2<? super Boolean, ? super Float, Unit>> state4) {
        if (z10) {
            return SuspendingPointerInputFilterKt.pointerInput(modifier, new Object[]{mutableInteractionSource, mutableInteractionSource2, Float.valueOf(f10), Boolean.valueOf(z11), bVar}, (Function2<? super PointerInputScope, ? super c<? super Unit>, ? extends Object>) new SliderKt$rangeSliderPressDragModifier$1(mutableInteractionSource, mutableInteractionSource2, state, state2, state4, z11, f10, state3, null));
        }
        return modifier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float scale(float f10, float f11, float f12, float f13, float f14) {
        return MathHelpersKt.lerp(f13, f14, calcFraction(f10, f11, f12));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier sliderSemantics(Modifier modifier, float f10, final List<Float> list, final boolean z10, final Function1<? super Float, Unit> function1, final b<Float> bVar, final int i10) {
        final float m10 = e.m(f10, bVar.getStart().floatValue(), bVar.getEndInclusive().floatValue());
        return ProgressSemanticsKt.progressSemantics(SemanticsModifierKt.semantics$default(modifier, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material.SliderKt$sliderSemantics$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                invoke2(semanticsPropertyReceiver);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull SemanticsPropertyReceiver semantics) {
                Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                if (!z10) {
                    SemanticsPropertiesKt.disabled(semantics);
                }
                final b<Float> bVar2 = bVar;
                final int i11 = i10;
                final List<Float> list2 = list;
                final float f11 = m10;
                final Function1<Float, Unit> function12 = function1;
                SemanticsPropertiesKt.setProgress$default(semantics, null, new Function1<Float, Boolean>() { // from class: androidx.compose.material.SliderKt$sliderSemantics$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Boolean invoke(Float f12) {
                        return invoke(f12.floatValue());
                    }

                    @NotNull
                    public final Boolean invoke(float f12) {
                        boolean z11;
                        Object obj;
                        float m11 = e.m(f12, bVar2.getStart().floatValue(), bVar2.getEndInclusive().floatValue());
                        if (i11 > 0) {
                            List<Float> list3 = list2;
                            b<Float> bVar3 = bVar2;
                            ArrayList arrayList = new ArrayList(CollectionsKt.z(list3, 10));
                            for (Number number : list3) {
                                arrayList.add(Float.valueOf(MathHelpersKt.lerp(bVar3.getStart().floatValue(), bVar3.getEndInclusive().floatValue(), number.floatValue())));
                            }
                            Iterator it = arrayList.iterator();
                            if (it.hasNext()) {
                                Object next = it.next();
                                if (it.hasNext()) {
                                    float abs = Math.abs(((Number) next).floatValue() - m11);
                                    do {
                                        Object next2 = it.next();
                                        float abs2 = Math.abs(((Number) next2).floatValue() - m11);
                                        if (Float.compare(abs, abs2) > 0) {
                                            next = next2;
                                            abs = abs2;
                                        }
                                    } while (it.hasNext());
                                    obj = next;
                                } else {
                                    obj = next;
                                }
                            } else {
                                obj = null;
                            }
                            Float f13 = (Float) obj;
                            if (f13 != null) {
                                m11 = f13.floatValue();
                            }
                        }
                        if (m11 == f11) {
                            z11 = false;
                        } else {
                            function12.invoke(Float.valueOf(m11));
                            z11 = true;
                        }
                        return Boolean.valueOf(z11);
                    }
                }, 1, null);
            }
        }, 1, null), f10, bVar, i10);
    }

    static /* synthetic */ Modifier sliderSemantics$default(Modifier modifier, float f10, List list, boolean z10, Function1 function1, b bVar, int i10, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            bVar = e.b(0.0f, 1.0f);
        }
        b bVar2 = bVar;
        if ((i11 & 32) != 0) {
            i10 = 0;
        }
        return sliderSemantics(modifier, f10, list, z10, function1, bVar2, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier sliderTapModifier(Modifier modifier, final DraggableState draggableState, final MutableInteractionSource mutableInteractionSource, final float f10, final boolean z10, final State<Float> state, final State<? extends Function1<? super Float, Unit>> state2, final MutableState<Float> mutableState, final boolean z11) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.material.SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                    invoke2(inspectorInfo);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                    Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                    inspectorInfo.setName("sliderTapModifier");
                    inspectorInfo.getProperties().set("draggableState", DraggableState.this);
                    inspectorInfo.getProperties().set("interactionSource", mutableInteractionSource);
                    inspectorInfo.getProperties().set("maxPx", Float.valueOf(f10));
                    inspectorInfo.getProperties().set("isRtl", Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("rawOffset", state);
                    inspectorInfo.getProperties().set("gestureEndAction", state2);
                    inspectorInfo.getProperties().set("pressOffset", mutableState);
                    inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z11));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.material.SliderKt$sliderTapModifier$2

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Slider.kt */
            @Metadata
            @d(c = "androidx.compose.material.SliderKt$sliderTapModifier$2$1", f = "Slider.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_RTC_ENABLE_RTC_UNINIT_LOCK_FREE}, m = "invokeSuspend")
            /* renamed from: androidx.compose.material.SliderKt$sliderTapModifier$2$1  reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass1 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
                final /* synthetic */ DraggableState $draggableState;
                final /* synthetic */ State<Function1<Float, Unit>> $gestureEndAction;
                final /* synthetic */ boolean $isRtl;
                final /* synthetic */ float $maxPx;
                final /* synthetic */ MutableState<Float> $pressOffset;
                final /* synthetic */ State<Float> $rawOffset;
                final /* synthetic */ g0 $scope;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: Slider.kt */
                @Metadata
                @d(c = "androidx.compose.material.SliderKt$sliderTapModifier$2$1$1", f = "Slider.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_RTC_PLUGIN_PACKAGE_NAME}, m = "invokeSuspend")
                /* renamed from: androidx.compose.material.SliderKt$sliderTapModifier$2$1$1  reason: invalid class name and collision with other inner class name */
                /* loaded from: classes.dex */
                public static final class C00501 extends SuspendLambda implements n<PressGestureScope, Offset, c<? super Unit>, Object> {
                    final /* synthetic */ boolean $isRtl;
                    final /* synthetic */ float $maxPx;
                    final /* synthetic */ MutableState<Float> $pressOffset;
                    final /* synthetic */ State<Float> $rawOffset;
                    /* synthetic */ long J$0;
                    private /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C00501(boolean z10, float f10, MutableState<Float> mutableState, State<Float> state, c<? super C00501> cVar) {
                        super(3, cVar);
                        this.$isRtl = z10;
                        this.$maxPx = f10;
                        this.$pressOffset = mutableState;
                        this.$rawOffset = state;
                    }

                    @Override // at.n
                    public /* bridge */ /* synthetic */ Object invoke(PressGestureScope pressGestureScope, Offset offset, c<? super Unit> cVar) {
                        return m1179invoked4ec7I(pressGestureScope, offset.m1616unboximpl(), cVar);
                    }

                    @Nullable
                    /* renamed from: invoke-d-4ec7I  reason: not valid java name */
                    public final Object m1179invoked4ec7I(@NotNull PressGestureScope pressGestureScope, long j10, @Nullable c<? super Unit> cVar) {
                        C00501 c00501 = new C00501(this.$isRtl, this.$maxPx, this.$pressOffset, this.$rawOffset, cVar);
                        c00501.L$0 = pressGestureScope;
                        c00501.J$0 = j10;
                        return c00501.invokeSuspend(Unit.f60915a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        float m1606getXimpl;
                        Object f10 = a.f();
                        int i10 = this.label;
                        try {
                            if (i10 != 0) {
                                if (i10 == 1) {
                                    f.b(obj);
                                } else {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                            } else {
                                f.b(obj);
                                PressGestureScope pressGestureScope = (PressGestureScope) this.L$0;
                                long j10 = this.J$0;
                                if (this.$isRtl) {
                                    m1606getXimpl = this.$maxPx - Offset.m1606getXimpl(j10);
                                } else {
                                    m1606getXimpl = Offset.m1606getXimpl(j10);
                                }
                                this.$pressOffset.setValue(kotlin.coroutines.jvm.internal.a.c(m1606getXimpl - this.$rawOffset.getValue().floatValue()));
                                this.label = 1;
                                if (pressGestureScope.awaitRelease(this) == f10) {
                                    return f10;
                                }
                            }
                        } catch (GestureCancellationException unused) {
                            this.$pressOffset.setValue(kotlin.coroutines.jvm.internal.a.c(0.0f));
                        }
                        return Unit.f60915a;
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                AnonymousClass1(boolean z10, float f10, MutableState<Float> mutableState, State<Float> state, g0 g0Var, DraggableState draggableState, State<? extends Function1<? super Float, Unit>> state2, c<? super AnonymousClass1> cVar) {
                    super(2, cVar);
                    this.$isRtl = z10;
                    this.$maxPx = f10;
                    this.$pressOffset = mutableState;
                    this.$rawOffset = state;
                    this.$scope = g0Var;
                    this.$draggableState = draggableState;
                    this.$gestureEndAction = state2;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$isRtl, this.$maxPx, this.$pressOffset, this.$rawOffset, this.$scope, this.$draggableState, this.$gestureEndAction, cVar);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
                    return ((AnonymousClass1) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    Object f10 = a.f();
                    int i10 = this.label;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            f.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        f.b(obj);
                        PointerInputScope pointerInputScope = (PointerInputScope) this.L$0;
                        C00501 c00501 = new C00501(this.$isRtl, this.$maxPx, this.$pressOffset, this.$rawOffset, null);
                        final g0 g0Var = this.$scope;
                        final DraggableState draggableState = this.$draggableState;
                        final State<Function1<Float, Unit>> state = this.$gestureEndAction;
                        Function1<Offset, Unit> function1 = new Function1<Offset, Unit>() { // from class: androidx.compose.material.SliderKt.sliderTapModifier.2.1.2

                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* compiled from: Slider.kt */
                            @Metadata
                            @d(c = "androidx.compose.material.SliderKt$sliderTapModifier$2$1$2$1", f = "Slider.kt", l = {894}, m = "invokeSuspend")
                            /* renamed from: androidx.compose.material.SliderKt$sliderTapModifier$2$1$2$1  reason: invalid class name and collision with other inner class name */
                            /* loaded from: classes.dex */
                            public static final class C00511 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                                final /* synthetic */ DraggableState $draggableState;
                                final /* synthetic */ State<Function1<Float, Unit>> $gestureEndAction;
                                int label;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                /* compiled from: Slider.kt */
                                @Metadata
                                @d(c = "androidx.compose.material.SliderKt$sliderTapModifier$2$1$2$1$1", f = "Slider.kt", l = {}, m = "invokeSuspend")
                                /* renamed from: androidx.compose.material.SliderKt$sliderTapModifier$2$1$2$1$1  reason: invalid class name and collision with other inner class name */
                                /* loaded from: classes.dex */
                                public static final class C00521 extends SuspendLambda implements Function2<DragScope, c<? super Unit>, Object> {
                                    private /* synthetic */ Object L$0;
                                    int label;

                                    C00521(c<? super C00521> cVar) {
                                        super(2, cVar);
                                    }

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    @NotNull
                                    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                                        C00521 c00521 = new C00521(cVar);
                                        c00521.L$0 = obj;
                                        return c00521;
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    @Nullable
                                    public final Object invoke(@NotNull DragScope dragScope, @Nullable c<? super Unit> cVar) {
                                        return ((C00521) create(dragScope, cVar)).invokeSuspend(Unit.f60915a);
                                    }

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    @Nullable
                                    public final Object invokeSuspend(@NotNull Object obj) {
                                        a.f();
                                        if (this.label == 0) {
                                            f.b(obj);
                                            ((DragScope) this.L$0).dragBy(0.0f);
                                            return Unit.f60915a;
                                        }
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                }

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                C00511(DraggableState draggableState, State<? extends Function1<? super Float, Unit>> state, c<? super C00511> cVar) {
                                    super(2, cVar);
                                    this.$draggableState = draggableState;
                                    this.$gestureEndAction = state;
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                @NotNull
                                public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                                    return new C00511(this.$draggableState, this.$gestureEndAction, cVar);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                @Nullable
                                public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                                    return ((C00511) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                @Nullable
                                public final Object invokeSuspend(@NotNull Object obj) {
                                    Object f10 = a.f();
                                    int i10 = this.label;
                                    if (i10 != 0) {
                                        if (i10 == 1) {
                                            f.b(obj);
                                        } else {
                                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                        }
                                    } else {
                                        f.b(obj);
                                        DraggableState draggableState = this.$draggableState;
                                        MutatePriority mutatePriority = MutatePriority.UserInput;
                                        C00521 c00521 = new C00521(null);
                                        this.label = 1;
                                        if (draggableState.drag(mutatePriority, c00521, this) == f10) {
                                            return f10;
                                        }
                                    }
                                    this.$gestureEndAction.getValue().invoke(kotlin.coroutines.jvm.internal.a.c(0.0f));
                                    return Unit.f60915a;
                                }
                            }

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                                m1180invokek4lQ0M(offset.m1616unboximpl());
                                return Unit.f60915a;
                            }

                            /* renamed from: invoke-k-4lQ0M  reason: not valid java name */
                            public final void m1180invokek4lQ0M(long j10) {
                                g.d(g0.this, null, null, new C00511(draggableState, state, null), 3, null);
                            }
                        };
                        this.label = 1;
                        if (TapGestureDetectorKt.detectTapGestures$default(pointerInputScope, null, null, c00501, function1, this, 3, null) == f10) {
                            return f10;
                        }
                    }
                    return Unit.f60915a;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(1945228890);
                if (z11) {
                    composer.startReplaceableGroup(773894976);
                    composer.startReplaceableGroup(-492369756);
                    Object rememberedValue = composer.rememberedValue();
                    if (rememberedValue == Composer.Companion.getEmpty()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.f61040a, composer));
                        composer.updateRememberedValue(compositionScopedCoroutineScopeCanceller);
                        rememberedValue = compositionScopedCoroutineScopeCanceller;
                    }
                    composer.endReplaceableGroup();
                    g0 coroutineScope = ((CompositionScopedCoroutineScopeCanceller) rememberedValue).getCoroutineScope();
                    composer.endReplaceableGroup();
                    composed = SuspendingPointerInputFilterKt.pointerInput(composed, new Object[]{draggableState, mutableInteractionSource, Float.valueOf(f10), Boolean.valueOf(z10)}, (Function2<? super PointerInputScope, ? super c<? super Unit>, ? extends Object>) new AnonymousClass1(z10, f10, mutableState, state, coroutineScope, draggableState, state2, null));
                }
                composer.endReplaceableGroup();
                return composed;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float snapValueToTick(float f10, List<Float> list, float f11, float f12) {
        Object obj;
        Iterator<T> it = list.iterator();
        if (!it.hasNext()) {
            obj = null;
        } else {
            Object next = it.next();
            if (!it.hasNext()) {
                obj = next;
            } else {
                float abs = Math.abs(MathHelpersKt.lerp(f11, f12, ((Number) next).floatValue()) - f10);
                do {
                    Object next2 = it.next();
                    float abs2 = Math.abs(MathHelpersKt.lerp(f11, f12, ((Number) next2).floatValue()) - f10);
                    if (Float.compare(abs, abs2) > 0) {
                        next = next2;
                        abs = abs2;
                    }
                } while (it.hasNext());
                obj = next;
            }
        }
        Float f13 = (Float) obj;
        if (f13 != null) {
            return MathHelpersKt.lerp(f11, f12, f13.floatValue());
        }
        return f10;
    }

    private static final List<Float> stepsToTickFractions(int i10) {
        if (i10 == 0) {
            return CollectionsKt.n();
        }
        int i11 = i10 + 2;
        ArrayList arrayList = new ArrayList(i11);
        for (int i12 = 0; i12 < i11; i12++) {
            arrayList.add(Float.valueOf(i12 / (i10 + 1)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b<Float> scale(float f10, float f11, b<Float> bVar, float f12, float f13) {
        return e.b(scale(f10, f11, bVar.getStart().floatValue(), f12, f13), scale(f10, f11, bVar.getEndInclusive().floatValue(), f12, f13));
    }
}
