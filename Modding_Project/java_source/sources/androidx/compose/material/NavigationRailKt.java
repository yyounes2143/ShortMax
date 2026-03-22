package androidx.compose.material;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
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
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
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
import at.n;
import bt.a;
import com.ss.ttvideoengine.TTVideoEngineInterface;
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
/* compiled from: NavigationRail.kt */
@Metadata
/* loaded from: classes.dex */
public final class NavigationRailKt {
    private static final float HeaderPadding;
    private static final float NavigationRailPadding;
    @NotNull
    private static final TweenSpec<Float> NavigationRailAnimationSpec = new TweenSpec<>(300, 0, EasingKt.getFastOutSlowInEasing(), 2, null);
    private static final float NavigationRailItemSize = Dp.m4049constructorimpl(72);
    private static final float NavigationRailItemCompactSize = Dp.m4049constructorimpl(56);
    private static final float ItemLabelBaselineBottomOffset = Dp.m4049constructorimpl(16);
    private static final float ItemIconTopOffset = Dp.m4049constructorimpl(14);

    static {
        float f10 = 8;
        NavigationRailPadding = Dp.m4049constructorimpl(f10);
        HeaderPadding = Dp.m4049constructorimpl(f10);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:105:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0125  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /* renamed from: NavigationRail-HsRjFd4  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1124NavigationRailHsRjFd4(@org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r24, long r25, long r27, float r29, @org.jetbrains.annotations.Nullable at.n<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r30, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r31, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r32, final int r33, final int r34) {
        /*
            Method dump skipped, instructions count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.NavigationRailKt.m1124NavigationRailHsRjFd4(androidx.compose.ui.Modifier, long, long, float, at.n, at.n, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:166:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0127  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /* renamed from: NavigationRailItem-0S3VyRs  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1125NavigationRailItem0S3VyRs(final boolean r25, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r26, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r27, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r28, boolean r29, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r30, boolean r31, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r32, long r33, long r35, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r37, final int r38, final int r39) {
        /*
            Method dump skipped, instructions count: 876
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.NavigationRailKt.m1125NavigationRailItem0S3VyRs(boolean, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, boolean, kotlin.jvm.functions.Function2, boolean, androidx.compose.foundation.interaction.MutableInteractionSource, long, long, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    public static final void NavigationRailItemBaselineLayout(final Function2<? super Composer, ? super Integer, Unit> function2, final Function2<? super Composer, ? super Integer, Unit> function22, final float f10, Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        Composer startRestartGroup = composer.startRestartGroup(-1903861684);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(function2)) {
                i14 = 4;
            } else {
                i14 = 2;
            }
            i11 = i14 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(function22)) {
                i13 = 32;
            } else {
                i13 = 16;
            }
            i11 |= i13;
        }
        if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(f10)) {
                i12 = 256;
            } else {
                i12 = 128;
            }
            i11 |= i12;
        }
        if ((i11 & TTVideoEngineInterface.PLAYER_OPTION_ENABLE_RECEIVE_BINARY_SEI) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material.NavigationRailKt$NavigationRailItemBaselineLayout$2
                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                /* renamed from: measure-3p2s80s */
                public final MeasureResult mo42measure3p2s80s(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j10) {
                    Placeable placeable;
                    MeasureResult m1133placeLabelAndIconDIyivk0;
                    MeasureResult m1132placeIcon3p2s80s;
                    Intrinsics.checkNotNullParameter(Layout, "$this$Layout");
                    Intrinsics.checkNotNullParameter(measurables, "measurables");
                    List<? extends Measurable> list = measurables;
                    for (Measurable measurable : list) {
                        if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable), "icon")) {
                            Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(j10);
                            if (function22 != null) {
                                for (Measurable measurable2 : list) {
                                    if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable2), "label")) {
                                        placeable = measurable2.mo3335measureBRTryo0(Constraints.m3996copyZbe2FdA$default(j10, 0, 0, 0, 0, 11, null));
                                    }
                                }
                                throw new NoSuchElementException("Collection contains no element matching the predicate.");
                            }
                            placeable = null;
                            if (function22 == null) {
                                m1132placeIcon3p2s80s = NavigationRailKt.m1132placeIcon3p2s80s(Layout, mo3335measureBRTryo0, j10);
                                return m1132placeIcon3p2s80s;
                            }
                            Intrinsics.checkNotNull(placeable);
                            m1133placeLabelAndIconDIyivk0 = NavigationRailKt.m1133placeLabelAndIconDIyivk0(Layout, placeable, mo3335measureBRTryo0, j10, f10);
                            return m1133placeLabelAndIconDIyivk0;
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
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
            startRestartGroup.startReplaceableGroup(1943278197);
            Modifier layoutId = LayoutIdKt.layoutId(companion, "icon");
            startRestartGroup.startReplaceableGroup(733328855);
            Alignment.Companion companion3 = Alignment.Companion;
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(companion3.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density2 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection2 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration2 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            Function0<ComposeUiNode> constructor2 = companion2.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(layoutId);
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
            startRestartGroup.startReplaceableGroup(1405563567);
            function2.invoke(startRestartGroup, Integer.valueOf(i11 & 14));
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            if (function22 != null) {
                Modifier alpha = AlphaKt.alpha(LayoutIdKt.layoutId(companion, "label"), f10);
                startRestartGroup.startReplaceableGroup(733328855);
                MeasurePolicy rememberBoxMeasurePolicy2 = BoxKt.rememberBoxMeasurePolicy(companion3.getTopStart(), false, startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(-1323940314);
                Density density3 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                LayoutDirection layoutDirection3 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                ViewConfiguration viewConfiguration3 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
                Function0<ComposeUiNode> constructor3 = companion2.getConstructor();
                n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf3 = LayoutKt.materializerOf(alpha);
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
                startRestartGroup.startReplaceableGroup(2107148020);
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
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.NavigationRailKt$NavigationRailItemBaselineLayout$3
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

                public final void invoke(@Nullable Composer composer2, int i15) {
                    NavigationRailKt.NavigationRailItemBaselineLayout(function2, function22, f10, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    /* renamed from: NavigationRailTransition-Klgx-Pg  reason: not valid java name */
    public static final void m1126NavigationRailTransitionKlgxPg(final long j10, final long j11, final boolean z10, final n<? super Float, ? super Composer, ? super Integer, Unit> nVar, Composer composer, final int i10) {
        int i11;
        float f10;
        int i12;
        int i13;
        int i14;
        int i15;
        Composer startRestartGroup = composer.startRestartGroup(-207161906);
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
            if (startRestartGroup.changed(nVar)) {
                i12 = 2048;
            } else {
                i12 = 1024;
            }
            i11 |= i12;
        }
        final int i16 = i11;
        if ((i16 & 5851) == 1170 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (z10) {
                f10 = 1.0f;
            } else {
                f10 = 0.0f;
            }
            final State<Float> animateFloatAsState = AnimateAsStateKt.animateFloatAsState(f10, NavigationRailAnimationSpec, 0.0f, null, startRestartGroup, 48, 12);
            long m1894lerpjxsXWHM = ColorKt.m1894lerpjxsXWHM(j11, j10, m1127NavigationRailTransition_Klgx_Pg$lambda3(animateFloatAsState));
            CompositionLocalKt.CompositionLocalProvider(new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m1832boximpl(Color.m1841copywmQWz5c$default(m1894lerpjxsXWHM, 1.0f, 0.0f, 0.0f, 0.0f, 14, null))), ContentAlphaKt.getLocalContentAlpha().provides(Float.valueOf(Color.m1844getAlphaimpl(m1894lerpjxsXWHM)))}, ComposableLambdaKt.composableLambda(startRestartGroup, -1688205042, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.NavigationRailKt$NavigationRailTransition$1
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

                @Composable
                public final void invoke(@Nullable Composer composer2, int i17) {
                    float m1127NavigationRailTransition_Klgx_Pg$lambda3;
                    if ((i17 & 11) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    n<Float, Composer, Integer, Unit> nVar2 = nVar;
                    m1127NavigationRailTransition_Klgx_Pg$lambda3 = NavigationRailKt.m1127NavigationRailTransition_Klgx_Pg$lambda3(animateFloatAsState);
                    nVar2.invoke(Float.valueOf(m1127NavigationRailTransition_Klgx_Pg$lambda3), composer2, Integer.valueOf((i16 >> 6) & 112));
                }
            }), startRestartGroup, 56);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.NavigationRailKt$NavigationRailTransition$2
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
                    NavigationRailKt.m1126NavigationRailTransitionKlgxPg(j10, j11, z10, nVar, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: NavigationRailTransition_Klgx_Pg$lambda-3  reason: not valid java name */
    public static final float m1127NavigationRailTransition_Klgx_Pg$lambda3(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: placeIcon-3p2s80s  reason: not valid java name */
    public static final MeasureResult m1132placeIcon3p2s80s(MeasureScope measureScope, final Placeable placeable, long j10) {
        final int max = Math.max(0, (Constraints.m4005getMaxWidthimpl(j10) - placeable.getWidth()) / 2);
        final int max2 = Math.max(0, (Constraints.m4004getMaxHeightimpl(j10) - placeable.getHeight()) / 2);
        return MeasureScope.layout$default(measureScope, Constraints.m4005getMaxWidthimpl(j10), Constraints.m4004getMaxHeightimpl(j10), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.NavigationRailKt$placeIcon$1
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
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                Placeable.PlacementScope.placeRelative$default(layout, Placeable.this, max, max2, 0.0f, 4, null);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: placeLabelAndIcon-DIyivk0  reason: not valid java name */
    public static final MeasureResult m1133placeLabelAndIconDIyivk0(MeasureScope measureScope, final Placeable placeable, final Placeable placeable2, long j10, final float f10) {
        int i10 = placeable.get(AlignmentLineKt.getLastBaseline());
        final int m4004getMaxHeightimpl = (Constraints.m4004getMaxHeightimpl(j10) - i10) - measureScope.mo336roundToPx0680j_4(ItemLabelBaselineBottomOffset);
        final int m4005getMaxWidthimpl = (Constraints.m4005getMaxWidthimpl(j10) - placeable.getWidth()) / 2;
        final int mo336roundToPx0680j_4 = measureScope.mo336roundToPx0680j_4(ItemIconTopOffset);
        final int m4005getMaxWidthimpl2 = (Constraints.m4005getMaxWidthimpl(j10) - placeable2.getWidth()) / 2;
        final int c10 = a.c((((Constraints.m4004getMaxHeightimpl(j10) - placeable2.getHeight()) / 2) - mo336roundToPx0680j_4) * (1 - f10));
        return MeasureScope.layout$default(measureScope, Constraints.m4005getMaxWidthimpl(j10), Constraints.m4004getMaxHeightimpl(j10), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.NavigationRailKt$placeLabelAndIcon$1
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
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                if (f10 != 0.0f) {
                    Placeable.PlacementScope.placeRelative$default(layout, placeable, m4005getMaxWidthimpl, m4004getMaxHeightimpl + c10, 0.0f, 4, null);
                }
                Placeable.PlacementScope.placeRelative$default(layout, placeable2, m4005getMaxWidthimpl2, mo336roundToPx0680j_4 + c10, 0.0f, 4, null);
            }
        }, 4, null);
    }
}
