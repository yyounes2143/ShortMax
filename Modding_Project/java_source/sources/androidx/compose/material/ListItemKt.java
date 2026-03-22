package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import com.ss.ttm.player.MediaPlayer;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ListItem.kt */
@Metadata
/* loaded from: classes.dex */
public final class ListItemKt {
    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    public static final void BaselinesOffsetColumn(final List<Dp> list, Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, final int i10, final int i11) {
        Composer startRestartGroup = composer.startRestartGroup(1631148337);
        if ((i11 & 2) != 0) {
            modifier = Modifier.Companion;
        }
        final Modifier modifier2 = modifier;
        MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material.ListItemKt$BaselinesOffsetColumn$1
            @Override // androidx.compose.ui.layout.MeasurePolicy
            @NotNull
            /* renamed from: measure-3p2s80s */
            public final MeasureResult mo42measure3p2s80s(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j10) {
                int i12;
                Intrinsics.checkNotNullParameter(Layout, "$this$Layout");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                long m3996copyZbe2FdA$default = Constraints.m3996copyZbe2FdA$default(j10, 0, 0, 0, Integer.MAX_VALUE, 3, null);
                List<? extends Measurable> list2 = measurables;
                final ArrayList<Placeable> arrayList = new ArrayList(CollectionsKt.z(list2, 10));
                for (Measurable measurable : list2) {
                    arrayList.add(measurable.mo3335measureBRTryo0(m3996copyZbe2FdA$default));
                }
                int i13 = 0;
                for (Placeable placeable : arrayList) {
                    i13 = Math.max(i13, placeable.getWidth());
                }
                int size = arrayList.size();
                final Integer[] numArr = new Integer[size];
                for (int i14 = 0; i14 < size; i14++) {
                    numArr[i14] = 0;
                }
                List<Dp> list3 = list;
                int size2 = arrayList.size();
                int i15 = 0;
                for (int i16 = 0; i16 < size2; i16++) {
                    Placeable placeable2 = (Placeable) arrayList.get(i16);
                    if (i16 > 0) {
                        int i17 = i16 - 1;
                        i12 = ((Placeable) arrayList.get(i17)).getHeight() - ((Placeable) arrayList.get(i17)).get(AlignmentLineKt.getLastBaseline());
                    } else {
                        i12 = 0;
                    }
                    int max = Math.max(0, (Layout.mo336roundToPx0680j_4(list3.get(i16).m4063unboximpl()) - placeable2.get(AlignmentLineKt.getFirstBaseline())) - i12);
                    numArr[i16] = Integer.valueOf(max + i15);
                    i15 += max + placeable2.getHeight();
                }
                return MeasureScope.layout$default(Layout, i13, i15, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.ListItemKt$BaselinesOffsetColumn$1$measure$2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
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
                        List<Placeable> list4 = arrayList;
                        Integer[] numArr2 = numArr;
                        int size3 = list4.size();
                        for (int i18 = 0; i18 < size3; i18++) {
                            Placeable.PlacementScope.placeRelative$default(layout, list4.get(i18), 0, numArr2[i18].intValue(), 0.0f, 4, null);
                        }
                    }
                }, 4, null);
            }
        };
        startRestartGroup.startReplaceableGroup(-1323940314);
        Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
        LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
        ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        Function0<ComposeUiNode> constructor = companion.getConstructor();
        n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(modifier2);
        int i12 = (((((i10 >> 6) & 14) | (i10 & 112)) << 9) & 7168) | 6;
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
        Updater.m1383setimpl(m1376constructorimpl, measurePolicy, companion.getSetMeasurePolicy());
        Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
        Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
        Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
        startRestartGroup.enableReusing();
        materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
        startRestartGroup.startReplaceableGroup(2058660585);
        function2.invoke(startRestartGroup, Integer.valueOf((i12 >> 9) & 14));
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.endNode();
        startRestartGroup.endReplaceableGroup();
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ListItemKt$BaselinesOffsetColumn$2
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

                public final void invoke(@Nullable Composer composer2, int i13) {
                    ListItemKt.BaselinesOffsetColumn(list, modifier2, function2, composer2, i10 | 1, i11);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x015c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x017f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:118:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0112  */
    @androidx.compose.runtime.Composable
    @androidx.compose.material.ExperimentalMaterialApi
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][_][_][_][_]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ListItem(@org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r21, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r22, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r23, boolean r24, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r25, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r26, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r27, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r28, final int r29, final int r30) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ListItemKt.ListItem(androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /* renamed from: OffsetToBaselineOrCenter-Kz89ssw  reason: not valid java name */
    public static final void m1103OffsetToBaselineOrCenterKz89ssw(final float f10, Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, final int i10, final int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        Composer startRestartGroup = composer.startRestartGroup(-1062692685);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(f10)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i12 = i13 | i10;
        } else {
            i12 = i10;
        }
        int i16 = i11 & 2;
        if (i16 != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(modifier)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i12 |= i14;
        }
        if ((i11 & 4) != 0) {
            i12 |= MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
        } else if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(function2)) {
                i15 = 256;
            } else {
                i15 = 128;
            }
            i12 |= i15;
        }
        if ((i12 & TTVideoEngineInterface.PLAYER_OPTION_ENABLE_RECEIVE_BINARY_SEI) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (i16 != 0) {
                modifier = Modifier.Companion;
            }
            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material.ListItemKt$OffsetToBaselineOrCenter$1
                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                /* renamed from: measure-3p2s80s */
                public final MeasureResult mo42measure3p2s80s(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j10) {
                    int max;
                    final int m4168getYimpl;
                    Intrinsics.checkNotNullParameter(Layout, "$this$Layout");
                    Intrinsics.checkNotNullParameter(measurables, "measurables");
                    final Placeable mo3335measureBRTryo0 = measurables.get(0).mo3335measureBRTryo0(Constraints.m3996copyZbe2FdA$default(j10, 0, 0, 0, 0, 11, null));
                    int i17 = mo3335measureBRTryo0.get(AlignmentLineKt.getFirstBaseline());
                    if (i17 != Integer.MIN_VALUE) {
                        m4168getYimpl = Layout.mo336roundToPx0680j_4(f10) - i17;
                        max = Math.max(Constraints.m4006getMinHeightimpl(j10), mo3335measureBRTryo0.getHeight() + m4168getYimpl);
                    } else {
                        max = Math.max(Constraints.m4006getMinHeightimpl(j10), mo3335measureBRTryo0.getHeight());
                        m4168getYimpl = IntOffset.m4168getYimpl(Alignment.Companion.getCenter().mo1514alignKFBX0sM(IntSize.Companion.m4214getZeroYbymL2g(), IntSizeKt.IntSize(0, max - mo3335measureBRTryo0.getHeight()), Layout.getLayoutDirection()));
                    }
                    return MeasureScope.layout$default(Layout, mo3335measureBRTryo0.getWidth(), max, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.ListItemKt$OffsetToBaselineOrCenter$1$measure$1
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
                            Placeable.PlacementScope.placeRelative$default(layout, Placeable.this, 0, m4168getYimpl, 0.0f, 4, null);
                        }
                    }, 4, null);
                }
            };
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(modifier);
            int i17 = ((((i12 & 112) | ((i12 >> 6) & 14)) << 9) & 7168) | 6;
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
            Updater.m1383setimpl(m1376constructorimpl, measurePolicy, companion.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            function2.invoke(startRestartGroup, Integer.valueOf((i17 >> 9) & 14));
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
        }
        final Modifier modifier2 = modifier;
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ListItemKt$OffsetToBaselineOrCenter$2
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
                    ListItemKt.m1103OffsetToBaselineOrCenterKz89ssw(f10, modifier2, function2, composer2, i10 | 1, i11);
                }
            });
        }
    }

    private static final Function2<Composer, Integer, Unit> applyTextStyle(final TextStyle textStyle, final float f10, final Function2<? super Composer, ? super Integer, Unit> function2) {
        if (function2 == null) {
            return null;
        }
        return ComposableLambdaKt.composableLambdaInstance(-830176860, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ListItemKt$applyTextStyle$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                invoke(composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(@Nullable Composer composer, int i10) {
                if ((i10 & 11) == 2 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                final TextStyle textStyle2 = textStyle;
                final Function2<Composer, Integer, Unit> function22 = function2;
                CompositionLocalKt.CompositionLocalProvider(new ProvidedValue[]{ContentAlphaKt.getLocalContentAlpha().provides(Float.valueOf(f10))}, ComposableLambdaKt.composableLambda(composer, 1665877604, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ListItemKt$applyTextStyle$1.1
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
                    public final void invoke(@Nullable Composer composer2, int i11) {
                        if ((i11 & 11) == 2 && composer2.getSkipping()) {
                            composer2.skipToGroupEnd();
                        } else {
                            TextKt.ProvideTextStyle(TextStyle.this, function22, composer2, 0);
                        }
                    }
                }), composer, 56);
            }
        });
    }
}
