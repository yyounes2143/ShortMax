package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.UiComposable;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
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
/* compiled from: Scaffold.kt */
@Metadata
/* loaded from: classes.dex */
public final class ScaffoldKt {
    @NotNull
    private static final ProvidableCompositionLocal<FabPlacement> LocalFabPlacement = CompositionLocalKt.staticCompositionLocalOf(new Function0<FabPlacement>() { // from class: androidx.compose.material.ScaffoldKt$LocalFabPlacement$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @Nullable
        public final FabPlacement invoke() {
            return null;
        }
    });
    private static final float FabSpacing = Dp.m4049constructorimpl(16);

    /* JADX WARN: Code restructure failed: missing block: B:143:0x01b6, code lost:
        if (r0.changed(r54) == false) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0362  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x03b6  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0431  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0494  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:293:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x013d  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /* renamed from: Scaffold-27mzLpw  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1170Scaffold27mzLpw(@org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r40, @org.jetbrains.annotations.Nullable androidx.compose.material.ScaffoldState r41, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r42, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r43, @org.jetbrains.annotations.Nullable at.n<? super androidx.compose.material.SnackbarHostState, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r44, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r45, int r46, boolean r47, @org.jetbrains.annotations.Nullable at.n<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r48, boolean r49, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r50, float r51, long r52, long r54, long r56, long r58, long r60, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.foundation.layout.PaddingValues, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r62, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r63, final int r64, final int r65, final int r66) {
        /*
            Method dump skipped, instructions count: 1255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ScaffoldKt.m1170Scaffold27mzLpw(androidx.compose.ui.Modifier, androidx.compose.material.ScaffoldState, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, at.n, kotlin.jvm.functions.Function2, int, boolean, at.n, boolean, androidx.compose.ui.graphics.Shape, float, long, long, long, long, long, at.n, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @UiComposable
    /* renamed from: ScaffoldLayout-MDYNRJg  reason: not valid java name */
    public static final void m1171ScaffoldLayoutMDYNRJg(final boolean z10, final int i10, final Function2<? super Composer, ? super Integer, Unit> function2, final n<? super PaddingValues, ? super Composer, ? super Integer, Unit> nVar, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final Function2<? super Composer, ? super Integer, Unit> function24, Composer composer, final int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        Composer startRestartGroup = composer.startRestartGroup(-1401632215);
        if ((i11 & 14) == 0) {
            if (startRestartGroup.changed(z10)) {
                i20 = 4;
            } else {
                i20 = 2;
            }
            i12 = i20 | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 112) == 0) {
            if (startRestartGroup.changed(i10)) {
                i19 = 32;
            } else {
                i19 = 16;
            }
            i12 |= i19;
        }
        if ((i11 & 896) == 0) {
            if (startRestartGroup.changed(function2)) {
                i18 = 256;
            } else {
                i18 = 128;
            }
            i12 |= i18;
        }
        if ((i11 & 7168) == 0) {
            if (startRestartGroup.changed(nVar)) {
                i17 = 2048;
            } else {
                i17 = 1024;
            }
            i12 |= i17;
        }
        if ((57344 & i11) == 0) {
            if (startRestartGroup.changed(function22)) {
                i16 = 16384;
            } else {
                i16 = 8192;
            }
            i12 |= i16;
        }
        if ((458752 & i11) == 0) {
            if (startRestartGroup.changed(function23)) {
                i15 = 131072;
            } else {
                i15 = 65536;
            }
            i12 |= i15;
        }
        if ((3670016 & i11) == 0) {
            if (startRestartGroup.changed(function24)) {
                i14 = 1048576;
            } else {
                i14 = 524288;
            }
            i12 |= i14;
        }
        final int i21 = i12;
        if ((i21 & 2995931) == 599186 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            Object[] objArr = {function2, function22, function23, FabPosition.m1083boximpl(i10), Boolean.valueOf(z10), function24, nVar};
            startRestartGroup.startReplaceableGroup(-568225417);
            boolean z11 = false;
            for (int i22 = 0; i22 < 7; i22++) {
                z11 |= startRestartGroup.changed(objArr[i22]);
            }
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (!z11 && rememberedValue != Composer.Companion.getEmpty()) {
                i13 = 0;
            } else {
                i13 = 0;
                rememberedValue = new Function2<SubcomposeMeasureScope, Constraints, MeasureResult>() { // from class: androidx.compose.material.ScaffoldKt$ScaffoldLayout$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
                        return m1173invoke0kLqBqw(subcomposeMeasureScope, constraints.m4011unboximpl());
                    }

                    @NotNull
                    /* renamed from: invoke-0kLqBqw  reason: not valid java name */
                    public final MeasureResult m1173invoke0kLqBqw(@NotNull final SubcomposeMeasureScope SubcomposeLayout, long j10) {
                        Intrinsics.checkNotNullParameter(SubcomposeLayout, "$this$SubcomposeLayout");
                        final int m4005getMaxWidthimpl = Constraints.m4005getMaxWidthimpl(j10);
                        final int m4004getMaxHeightimpl = Constraints.m4004getMaxHeightimpl(j10);
                        final long m3996copyZbe2FdA$default = Constraints.m3996copyZbe2FdA$default(j10, 0, 0, 0, 0, 10, null);
                        final Function2<Composer, Integer, Unit> function25 = function2;
                        final Function2<Composer, Integer, Unit> function26 = function22;
                        final Function2<Composer, Integer, Unit> function27 = function23;
                        final int i23 = i10;
                        final boolean z12 = z10;
                        final Function2<Composer, Integer, Unit> function28 = function24;
                        final int i24 = i21;
                        final n<PaddingValues, Composer, Integer, Unit> nVar2 = nVar;
                        return MeasureScope.layout$default(SubcomposeLayout, m4005getMaxWidthimpl, m4004getMaxHeightimpl, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.ScaffoldKt$ScaffoldLayout$1$1.1
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
                                Object obj;
                                Object obj2;
                                final FabPlacement fabPlacement;
                                Object obj3;
                                Integer num;
                                int i25;
                                int height;
                                float f10;
                                int mo336roundToPx0680j_4;
                                int height2;
                                float f11;
                                Object obj4;
                                Object obj5;
                                int i26;
                                float f12;
                                float f13;
                                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                                List<Measurable> subcompose = SubcomposeMeasureScope.this.subcompose(ScaffoldLayoutContent.TopBar, function25);
                                long j11 = m3996copyZbe2FdA$default;
                                ArrayList arrayList = new ArrayList(subcompose.size());
                                int size = subcompose.size();
                                for (int i27 = 0; i27 < size; i27++) {
                                    arrayList.add(subcompose.get(i27).mo3335measureBRTryo0(j11));
                                }
                                if (arrayList.isEmpty()) {
                                    obj = null;
                                } else {
                                    obj = arrayList.get(0);
                                    int height3 = ((Placeable) obj).getHeight();
                                    int p10 = CollectionsKt.p(arrayList);
                                    if (1 <= p10) {
                                        int i28 = 1;
                                        while (true) {
                                            Object obj6 = arrayList.get(i28);
                                            int height4 = ((Placeable) obj6).getHeight();
                                            if (height3 < height4) {
                                                obj = obj6;
                                                height3 = height4;
                                            }
                                            if (i28 == p10) {
                                                break;
                                            }
                                            i28++;
                                        }
                                    }
                                }
                                Placeable placeable = (Placeable) obj;
                                int height5 = placeable != null ? placeable.getHeight() : 0;
                                List<Measurable> subcompose2 = SubcomposeMeasureScope.this.subcompose(ScaffoldLayoutContent.Snackbar, function26);
                                long j12 = m3996copyZbe2FdA$default;
                                ArrayList arrayList2 = new ArrayList(subcompose2.size());
                                int size2 = subcompose2.size();
                                for (int i29 = 0; i29 < size2; i29++) {
                                    arrayList2.add(subcompose2.get(i29).mo3335measureBRTryo0(j12));
                                }
                                if (arrayList2.isEmpty()) {
                                    obj2 = null;
                                } else {
                                    obj2 = arrayList2.get(0);
                                    int height6 = ((Placeable) obj2).getHeight();
                                    int p11 = CollectionsKt.p(arrayList2);
                                    if (1 <= p11) {
                                        int i30 = 1;
                                        while (true) {
                                            Object obj7 = arrayList2.get(i30);
                                            int height7 = ((Placeable) obj7).getHeight();
                                            if (height6 < height7) {
                                                obj2 = obj7;
                                                height6 = height7;
                                            }
                                            if (i30 == p11) {
                                                break;
                                            }
                                            i30++;
                                        }
                                    }
                                }
                                Placeable placeable2 = (Placeable) obj2;
                                int height8 = placeable2 != null ? placeable2.getHeight() : 0;
                                long j13 = m3996copyZbe2FdA$default;
                                ArrayList arrayList3 = new ArrayList();
                                for (Measurable measurable : SubcomposeMeasureScope.this.subcompose(ScaffoldLayoutContent.Fab, function27)) {
                                    Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(j13);
                                    mo3335measureBRTryo0 = (mo3335measureBRTryo0.getHeight() == 0 || mo3335measureBRTryo0.getWidth() == 0) ? null : null;
                                    if (mo3335measureBRTryo0 != null) {
                                        arrayList3.add(mo3335measureBRTryo0);
                                    }
                                }
                                if (arrayList3.isEmpty()) {
                                    fabPlacement = null;
                                } else {
                                    if (arrayList3.isEmpty()) {
                                        obj4 = null;
                                    } else {
                                        obj4 = arrayList3.get(0);
                                        int width = ((Placeable) obj4).getWidth();
                                        int p12 = CollectionsKt.p(arrayList3);
                                        if (1 <= p12) {
                                            int i31 = 1;
                                            while (true) {
                                                Object obj8 = arrayList3.get(i31);
                                                int width2 = ((Placeable) obj8).getWidth();
                                                if (width < width2) {
                                                    obj4 = obj8;
                                                    width = width2;
                                                }
                                                if (i31 == p12) {
                                                    break;
                                                }
                                                i31++;
                                            }
                                        }
                                    }
                                    Intrinsics.checkNotNull(obj4);
                                    int width3 = ((Placeable) obj4).getWidth();
                                    if (arrayList3.isEmpty()) {
                                        obj5 = null;
                                    } else {
                                        obj5 = arrayList3.get(0);
                                        int height9 = ((Placeable) obj5).getHeight();
                                        int p13 = CollectionsKt.p(arrayList3);
                                        if (1 <= p13) {
                                            int i32 = 1;
                                            while (true) {
                                                Object obj9 = arrayList3.get(i32);
                                                int height10 = ((Placeable) obj9).getHeight();
                                                if (height9 < height10) {
                                                    height9 = height10;
                                                    obj5 = obj9;
                                                }
                                                if (i32 == p13) {
                                                    break;
                                                }
                                                i32++;
                                            }
                                        }
                                    }
                                    Intrinsics.checkNotNull(obj5);
                                    int height11 = ((Placeable) obj5).getHeight();
                                    if (FabPosition.m1086equalsimpl0(i23, FabPosition.Companion.m1091getEnd5ygKITE())) {
                                        if (SubcomposeMeasureScope.this.getLayoutDirection() == LayoutDirection.Ltr) {
                                            int i33 = m4005getMaxWidthimpl;
                                            SubcomposeMeasureScope subcomposeMeasureScope = SubcomposeMeasureScope.this;
                                            f13 = ScaffoldKt.FabSpacing;
                                            i26 = (i33 - subcomposeMeasureScope.mo336roundToPx0680j_4(f13)) - width3;
                                        } else {
                                            SubcomposeMeasureScope subcomposeMeasureScope2 = SubcomposeMeasureScope.this;
                                            f12 = ScaffoldKt.FabSpacing;
                                            i26 = subcomposeMeasureScope2.mo336roundToPx0680j_4(f12);
                                        }
                                    } else {
                                        i26 = (m4005getMaxWidthimpl - width3) / 2;
                                    }
                                    fabPlacement = new FabPlacement(z12, i26, width3, height11);
                                }
                                SubcomposeMeasureScope subcomposeMeasureScope3 = SubcomposeMeasureScope.this;
                                ScaffoldLayoutContent scaffoldLayoutContent = ScaffoldLayoutContent.BottomBar;
                                final Function2<Composer, Integer, Unit> function29 = function28;
                                final int i34 = i24;
                                List<Measurable> subcompose3 = subcomposeMeasureScope3.subcompose(scaffoldLayoutContent, ComposableLambdaKt.composableLambdaInstance(1529070963, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ScaffoldKt$ScaffoldLayout$1$1$1$bottomBarPlaceables$1
                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    /* JADX WARN: Multi-variable type inference failed */
                                    {
                                        super(2);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num2) {
                                        invoke(composer2, num2.intValue());
                                        return Unit.f60915a;
                                    }

                                    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                                    @Composable
                                    public final void invoke(@Nullable Composer composer2, int i35) {
                                        if ((i35 & 11) == 2 && composer2.getSkipping()) {
                                            composer2.skipToGroupEnd();
                                        } else {
                                            CompositionLocalKt.CompositionLocalProvider(new ProvidedValue[]{ScaffoldKt.getLocalFabPlacement().provides(FabPlacement.this)}, function29, composer2, ((i34 >> 15) & 112) | 8);
                                        }
                                    }
                                }));
                                long j14 = m3996copyZbe2FdA$default;
                                ArrayList arrayList4 = new ArrayList(subcompose3.size());
                                int size3 = subcompose3.size();
                                for (int i35 = 0; i35 < size3; i35++) {
                                    arrayList4.add(subcompose3.get(i35).mo3335measureBRTryo0(j14));
                                }
                                if (arrayList4.isEmpty()) {
                                    obj3 = null;
                                } else {
                                    obj3 = arrayList4.get(0);
                                    int height12 = ((Placeable) obj3).getHeight();
                                    int p14 = CollectionsKt.p(arrayList4);
                                    if (1 <= p14) {
                                        int i36 = 1;
                                        while (true) {
                                            Object obj10 = arrayList4.get(i36);
                                            int height13 = ((Placeable) obj10).getHeight();
                                            if (height12 < height13) {
                                                obj3 = obj10;
                                                height12 = height13;
                                            }
                                            if (i36 == p14) {
                                                break;
                                            }
                                            i36++;
                                        }
                                    }
                                }
                                Placeable placeable3 = (Placeable) obj3;
                                final int height14 = placeable3 != null ? placeable3.getHeight() : 0;
                                if (fabPlacement != null) {
                                    SubcomposeMeasureScope subcomposeMeasureScope4 = SubcomposeMeasureScope.this;
                                    boolean z13 = z12;
                                    if (height14 == 0) {
                                        height = fabPlacement.getHeight();
                                        f11 = ScaffoldKt.FabSpacing;
                                        mo336roundToPx0680j_4 = subcomposeMeasureScope4.mo336roundToPx0680j_4(f11);
                                    } else if (z13) {
                                        height2 = height14 + (fabPlacement.getHeight() / 2);
                                        num = Integer.valueOf(height2);
                                    } else {
                                        height = fabPlacement.getHeight() + height14;
                                        f10 = ScaffoldKt.FabSpacing;
                                        mo336roundToPx0680j_4 = subcomposeMeasureScope4.mo336roundToPx0680j_4(f10);
                                    }
                                    height2 = height + mo336roundToPx0680j_4;
                                    num = Integer.valueOf(height2);
                                } else {
                                    num = null;
                                }
                                if (height8 != 0) {
                                    i25 = height8 + (num != null ? num.intValue() : height14);
                                } else {
                                    i25 = 0;
                                }
                                int i37 = m4004getMaxHeightimpl - height5;
                                final SubcomposeMeasureScope subcomposeMeasureScope5 = SubcomposeMeasureScope.this;
                                ScaffoldLayoutContent scaffoldLayoutContent2 = ScaffoldLayoutContent.MainContent;
                                final n<PaddingValues, Composer, Integer, Unit> nVar3 = nVar2;
                                final int i38 = i24;
                                List<Measurable> subcompose4 = subcomposeMeasureScope5.subcompose(scaffoldLayoutContent2, ComposableLambdaKt.composableLambdaInstance(-1132241596, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ScaffoldKt$ScaffoldLayout$1$1$1$bodyContentPlaceables$1
                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    /* JADX WARN: Multi-variable type inference failed */
                                    {
                                        super(2);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num2) {
                                        invoke(composer2, num2.intValue());
                                        return Unit.f60915a;
                                    }

                                    @Composable
                                    public final void invoke(@Nullable Composer composer2, int i39) {
                                        if ((i39 & 11) == 2 && composer2.getSkipping()) {
                                            composer2.skipToGroupEnd();
                                            return;
                                        }
                                        nVar3.invoke(PaddingKt.m444PaddingValuesa9UjIt4$default(0.0f, 0.0f, 0.0f, SubcomposeMeasureScope.this.mo339toDpu2uoSUM(height14), 7, null), composer2, Integer.valueOf((i38 >> 6) & 112));
                                    }
                                }));
                                long j15 = m3996copyZbe2FdA$default;
                                ArrayList arrayList5 = new ArrayList(subcompose4.size());
                                int size4 = subcompose4.size();
                                int i39 = 0;
                                while (i39 < size4) {
                                    arrayList5.add(subcompose4.get(i39).mo3335measureBRTryo0(Constraints.m3996copyZbe2FdA$default(j15, 0, 0, 0, i37, 7, null)));
                                    i39++;
                                    subcompose4 = subcompose4;
                                    j15 = j15;
                                }
                                int size5 = arrayList5.size();
                                int i40 = 0;
                                while (i40 < size5) {
                                    Placeable.PlacementScope.place$default(layout, (Placeable) arrayList5.get(i40), 0, height5, 0.0f, 4, null);
                                    i40++;
                                    arrayList4 = arrayList4;
                                    arrayList5 = arrayList5;
                                }
                                ArrayList arrayList6 = arrayList4;
                                int size6 = arrayList.size();
                                for (int i41 = 0; i41 < size6; i41++) {
                                    Placeable.PlacementScope.place$default(layout, (Placeable) arrayList.get(i41), 0, 0, 0.0f, 4, null);
                                }
                                int i42 = m4004getMaxHeightimpl;
                                int size7 = arrayList2.size();
                                for (int i43 = 0; i43 < size7; i43++) {
                                    Placeable.PlacementScope.place$default(layout, (Placeable) arrayList2.get(i43), 0, i42 - i25, 0.0f, 4, null);
                                }
                                int i44 = m4004getMaxHeightimpl;
                                int size8 = arrayList6.size();
                                for (int i45 = 0; i45 < size8; i45++) {
                                    Placeable.PlacementScope.place$default(layout, (Placeable) arrayList6.get(i45), 0, i44 - height14, 0.0f, 4, null);
                                }
                                if (fabPlacement != null) {
                                    int i46 = m4004getMaxHeightimpl;
                                    int size9 = arrayList3.size();
                                    for (int i47 = 0; i47 < size9; i47++) {
                                        int left = fabPlacement.getLeft();
                                        Intrinsics.checkNotNull(num);
                                        Placeable.PlacementScope.place$default(layout, (Placeable) arrayList3.get(i47), left, i46 - num.intValue(), 0.0f, 4, null);
                                    }
                                    Unit unit = Unit.f60915a;
                                }
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
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ScaffoldKt$ScaffoldLayout$2
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

                public final void invoke(@Nullable Composer composer2, int i23) {
                    ScaffoldKt.m1171ScaffoldLayoutMDYNRJg(z10, i10, function2, nVar, function22, function23, function24, composer2, i11 | 1);
                }
            });
        }
    }

    @NotNull
    public static final ProvidableCompositionLocal<FabPlacement> getLocalFabPlacement() {
        return LocalFabPlacement;
    }

    @Composable
    @NotNull
    public static final ScaffoldState rememberScaffoldState(@Nullable DrawerState drawerState, @Nullable SnackbarHostState snackbarHostState, @Nullable Composer composer, int i10, int i11) {
        composer.startReplaceableGroup(1569641925);
        if ((i11 & 1) != 0) {
            drawerState = DrawerKt.rememberDrawerState(DrawerValue.Closed, null, composer, 6, 2);
        }
        if ((i11 & 2) != 0) {
            composer.startReplaceableGroup(-492369756);
            Object rememberedValue = composer.rememberedValue();
            if (rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new SnackbarHostState();
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            snackbarHostState = (SnackbarHostState) rememberedValue;
        }
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue2 = composer.rememberedValue();
        if (rememberedValue2 == Composer.Companion.getEmpty()) {
            rememberedValue2 = new ScaffoldState(drawerState, snackbarHostState);
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        ScaffoldState scaffoldState = (ScaffoldState) rememberedValue2;
        composer.endReplaceableGroup();
        return scaffoldState;
    }
}
