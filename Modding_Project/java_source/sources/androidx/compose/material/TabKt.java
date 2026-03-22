package androidx.compose.material;

import androidx.compose.animation.ColorVectorConverterKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnitKt;
import at.n;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Tab.kt */
@Metadata
/* loaded from: classes.dex */
public final class TabKt {
    private static final int TabFadeInAnimationDelay = 100;
    private static final int TabFadeInAnimationDuration = 150;
    private static final int TabFadeOutAnimationDuration = 100;
    private static final float SmallTabHeight = Dp.m4049constructorimpl(48);
    private static final float LargeTabHeight = Dp.m4049constructorimpl(72);
    private static final float HorizontalTextPadding = Dp.m4049constructorimpl(16);
    private static final float SingleLineTextBaselineWithIcon = Dp.m4049constructorimpl(14);
    private static final float DoubleLineTextBaselineWithIcon = Dp.m4049constructorimpl(6);
    private static final long IconDistanceFromBaseline = TextUnitKt.getSp(20);
    private static final float TextDistanceFromLeadingIcon = Dp.m4049constructorimpl(8);

    /* JADX WARN: Removed duplicated region for block: B:105:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:141:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x011a  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /* renamed from: LeadingIconTab-0nD-MI0  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1218LeadingIconTab0nDMI0(final boolean r28, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r29, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r30, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r31, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r32, boolean r33, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r34, long r35, long r37, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r39, final int r40, final int r41) {
        /*
            Method dump skipped, instructions count: 600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.TabKt.m1218LeadingIconTab0nDMI0(boolean, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, boolean, androidx.compose.foundation.interaction.MutableInteractionSource, long, long, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:152:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0110  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /* renamed from: Tab-0nD-MI0  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1219Tab0nDMI0(final boolean r29, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r30, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r31, boolean r32, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r33, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r34, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r35, long r36, long r38, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r40, final int r41, final int r42) {
        /*
            Method dump skipped, instructions count: 635
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.TabKt.m1219Tab0nDMI0(boolean, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.foundation.interaction.MutableInteractionSource, long, long, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:131:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0115  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /* renamed from: Tab-EVJuX4I  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1220TabEVJuX4I(final boolean r27, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r28, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r29, boolean r30, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r31, long r32, long r34, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r36, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r37, final int r38, final int r39) {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.TabKt.m1220TabEVJuX4I(boolean, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.foundation.interaction.MutableInteractionSource, long, long, at.n, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    public static final void TabBaselineLayout(final Function2<? super Composer, ? super Integer, Unit> function2, final Function2<? super Composer, ? super Integer, Unit> function22, Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        Composer startRestartGroup = composer.startRestartGroup(1249848471);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(function2)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i11 = i13 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(function22)) {
                i12 = 32;
            } else {
                i12 = 16;
            }
            i11 |= i12;
        }
        if ((i11 & 91) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material.TabKt$TabBaselineLayout$2
                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                /* renamed from: measure-3p2s80s */
                public final MeasureResult mo42measure3p2s80s(@NotNull final MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j10) {
                    final Placeable placeable;
                    final Placeable placeable2;
                    int i14;
                    final Integer num;
                    final Integer num2;
                    Intrinsics.checkNotNullParameter(Layout, "$this$Layout");
                    Intrinsics.checkNotNullParameter(measurables, "measurables");
                    if (function2 != null) {
                        for (Measurable measurable : measurables) {
                            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable), MimeTypes.BASE_TYPE_TEXT)) {
                                placeable = measurable.mo3335measureBRTryo0(Constraints.m3996copyZbe2FdA$default(j10, 0, 0, 0, 0, 11, null));
                            }
                        }
                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                    }
                    placeable = null;
                    if (function22 != null) {
                        for (Measurable measurable2 : measurables) {
                            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable2), "icon")) {
                                placeable2 = measurable2.mo3335measureBRTryo0(j10);
                            }
                        }
                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                    }
                    placeable2 = null;
                    int i15 = 0;
                    if (placeable != null) {
                        i14 = placeable.getWidth();
                    } else {
                        i14 = 0;
                    }
                    if (placeable2 != null) {
                        i15 = placeable2.getWidth();
                    }
                    final int max = Math.max(i14, i15);
                    final int mo336roundToPx0680j_4 = Layout.mo336roundToPx0680j_4((placeable == null || placeable2 == null) ? TabKt.SmallTabHeight : TabKt.LargeTabHeight);
                    if (placeable != null) {
                        num = Integer.valueOf(placeable.get(AlignmentLineKt.getFirstBaseline()));
                    } else {
                        num = null;
                    }
                    if (placeable != null) {
                        num2 = Integer.valueOf(placeable.get(AlignmentLineKt.getLastBaseline()));
                    } else {
                        num2 = null;
                    }
                    return MeasureScope.layout$default(Layout, max, mo336roundToPx0680j_4, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.TabKt$TabBaselineLayout$2$measure$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                            invoke2(placementScope);
                            return Unit.f60915a;
                        }

                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                            Placeable placeable3;
                            Intrinsics.checkNotNullParameter(layout, "$this$layout");
                            Placeable placeable4 = Placeable.this;
                            if (placeable4 == null || (placeable3 = placeable2) == null) {
                                if (placeable4 != null) {
                                    TabKt.placeTextOrIcon(layout, placeable4, mo336roundToPx0680j_4);
                                    return;
                                }
                                Placeable placeable5 = placeable2;
                                if (placeable5 != null) {
                                    TabKt.placeTextOrIcon(layout, placeable5, mo336roundToPx0680j_4);
                                    return;
                                }
                                return;
                            }
                            MeasureScope measureScope = Layout;
                            int i16 = max;
                            int i17 = mo336roundToPx0680j_4;
                            Integer num3 = num;
                            Intrinsics.checkNotNull(num3);
                            int intValue = num3.intValue();
                            Integer num4 = num2;
                            Intrinsics.checkNotNull(num4);
                            TabKt.placeTextAndIcon(layout, measureScope, placeable4, placeable3, i16, i17, intValue, num4.intValue());
                        }
                    }, 4, null);
                }
            };
            startRestartGroup.startReplaceableGroup(-1323940314);
            Modifier.Companion companion = Modifier.Companion;
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion2.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(companion);
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
            Updater.m1383setimpl(m1376constructorimpl, measurePolicy, companion2.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion2.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion2.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion2.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(1142473408);
            startRestartGroup.startReplaceableGroup(-2141028452);
            if (function2 != null) {
                Modifier m449paddingVpY3zN4$default = PaddingKt.m449paddingVpY3zN4$default(LayoutIdKt.layoutId(companion, MimeTypes.BASE_TYPE_TEXT), HorizontalTextPadding, 0.0f, 2, null);
                startRestartGroup.startReplaceableGroup(733328855);
                MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.Companion.getTopStart(), false, startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(-1323940314);
                Density density2 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                LayoutDirection layoutDirection2 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                ViewConfiguration viewConfiguration2 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
                Function0<ComposeUiNode> constructor2 = companion2.getConstructor();
                n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(m449paddingVpY3zN4$default);
                if (startRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor2);
                } else {
                    startRestartGroup.useNode();
                }
                startRestartGroup.disableReusing();
                Composer m1376constructorimpl2 = Updater.m1376constructorimpl(startRestartGroup);
                Updater.m1383setimpl(m1376constructorimpl2, rememberBoxMeasurePolicy, companion2.getSetMeasurePolicy());
                Updater.m1383setimpl(m1376constructorimpl2, density2, companion2.getSetDensity());
                Updater.m1383setimpl(m1376constructorimpl2, layoutDirection2, companion2.getSetLayoutDirection());
                Updater.m1383setimpl(m1376constructorimpl2, viewConfiguration2, companion2.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf2.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                startRestartGroup.startReplaceableGroup(-2137368960);
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                startRestartGroup.startReplaceableGroup(-459869377);
                function2.invoke(startRestartGroup, Integer.valueOf(i11 & 14));
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            }
            startRestartGroup.endReplaceableGroup();
            if (function22 != null) {
                Modifier layoutId = LayoutIdKt.layoutId(companion, "icon");
                startRestartGroup.startReplaceableGroup(733328855);
                MeasurePolicy rememberBoxMeasurePolicy2 = BoxKt.rememberBoxMeasurePolicy(Alignment.Companion.getTopStart(), false, startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(-1323940314);
                Density density3 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                LayoutDirection layoutDirection3 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                ViewConfiguration viewConfiguration3 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
                Function0<ComposeUiNode> constructor3 = companion2.getConstructor();
                n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf3 = LayoutKt.materializerOf(layoutId);
                if (startRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor3);
                } else {
                    startRestartGroup.useNode();
                }
                startRestartGroup.disableReusing();
                Composer m1376constructorimpl3 = Updater.m1376constructorimpl(startRestartGroup);
                Updater.m1383setimpl(m1376constructorimpl3, rememberBoxMeasurePolicy2, companion2.getSetMeasurePolicy());
                Updater.m1383setimpl(m1376constructorimpl3, density3, companion2.getSetDensity());
                Updater.m1383setimpl(m1376constructorimpl3, layoutDirection3, companion2.getSetLayoutDirection());
                Updater.m1383setimpl(m1376constructorimpl3, viewConfiguration3, companion2.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf3.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                startRestartGroup.startReplaceableGroup(-2137368960);
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                startRestartGroup.startReplaceableGroup(892169960);
                function22.invoke(startRestartGroup, Integer.valueOf((i11 >> 3) & 14));
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            }
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TabKt$TabBaselineLayout$3
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

                public final void invoke(@Nullable Composer composer2, int i14) {
                    TabKt.TabBaselineLayout(function2, function22, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    /* renamed from: TabTransition-Klgx-Pg  reason: not valid java name */
    public static final void m1221TabTransitionKlgxPg(final long j10, final long j11, final boolean z10, final Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, final int i10) {
        int i11;
        long j12;
        long j13;
        long j14;
        int i12;
        int i13;
        int i14;
        int i15;
        Composer startRestartGroup = composer.startRestartGroup(-405571117);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(j10)) {
                i15 = 4;
            } else {
                i15 = 2;
            }
            i11 = i15 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(j11)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i11 |= i14;
        }
        if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(z10)) {
                i13 = 256;
            } else {
                i13 = 128;
            }
            i11 |= i13;
        }
        if ((i10 & 7168) == 0) {
            if (startRestartGroup.changed(function2)) {
                i12 = 2048;
            } else {
                i12 = 1024;
            }
            i11 |= i12;
        }
        if ((i11 & 5851) == 1170 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            int i16 = i11 >> 6;
            Transition updateTransition = TransitionKt.updateTransition(Boolean.valueOf(z10), (String) null, startRestartGroup, i16 & 14, 2);
            TabKt$TabTransition$color$2 tabKt$TabTransition$color$2 = new n<Transition.Segment<Boolean>, Composer, Integer, FiniteAnimationSpec<Color>>() { // from class: androidx.compose.material.TabKt$TabTransition$color$2
                @Override // at.n
                public /* bridge */ /* synthetic */ FiniteAnimationSpec<Color> invoke(Transition.Segment<Boolean> segment, Composer composer2, Integer num) {
                    return invoke(segment, composer2, num.intValue());
                }

                @Composable
                @NotNull
                public final FiniteAnimationSpec<Color> invoke(@NotNull Transition.Segment<Boolean> animateColor, @Nullable Composer composer2, int i17) {
                    TweenSpec tween$default;
                    Intrinsics.checkNotNullParameter(animateColor, "$this$animateColor");
                    composer2.startReplaceableGroup(-2120892502);
                    if (animateColor.isTransitioningTo(Boolean.FALSE, Boolean.TRUE)) {
                        tween$default = AnimationSpecKt.tween(150, 100, EasingKt.getLinearEasing());
                    } else {
                        tween$default = AnimationSpecKt.tween$default(100, 0, EasingKt.getLinearEasing(), 2, null);
                    }
                    composer2.endReplaceableGroup();
                    return tween$default;
                }
            };
            startRestartGroup.startReplaceableGroup(-1462136984);
            boolean booleanValue = ((Boolean) updateTransition.getTargetState()).booleanValue();
            startRestartGroup.startReplaceableGroup(1445938070);
            if (booleanValue) {
                j12 = j10;
            } else {
                j12 = j11;
            }
            startRestartGroup.endReplaceableGroup();
            ColorSpace m1846getColorSpaceimpl = Color.m1846getColorSpaceimpl(j12);
            startRestartGroup.startReplaceableGroup(-3686930);
            boolean changed = startRestartGroup.changed(m1846getColorSpaceimpl);
            TwoWayConverter<Color, AnimationVector4D> rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = ColorVectorConverterKt.getVectorConverter(Color.Companion).invoke(m1846getColorSpaceimpl);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            TwoWayConverter twoWayConverter = (TwoWayConverter) rememberedValue;
            startRestartGroup.startReplaceableGroup(1847725064);
            boolean booleanValue2 = ((Boolean) updateTransition.getCurrentState()).booleanValue();
            startRestartGroup.startReplaceableGroup(1445938070);
            if (booleanValue2) {
                j13 = j10;
            } else {
                j13 = j11;
            }
            startRestartGroup.endReplaceableGroup();
            Color m1832boximpl = Color.m1832boximpl(j13);
            boolean booleanValue3 = ((Boolean) updateTransition.getTargetState()).booleanValue();
            startRestartGroup.startReplaceableGroup(1445938070);
            if (booleanValue3) {
                j14 = j10;
            } else {
                j14 = j11;
            }
            startRestartGroup.endReplaceableGroup();
            State createTransitionAnimation = TransitionKt.createTransitionAnimation(updateTransition, m1832boximpl, Color.m1832boximpl(j14), tabKt$TabTransition$color$2.invoke((TabKt$TabTransition$color$2) updateTransition.getSegment(), (Transition.Segment) startRestartGroup, (Composer) 0), twoWayConverter, "ColorAnimation", startRestartGroup, 32768);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            CompositionLocalKt.CompositionLocalProvider(new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m1832boximpl(Color.m1841copywmQWz5c$default(m1222TabTransition_Klgx_Pg$lambda5(createTransitionAnimation), 1.0f, 0.0f, 0.0f, 0.0f, 14, null))), ContentAlphaKt.getLocalContentAlpha().provides(Float.valueOf(Color.m1844getAlphaimpl(m1222TabTransition_Klgx_Pg$lambda5(createTransitionAnimation))))}, function2, startRestartGroup, (i16 & 112) | 8);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TabKt$TabTransition$1
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

                public final void invoke(@Nullable Composer composer2, int i17) {
                    TabKt.m1221TabTransitionKlgxPg(j10, j11, z10, function2, composer2, i10 | 1);
                }
            });
        }
    }

    /* renamed from: TabTransition_Klgx_Pg$lambda-5  reason: not valid java name */
    private static final long m1222TabTransition_Klgx_Pg$lambda5(State<Color> state) {
        return state.getValue().m1852unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void placeTextAndIcon(Placeable.PlacementScope placementScope, Density density, Placeable placeable, Placeable placeable2, int i10, int i11, int i12, int i13) {
        float f10;
        if (i12 == i13) {
            f10 = SingleLineTextBaselineWithIcon;
        } else {
            f10 = DoubleLineTextBaselineWithIcon;
        }
        int mo336roundToPx0680j_4 = density.mo336roundToPx0680j_4(f10) + density.mo336roundToPx0680j_4(TabRowDefaults.INSTANCE.m1230getIndicatorHeightD9Ej5fM());
        int i14 = (i11 - i13) - mo336roundToPx0680j_4;
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, (i10 - placeable.getWidth()) / 2, i14, 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, (i10 - placeable2.getWidth()) / 2, i14 - ((placeable2.getHeight() + density.mo335roundToPxR2X_6o(IconDistanceFromBaseline)) - i12), 0.0f, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void placeTextOrIcon(Placeable.PlacementScope placementScope, Placeable placeable, int i10) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, (i10 - placeable.getHeight()) / 2, 0.0f, 4, null);
    }
}
