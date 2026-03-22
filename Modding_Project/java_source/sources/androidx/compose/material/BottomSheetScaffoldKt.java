package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import at.n;
import bt.a;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BottomSheetScaffold.kt */
@Metadata
/* loaded from: classes.dex */
public final class BottomSheetScaffoldKt {
    private static final float FabSpacing = Dp.m4049constructorimpl(16);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x03a6  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x03f1  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x03f5  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0410  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0418  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0425  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0429  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0430  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x0450  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x045d  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0468  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x046a  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x046e  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x0471  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x047c  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x048f  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x049c  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x04a2  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x04b9  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x04c4  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x04cf  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x04d5  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x04e6  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x04f1  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x0500  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x0507  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0526  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0557  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x0590  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x059a  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x05ae  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x05c2  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x066c  */
    /* JADX WARN: Removed duplicated region for block: B:378:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0136  */
    /* JADX WARN: Type inference failed for: r11v15, types: [androidx.compose.ui.Modifier] */
    @androidx.compose.runtime.Composable
    @androidx.compose.material.ExperimentalMaterialApi
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][_]]")
    /* renamed from: BottomSheetScaffold-bGncdBI  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m944BottomSheetScaffoldbGncdBI(@org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r45, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r46, @org.jetbrains.annotations.Nullable androidx.compose.material.BottomSheetScaffoldState r47, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r48, @org.jetbrains.annotations.Nullable at.n<? super androidx.compose.material.SnackbarHostState, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r49, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r50, int r51, boolean r52, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r53, float r54, long r55, long r57, float r59, @org.jetbrains.annotations.Nullable at.n<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r60, boolean r61, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r62, float r63, long r64, long r66, long r68, long r70, long r72, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.foundation.layout.PaddingValues, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r74, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r75, final int r76, final int r77, final int r78, final int r79) {
        /*
            Method dump skipped, instructions count: 1682
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.BottomSheetScaffoldKt.m944BottomSheetScaffoldbGncdBI(at.n, androidx.compose.ui.Modifier, androidx.compose.material.BottomSheetScaffoldState, kotlin.jvm.functions.Function2, at.n, kotlin.jvm.functions.Function2, int, boolean, androidx.compose.ui.graphics.Shape, float, long, long, float, at.n, boolean, androidx.compose.ui.graphics.Shape, float, long, long, long, long, long, at.n, androidx.compose.runtime.Composer, int, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][_][_][androidx.compose.ui.UiComposable][_]]")
    /* renamed from: BottomSheetScaffoldLayout-KCBPh4w  reason: not valid java name */
    public static final void m945BottomSheetScaffoldLayoutKCBPh4w(final Function2<? super Composer, ? super Integer, Unit> function2, final n<? super PaddingValues, ? super Composer, ? super Integer, Unit> nVar, final n<? super Integer, ? super Composer, ? super Integer, Unit> nVar2, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final float f10, final int i10, final State<Float> state, final BottomSheetState bottomSheetState, Composer composer, final int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        Composer startRestartGroup = composer.startRestartGroup(499725572);
        if ((i11 & 14) == 0) {
            if (startRestartGroup.changed(function2)) {
                i22 = 4;
            } else {
                i22 = 2;
            }
            i12 = i22 | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 112) == 0) {
            if (startRestartGroup.changed(nVar)) {
                i21 = 32;
            } else {
                i21 = 16;
            }
            i12 |= i21;
        }
        if ((i11 & 896) == 0) {
            if (startRestartGroup.changed(nVar2)) {
                i20 = 256;
            } else {
                i20 = 128;
            }
            i12 |= i20;
        }
        if ((i11 & 7168) == 0) {
            if (startRestartGroup.changed(function22)) {
                i19 = 2048;
            } else {
                i19 = 1024;
            }
            i12 |= i19;
        }
        if ((57344 & i11) == 0) {
            if (startRestartGroup.changed(function23)) {
                i18 = 16384;
            } else {
                i18 = 8192;
            }
            i12 |= i18;
        }
        if ((458752 & i11) == 0) {
            if (startRestartGroup.changed(f10)) {
                i17 = 131072;
            } else {
                i17 = 65536;
            }
            i12 |= i17;
        }
        if ((3670016 & i11) == 0) {
            if (startRestartGroup.changed(i10)) {
                i16 = 1048576;
            } else {
                i16 = 524288;
            }
            i12 |= i16;
        }
        if ((29360128 & i11) == 0) {
            if (startRestartGroup.changed(state)) {
                i15 = 8388608;
            } else {
                i15 = 4194304;
            }
            i12 |= i15;
        }
        if ((234881024 & i11) == 0) {
            if (startRestartGroup.changed(bottomSheetState)) {
                i14 = 67108864;
            } else {
                i14 = 33554432;
            }
            i12 |= i14;
        }
        final int i23 = i12;
        if ((i23 & 191739611) == 38347922 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            Object[] objArr = {nVar2, state, function2, nVar, Dp.m4047boximpl(f10), function22, FabPosition.m1083boximpl(i10), function23, bottomSheetState};
            startRestartGroup.startReplaceableGroup(-568225417);
            boolean z10 = false;
            for (int i24 = 0; i24 < 9; i24++) {
                z10 |= startRestartGroup.changed(objArr[i24]);
            }
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (!z10 && rememberedValue != Composer.Companion.getEmpty()) {
                i13 = 0;
            } else {
                i13 = 0;
                rememberedValue = new Function2<SubcomposeMeasureScope, Constraints, MeasureResult>() { // from class: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1

                    /* compiled from: BottomSheetScaffold.kt */
                    @Metadata
                    /* loaded from: classes.dex */
                    public /* synthetic */ class WhenMappings {
                        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                        static {
                            int[] iArr = new int[BottomSheetValue.values().length];
                            iArr[BottomSheetValue.Collapsed.ordinal()] = 1;
                            iArr[BottomSheetValue.Expanded.ordinal()] = 2;
                            $EnumSwitchMapping$0 = iArr;
                        }
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
                        return m952invoke0kLqBqw(subcomposeMeasureScope, constraints.m4011unboximpl());
                    }

                    @NotNull
                    /* renamed from: invoke-0kLqBqw  reason: not valid java name */
                    public final MeasureResult m952invoke0kLqBqw(@NotNull SubcomposeMeasureScope SubcomposeLayout, long j10) {
                        Placeable placeable;
                        int i25;
                        final Placeable placeable2;
                        int i26;
                        int i27;
                        float f11;
                        int mo336roundToPx0680j_4;
                        int i28;
                        int height;
                        float f12;
                        Intrinsics.checkNotNullParameter(SubcomposeLayout, "$this$SubcomposeLayout");
                        int m4005getMaxWidthimpl = Constraints.m4005getMaxWidthimpl(j10);
                        final int m4004getMaxHeightimpl = Constraints.m4004getMaxHeightimpl(j10);
                        long m3996copyZbe2FdA$default = Constraints.m3996copyZbe2FdA$default(j10, 0, 0, 0, 0, 10, null);
                        BottomSheetScaffoldLayoutSlot bottomSheetScaffoldLayoutSlot = BottomSheetScaffoldLayoutSlot.Sheet;
                        final n<Integer, Composer, Integer, Unit> nVar3 = nVar2;
                        final int i29 = i23;
                        final Placeable mo3335measureBRTryo0 = SubcomposeLayout.subcompose(bottomSheetScaffoldLayoutSlot, ComposableLambdaKt.composableLambdaInstance(520491296, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$sheetPlaceable$1
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
                            public final void invoke(@Nullable Composer composer2, int i30) {
                                if ((i30 & 11) == 2 && composer2.getSkipping()) {
                                    composer2.skipToGroupEnd();
                                } else {
                                    nVar3.invoke(Integer.valueOf(m4004getMaxHeightimpl), composer2, Integer.valueOf((i29 >> 3) & 112));
                                }
                            }
                        })).get(0).mo3335measureBRTryo0(m3996copyZbe2FdA$default);
                        final int c10 = a.c(state.getValue().floatValue());
                        final Function2<Composer, Integer, Unit> function24 = function2;
                        if (function24 != null) {
                            final int i30 = i23;
                            placeable = SubcomposeLayout.subcompose(BottomSheetScaffoldLayoutSlot.TopBar, ComposableLambdaKt.composableLambdaInstance(1988456983, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$topBarPlaceable$1$1
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

                                @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                                @Composable
                                public final void invoke(@Nullable Composer composer2, int i31) {
                                    if ((i31 & 11) == 2 && composer2.getSkipping()) {
                                        composer2.skipToGroupEnd();
                                    } else {
                                        function24.invoke(composer2, Integer.valueOf(i30 & 14));
                                    }
                                }
                            })).get(0).mo3335measureBRTryo0(m3996copyZbe2FdA$default);
                        } else {
                            placeable = null;
                        }
                        if (placeable != null) {
                            i25 = placeable.getHeight();
                        } else {
                            i25 = 0;
                        }
                        long m3996copyZbe2FdA$default2 = Constraints.m3996copyZbe2FdA$default(m3996copyZbe2FdA$default, 0, 0, 0, m4004getMaxHeightimpl - i25, 7, null);
                        BottomSheetScaffoldLayoutSlot bottomSheetScaffoldLayoutSlot2 = BottomSheetScaffoldLayoutSlot.Body;
                        final n<PaddingValues, Composer, Integer, Unit> nVar4 = nVar;
                        final float f13 = f10;
                        final int i31 = i23;
                        final Placeable mo3335measureBRTryo02 = SubcomposeLayout.subcompose(bottomSheetScaffoldLayoutSlot2, ComposableLambdaKt.composableLambdaInstance(1466287989, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1
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
                            public final void invoke(@Nullable Composer composer2, int i32) {
                                if ((i32 & 11) == 2 && composer2.getSkipping()) {
                                    composer2.skipToGroupEnd();
                                } else {
                                    nVar4.invoke(PaddingKt.m444PaddingValuesa9UjIt4$default(0.0f, 0.0f, 0.0f, f13, 7, null), composer2, Integer.valueOf(i31 & 112));
                                }
                            }
                        })).get(0).mo3335measureBRTryo0(m3996copyZbe2FdA$default2);
                        Function2<Composer, Integer, Unit> function25 = function22;
                        if (function25 != null) {
                            placeable2 = SubcomposeLayout.subcompose(BottomSheetScaffoldLayoutSlot.Fab, function25).get(0).mo3335measureBRTryo0(m3996copyZbe2FdA$default);
                        } else {
                            placeable2 = null;
                        }
                        if (placeable2 != null) {
                            i26 = placeable2.getWidth();
                        } else {
                            i26 = 0;
                        }
                        if (placeable2 != null) {
                            i27 = placeable2.getHeight();
                        } else {
                            i27 = 0;
                        }
                        if (!FabPosition.m1086equalsimpl0(i10, FabPosition.Companion.m1090getCenter5ygKITE())) {
                            f11 = BottomSheetScaffoldKt.FabSpacing;
                            mo336roundToPx0680j_4 = (m4005getMaxWidthimpl - i26) - SubcomposeLayout.mo336roundToPx0680j_4(f11);
                        } else {
                            mo336roundToPx0680j_4 = (m4005getMaxWidthimpl - i26) / 2;
                        }
                        final int i32 = mo336roundToPx0680j_4;
                        int i33 = i27 / 2;
                        if (SubcomposeLayout.mo342toPx0680j_4(f10) < i33) {
                            f12 = BottomSheetScaffoldKt.FabSpacing;
                            i28 = (c10 - i27) - SubcomposeLayout.mo336roundToPx0680j_4(f12);
                        } else {
                            i28 = c10 - i33;
                        }
                        final int i34 = i28;
                        final Placeable mo3335measureBRTryo03 = SubcomposeLayout.subcompose(BottomSheetScaffoldLayoutSlot.Snackbar, function23).get(0).mo3335measureBRTryo0(m3996copyZbe2FdA$default);
                        final int width = (m4005getMaxWidthimpl - mo3335measureBRTryo03.getWidth()) / 2;
                        int i35 = WhenMappings.$EnumSwitchMapping$0[bottomSheetState.getCurrentValue().ordinal()];
                        if (i35 != 1) {
                            if (i35 == 2) {
                                height = m4004getMaxHeightimpl - mo3335measureBRTryo03.getHeight();
                            } else {
                                throw new NoWhenBranchMatchedException();
                            }
                        } else {
                            height = i34 - mo3335measureBRTryo03.getHeight();
                        }
                        final int i36 = i25;
                        final Placeable placeable3 = placeable;
                        final int i37 = height;
                        return MeasureScope.layout$default(SubcomposeLayout, m4005getMaxWidthimpl, m4004getMaxHeightimpl, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1.1
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
                                Placeable.PlacementScope.placeRelative$default(layout, Placeable.this, 0, i36, 0.0f, 4, null);
                                Placeable placeable4 = placeable3;
                                if (placeable4 != null) {
                                    Placeable.PlacementScope.placeRelative$default(layout, placeable4, 0, 0, 0.0f, 4, null);
                                }
                                Placeable.PlacementScope.placeRelative$default(layout, mo3335measureBRTryo0, 0, c10, 0.0f, 4, null);
                                Placeable placeable5 = placeable2;
                                if (placeable5 != null) {
                                    Placeable.PlacementScope.placeRelative$default(layout, placeable5, i32, i34, 0.0f, 4, null);
                                }
                                Placeable.PlacementScope.placeRelative$default(layout, mo3335measureBRTryo03, width, i37, 0.0f, 4, null);
                            }
                        }, 4, null);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            SubcomposeLayoutKt.SubcomposeLayout(null, (Function2) rememberedValue, startRestartGroup, i13, 1);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2
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

                public final void invoke(@Nullable Composer composer2, int i25) {
                    BottomSheetScaffoldKt.m945BottomSheetScaffoldLayoutKCBPh4w(function2, nVar, nVar2, function22, function23, f10, i10, state, bottomSheetState, composer2, i11 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: BottomSheetScaffold_bGncdBI$lambda-4  reason: not valid java name */
    public static final Float m946BottomSheetScaffold_bGncdBI$lambda4(MutableState<Float> mutableState) {
        return mutableState.getValue();
    }

    @Composable
    @ExperimentalMaterialApi
    @NotNull
    public static final BottomSheetScaffoldState rememberBottomSheetScaffoldState(@Nullable DrawerState drawerState, @Nullable BottomSheetState bottomSheetState, @Nullable SnackbarHostState snackbarHostState, @Nullable Composer composer, int i10, int i11) {
        composer.startReplaceableGroup(-1353009744);
        if ((i11 & 1) != 0) {
            drawerState = DrawerKt.rememberDrawerState(DrawerValue.Closed, null, composer, 6, 2);
        }
        if ((i11 & 2) != 0) {
            bottomSheetState = rememberBottomSheetState(BottomSheetValue.Collapsed, null, null, composer, 6, 6);
        }
        if ((i11 & 4) != 0) {
            composer.startReplaceableGroup(-492369756);
            Object rememberedValue = composer.rememberedValue();
            if (rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new SnackbarHostState();
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            snackbarHostState = (SnackbarHostState) rememberedValue;
        }
        composer.startReplaceableGroup(1618982084);
        boolean changed = composer.changed(drawerState) | composer.changed(bottomSheetState) | composer.changed(snackbarHostState);
        Object rememberedValue2 = composer.rememberedValue();
        if (changed || rememberedValue2 == Composer.Companion.getEmpty()) {
            rememberedValue2 = new BottomSheetScaffoldState(drawerState, bottomSheetState, snackbarHostState);
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        BottomSheetScaffoldState bottomSheetScaffoldState = (BottomSheetScaffoldState) rememberedValue2;
        composer.endReplaceableGroup();
        return bottomSheetScaffoldState;
    }

    @Composable
    @ExperimentalMaterialApi
    @NotNull
    public static final BottomSheetState rememberBottomSheetState(@NotNull final BottomSheetValue initialValue, @Nullable final AnimationSpec<Float> animationSpec, @Nullable final Function1<? super BottomSheetValue, Boolean> function1, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        composer.startReplaceableGroup(1808153344);
        if ((i11 & 2) != 0) {
            animationSpec = SwipeableDefaults.INSTANCE.getAnimationSpec();
        }
        if ((i11 & 4) != 0) {
            function1 = new Function1<BottomSheetValue, Boolean>() { // from class: androidx.compose.material.BottomSheetScaffoldKt$rememberBottomSheetState$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull BottomSheetValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.TRUE;
                }
            };
        }
        BottomSheetState bottomSheetState = (BottomSheetState) RememberSaveableKt.m1492rememberSaveable(new Object[]{animationSpec}, (Saver<Object, ? extends Object>) BottomSheetState.Companion.Saver(animationSpec, function1), (String) null, (Function0<? extends Object>) new Function0<BottomSheetState>() { // from class: androidx.compose.material.BottomSheetScaffoldKt$rememberBottomSheetState$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BottomSheetState invoke() {
                return new BottomSheetState(BottomSheetValue.this, animationSpec, function1);
            }
        }, composer, 72, 4);
        composer.endReplaceableGroup();
        return bottomSheetState;
    }
}
