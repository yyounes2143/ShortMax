package androidx.compose.material;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
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
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnitKt;
import at.n;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AlertDialog.kt */
@Metadata
/* loaded from: classes.dex */
public final class AlertDialogKt {
    private static final long TextBaselineDistanceFromTitle;
    private static final long TextBaselineDistanceFromTop;
    @NotNull
    private static final Modifier TextPadding;
    private static final long TitleBaselineDistanceFromTop;
    @NotNull
    private static final Modifier TitlePadding;

    static {
        Modifier.Companion companion = Modifier.Companion;
        float f10 = 24;
        TitlePadding = PaddingKt.m451paddingqDBjuR0$default(companion, Dp.m4049constructorimpl(f10), 0.0f, Dp.m4049constructorimpl(f10), 0.0f, 10, null);
        TextPadding = PaddingKt.m451paddingqDBjuR0$default(companion, Dp.m4049constructorimpl(f10), 0.0f, Dp.m4049constructorimpl(f10), Dp.m4049constructorimpl(28), 2, null);
        TitleBaselineDistanceFromTop = TextUnitKt.getSp(40);
        TextBaselineDistanceFromTitle = TextUnitKt.getSp(36);
        TextBaselineDistanceFromTop = TextUnitKt.getSp(38);
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    public static final void AlertDialogBaselineLayout(@NotNull final ColumnScope columnScope, @Nullable final Function2<? super Composer, ? super Integer, Unit> function2, @Nullable final Function2<? super Composer, ? super Integer, Unit> function22, @Nullable Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        Intrinsics.checkNotNullParameter(columnScope, "<this>");
        Composer startRestartGroup = composer.startRestartGroup(-555573207);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(columnScope)) {
                i14 = 4;
            } else {
                i14 = 2;
            }
            i11 = i14 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(function2)) {
                i13 = 32;
            } else {
                i13 = 16;
            }
            i11 |= i13;
        }
        if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(function22)) {
                i12 = 256;
            } else {
                i12 = 128;
            }
            i11 |= i12;
        }
        if ((i11 & TTVideoEngineInterface.PLAYER_OPTION_ENABLE_RECEIVE_BINARY_SEI) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            Modifier weight = columnScope.weight(Modifier.Companion, 1.0f, false);
            AlertDialogKt$AlertDialogBaselineLayout$2 alertDialogKt$AlertDialogBaselineLayout$2 = new MeasurePolicy() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogBaselineLayout$2
                /* JADX WARN: Removed duplicated region for block: B:41:0x00aa  */
                /* JADX WARN: Removed duplicated region for block: B:50:0x00cd  */
                /* JADX WARN: Removed duplicated region for block: B:58:0x00e6  */
                /* JADX WARN: Removed duplicated region for block: B:59:0x00ef  */
                /* JADX WARN: Removed duplicated region for block: B:61:0x00f9  */
                /* JADX WARN: Removed duplicated region for block: B:62:0x00ff  */
                /* JADX WARN: Removed duplicated region for block: B:64:0x0102  */
                /* JADX WARN: Removed duplicated region for block: B:65:0x0105  */
                /* JADX WARN: Removed duplicated region for block: B:70:0x0111  */
                @Override // androidx.compose.ui.layout.MeasurePolicy
                @org.jetbrains.annotations.NotNull
                /* renamed from: measure-3p2s80s */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final androidx.compose.ui.layout.MeasureResult mo42measure3p2s80s(@org.jetbrains.annotations.NotNull androidx.compose.ui.layout.MeasureScope r12, @org.jetbrains.annotations.NotNull java.util.List<? extends androidx.compose.ui.layout.Measurable> r13, long r14) {
                    /*
                        Method dump skipped, instructions count: 313
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.AlertDialogKt$AlertDialogBaselineLayout$2.mo42measure3p2s80s(androidx.compose.ui.layout.MeasureScope, java.util.List, long):androidx.compose.ui.layout.MeasureResult");
                }
            };
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(weight);
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
            Updater.m1383setimpl(m1376constructorimpl, alertDialogKt$AlertDialogBaselineLayout$2, companion.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(1454034642);
            startRestartGroup.startReplaceableGroup(-1160646206);
            if (function2 != null) {
                Modifier layoutId = LayoutIdKt.layoutId(TitlePadding, "title");
                Alignment.Companion companion2 = Alignment.Companion;
                Modifier align = columnScope.align(layoutId, companion2.getStart());
                startRestartGroup.startReplaceableGroup(733328855);
                MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(companion2.getTopStart(), false, startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(-1323940314);
                Density density2 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                LayoutDirection layoutDirection2 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                ViewConfiguration viewConfiguration2 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
                Function0<ComposeUiNode> constructor2 = companion.getConstructor();
                n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(align);
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
                Updater.m1383setimpl(m1376constructorimpl2, rememberBoxMeasurePolicy, companion.getSetMeasurePolicy());
                Updater.m1383setimpl(m1376constructorimpl2, density2, companion.getSetDensity());
                Updater.m1383setimpl(m1376constructorimpl2, layoutDirection2, companion.getSetLayoutDirection());
                Updater.m1383setimpl(m1376constructorimpl2, viewConfiguration2, companion.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf2.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                startRestartGroup.startReplaceableGroup(-2137368960);
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                startRestartGroup.startReplaceableGroup(472489145);
                function2.invoke(startRestartGroup, 0);
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                Unit unit = Unit.f60915a;
            }
            startRestartGroup.endReplaceableGroup();
            if (function22 != null) {
                Modifier layoutId2 = LayoutIdKt.layoutId(TextPadding, MimeTypes.BASE_TYPE_TEXT);
                Alignment.Companion companion3 = Alignment.Companion;
                Modifier align2 = columnScope.align(layoutId2, companion3.getStart());
                startRestartGroup.startReplaceableGroup(733328855);
                MeasurePolicy rememberBoxMeasurePolicy2 = BoxKt.rememberBoxMeasurePolicy(companion3.getTopStart(), false, startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(-1323940314);
                Density density3 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                LayoutDirection layoutDirection3 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                ViewConfiguration viewConfiguration3 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
                Function0<ComposeUiNode> constructor3 = companion.getConstructor();
                n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf3 = LayoutKt.materializerOf(align2);
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
                Updater.m1383setimpl(m1376constructorimpl3, rememberBoxMeasurePolicy2, companion.getSetMeasurePolicy());
                Updater.m1383setimpl(m1376constructorimpl3, density3, companion.getSetDensity());
                Updater.m1383setimpl(m1376constructorimpl3, layoutDirection3, companion.getSetLayoutDirection());
                Updater.m1383setimpl(m1376constructorimpl3, viewConfiguration3, companion.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf3.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                startRestartGroup.startReplaceableGroup(-2137368960);
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                startRestartGroup.startReplaceableGroup(-272722206);
                function22.invoke(startRestartGroup, 0);
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                Unit unit2 = Unit.f60915a;
            }
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogBaselineLayout$3
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
                    AlertDialogKt.AlertDialogBaselineLayout(ColumnScope.this, function2, function22, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:127:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00fb  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /* renamed from: AlertDialogContent-WMdw5o4  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m904AlertDialogContentWMdw5o4(@org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r25, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r26, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r27, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r28, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r29, long r30, long r32, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r34, final int r35, final int r36) {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.AlertDialogKt.m904AlertDialogContentWMdw5o4(kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.ui.graphics.Shape, long, long, androidx.compose.runtime.Composer, int, int):void");
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /* renamed from: AlertDialogFlowRow-ixp7dh8  reason: not valid java name */
    public static final void m905AlertDialogFlowRowixp7dh8(final float f10, final float f11, @NotNull final Function2<? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(73434452);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(f10)) {
                i14 = 4;
            } else {
                i14 = 2;
            }
            i11 = i14 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(f11)) {
                i13 = 32;
            } else {
                i13 = 16;
            }
            i11 |= i13;
        }
        if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(content)) {
                i12 = 256;
            } else {
                i12 = 128;
            }
            i11 |= i12;
        }
        if ((i11 & TTVideoEngineInterface.PLAYER_OPTION_ENABLE_RECEIVE_BINARY_SEI) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogFlowRow$1
                private static final boolean measure_3p2s80s$canAddToCurrentSequence(List<Placeable> list, Ref.IntRef intRef, MeasureScope measureScope, float f12, long j10, Placeable placeable) {
                    if (!list.isEmpty() && intRef.element + measureScope.mo336roundToPx0680j_4(f12) + placeable.getWidth() > Constraints.m4005getMaxWidthimpl(j10)) {
                        return false;
                    }
                    return true;
                }

                private static final void measure_3p2s80s$startNewSequence(List<List<Placeable>> list, Ref.IntRef intRef, MeasureScope measureScope, float f12, List<Placeable> list2, List<Integer> list3, Ref.IntRef intRef2, List<Integer> list4, Ref.IntRef intRef3, Ref.IntRef intRef4) {
                    List<List<Placeable>> list5 = list;
                    if (!list5.isEmpty()) {
                        intRef.element += measureScope.mo336roundToPx0680j_4(f12);
                    }
                    list5.add(CollectionsKt.d1(list2));
                    list3.add(Integer.valueOf(intRef2.element));
                    list4.add(Integer.valueOf(intRef.element));
                    intRef.element += intRef2.element;
                    intRef3.element = Math.max(intRef3.element, intRef4.element);
                    list2.clear();
                    intRef4.element = 0;
                    intRef2.element = 0;
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                /* renamed from: measure-3p2s80s */
                public final MeasureResult mo42measure3p2s80s(@NotNull final MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j10) {
                    int max;
                    Ref.IntRef intRef;
                    ArrayList arrayList;
                    Ref.IntRef intRef2;
                    Intrinsics.checkNotNullParameter(Layout, "$this$Layout");
                    Intrinsics.checkNotNullParameter(measurables, "measurables");
                    final ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    final ArrayList arrayList4 = new ArrayList();
                    Ref.IntRef intRef3 = new Ref.IntRef();
                    Ref.IntRef intRef4 = new Ref.IntRef();
                    ArrayList arrayList5 = new ArrayList();
                    Ref.IntRef intRef5 = new Ref.IntRef();
                    Ref.IntRef intRef6 = new Ref.IntRef();
                    long Constraints$default = ConstraintsKt.Constraints$default(0, Constraints.m4005getMaxWidthimpl(j10), 0, 0, 13, null);
                    for (Measurable measurable : measurables) {
                        Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(Constraints$default);
                        long j11 = Constraints$default;
                        Ref.IntRef intRef7 = intRef6;
                        if (!measure_3p2s80s$canAddToCurrentSequence(arrayList5, intRef5, Layout, f10, j10, mo3335measureBRTryo0)) {
                            intRef = intRef5;
                            arrayList = arrayList5;
                            intRef2 = intRef4;
                            measure_3p2s80s$startNewSequence(arrayList2, intRef4, Layout, f11, arrayList5, arrayList3, intRef7, arrayList4, intRef3, intRef);
                        } else {
                            intRef = intRef5;
                            arrayList = arrayList5;
                            intRef2 = intRef4;
                        }
                        Ref.IntRef intRef8 = intRef;
                        if (!arrayList.isEmpty()) {
                            intRef8.element += Layout.mo336roundToPx0680j_4(f10);
                        }
                        ArrayList arrayList6 = arrayList;
                        arrayList6.add(mo3335measureBRTryo0);
                        intRef8.element += mo3335measureBRTryo0.getWidth();
                        intRef6 = intRef7;
                        intRef6.element = Math.max(intRef6.element, mo3335measureBRTryo0.getHeight());
                        arrayList5 = arrayList6;
                        intRef5 = intRef8;
                        Constraints$default = j11;
                        intRef4 = intRef2;
                    }
                    ArrayList arrayList7 = arrayList5;
                    Ref.IntRef intRef9 = intRef4;
                    Ref.IntRef intRef10 = intRef5;
                    if (!arrayList7.isEmpty()) {
                        measure_3p2s80s$startNewSequence(arrayList2, intRef9, Layout, f11, arrayList7, arrayList3, intRef6, arrayList4, intRef3, intRef10);
                    }
                    if (Constraints.m4005getMaxWidthimpl(j10) != Integer.MAX_VALUE) {
                        max = Constraints.m4005getMaxWidthimpl(j10);
                    } else {
                        max = Math.max(intRef3.element, Constraints.m4007getMinWidthimpl(j10));
                    }
                    final int i15 = max;
                    int max2 = Math.max(intRef9.element, Constraints.m4006getMinHeightimpl(j10));
                    final float f12 = f10;
                    return MeasureScope.layout$default(Layout, i15, max2, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogFlowRow$1$measure$1
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
                            List<List<Placeable>> list = arrayList2;
                            MeasureScope measureScope = Layout;
                            float f13 = f12;
                            int i16 = i15;
                            List<Integer> list2 = arrayList4;
                            int size = list.size();
                            int i17 = 0;
                            while (i17 < size) {
                                List<Placeable> list3 = list.get(i17);
                                int size2 = list3.size();
                                int[] iArr = new int[size2];
                                int i18 = 0;
                                while (i18 < size2) {
                                    iArr[i18] = list3.get(i18).getWidth() + (i18 < CollectionsKt.p(list3) ? measureScope.mo336roundToPx0680j_4(f13) : 0);
                                    i18++;
                                }
                                Arrangement.Vertical bottom = Arrangement.INSTANCE.getBottom();
                                int[] iArr2 = new int[size2];
                                for (int i19 = 0; i19 < size2; i19++) {
                                    iArr2[i19] = 0;
                                }
                                bottom.arrange(measureScope, i16, iArr, iArr2);
                                int size3 = list3.size();
                                int i20 = 0;
                                while (i20 < size3) {
                                    Placeable.PlacementScope.place$default(layout, list3.get(i20), iArr2[i20], list2.get(i17).intValue(), 0.0f, 4, null);
                                    i20++;
                                    size3 = size3;
                                    iArr2 = iArr2;
                                    i17 = i17;
                                    list3 = list3;
                                }
                                i17++;
                            }
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
            int i15 = ((((i11 >> 6) & 14) << 9) & 7168) | 6;
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
            content.invoke(startRestartGroup, Integer.valueOf((i15 >> 9) & 14));
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogFlowRow$2
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

                public final void invoke(@Nullable Composer composer2, int i16) {
                    AlertDialogKt.m905AlertDialogFlowRowixp7dh8(f10, f11, content, composer2, i10 | 1);
                }
            });
        }
    }
}
