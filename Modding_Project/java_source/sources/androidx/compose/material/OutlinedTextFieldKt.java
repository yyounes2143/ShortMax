package androidx.compose.material;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import bt.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OutlinedTextField.kt */
@Metadata
/* loaded from: classes.dex */
public final class OutlinedTextFieldKt {
    @NotNull
    public static final String BorderId = "border";
    private static final float OutlinedTextFieldInnerPadding = Dp.m4049constructorimpl(4);
    private static final float OutlinedTextFieldTopPadding = Dp.m4049constructorimpl(8);

    /* JADX WARN: Removed duplicated region for block: B:107:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0375  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0498  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x0598  */
    /* JADX WARN: Removed duplicated region for block: B:302:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0134  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void OutlinedTextField(@org.jetbrains.annotations.NotNull final java.lang.String r71, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super java.lang.String, kotlin.Unit> r72, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r73, boolean r74, boolean r75, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.TextStyle r76, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r77, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r78, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r79, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r80, boolean r81, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.input.VisualTransformation r82, @org.jetbrains.annotations.Nullable androidx.compose.foundation.text.KeyboardOptions r83, @org.jetbrains.annotations.Nullable androidx.compose.foundation.text.KeyboardActions r84, boolean r85, int r86, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r87, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r88, @org.jetbrains.annotations.Nullable androidx.compose.material.TextFieldColors r89, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r90, final int r91, final int r92, final int r93) {
        /*
            Method dump skipped, instructions count: 1460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.OutlinedTextFieldKt.OutlinedTextField(java.lang.String, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, boolean, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.text.KeyboardOptions, androidx.compose.foundation.text.KeyboardActions, boolean, int, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Shape, androidx.compose.material.TextFieldColors, androidx.compose.runtime.Composer, int, int, int):void");
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    public static final void OutlinedTextFieldLayout(@NotNull final Modifier modifier, @NotNull final Function2<? super Composer, ? super Integer, Unit> textField, @Nullable final n<? super Modifier, ? super Composer, ? super Integer, Unit> nVar, @Nullable final Function2<? super Composer, ? super Integer, Unit> function2, @Nullable final Function2<? super Composer, ? super Integer, Unit> function22, @Nullable final Function2<? super Composer, ? super Integer, Unit> function23, final boolean z10, final float f10, @NotNull final Function1<? super Size, Unit> onLabelMeasured, @NotNull final Function2<? super Composer, ? super Integer, Unit> border, @NotNull final PaddingValues paddingValues, @Nullable Composer composer, final int i10, final int i11) {
        int i12;
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Intrinsics.checkNotNullParameter(textField, "textField");
        Intrinsics.checkNotNullParameter(onLabelMeasured, "onLabelMeasured");
        Intrinsics.checkNotNullParameter(border, "border");
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        Composer startRestartGroup = composer.startRestartGroup(-2049536174);
        int i13 = (i10 & 14) == 0 ? (startRestartGroup.changed(modifier) ? 4 : 2) | i10 : i10;
        if ((i10 & 112) == 0) {
            i13 |= startRestartGroup.changed(textField) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i13 |= startRestartGroup.changed(nVar) ? 256 : 128;
        }
        if ((i10 & 7168) == 0) {
            i13 |= startRestartGroup.changed(function2) ? 2048 : 1024;
        }
        if ((57344 & i10) == 0) {
            i13 |= startRestartGroup.changed(function22) ? 16384 : 8192;
        }
        if ((458752 & i10) == 0) {
            i13 |= startRestartGroup.changed(function23) ? 131072 : 65536;
        }
        if ((3670016 & i10) == 0) {
            i13 |= startRestartGroup.changed(z10) ? 1048576 : 524288;
        }
        if ((29360128 & i10) == 0) {
            i13 |= startRestartGroup.changed(f10) ? 8388608 : 4194304;
        }
        if ((234881024 & i10) == 0) {
            i13 |= startRestartGroup.changed(onLabelMeasured) ? 67108864 : 33554432;
        }
        if ((1879048192 & i10) == 0) {
            i13 |= startRestartGroup.changed(border) ? 536870912 : 268435456;
        }
        int i14 = (i11 & 14) == 0 ? i11 | (startRestartGroup.changed(paddingValues) ? 4 : 2) : i11;
        if ((i13 & 1533916891) == 306783378 && (i14 & 11) == 2 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            Object[] objArr = {onLabelMeasured, Boolean.valueOf(z10), Float.valueOf(f10), paddingValues};
            startRestartGroup.startReplaceableGroup(-568225417);
            int i15 = 0;
            boolean z11 = false;
            for (int i16 = 4; i15 < i16; i16 = 4) {
                z11 |= startRestartGroup.changed(objArr[i15]);
                i15++;
            }
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (z11 || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new OutlinedTextFieldMeasurePolicy(onLabelMeasured, z10, f10, paddingValues);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy = (OutlinedTextFieldMeasurePolicy) rememberedValue;
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection2 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(modifier);
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
            Updater.m1383setimpl(m1376constructorimpl, outlinedTextFieldMeasurePolicy, companion.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection2, companion.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(118153609);
            border.invoke(startRestartGroup, Integer.valueOf((i13 >> 27) & 14));
            startRestartGroup.startReplaceableGroup(1169914108);
            if (function22 != null) {
                Modifier then = LayoutIdKt.layoutId(Modifier.Companion, TextFieldImplKt.LeadingId).then(TextFieldImplKt.getIconDefaultSizeModifier());
                Alignment center = Alignment.Companion.getCenter();
                startRestartGroup.startReplaceableGroup(733328855);
                MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(center, false, startRestartGroup, 6);
                startRestartGroup.startReplaceableGroup(-1323940314);
                Density density2 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                LayoutDirection layoutDirection3 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                ViewConfiguration viewConfiguration2 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
                Function0<ComposeUiNode> constructor2 = companion.getConstructor();
                n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(then);
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
                Updater.m1383setimpl(m1376constructorimpl2, layoutDirection3, companion.getSetLayoutDirection());
                Updater.m1383setimpl(m1376constructorimpl2, viewConfiguration2, companion.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf2.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                startRestartGroup.startReplaceableGroup(-2137368960);
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                startRestartGroup.startReplaceableGroup(1691709354);
                function22.invoke(startRestartGroup, Integer.valueOf((i13 >> 12) & 14));
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            }
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.startReplaceableGroup(1169914393);
            if (function23 != null) {
                Modifier then2 = LayoutIdKt.layoutId(Modifier.Companion, TextFieldImplKt.TrailingId).then(TextFieldImplKt.getIconDefaultSizeModifier());
                Alignment center2 = Alignment.Companion.getCenter();
                startRestartGroup.startReplaceableGroup(733328855);
                MeasurePolicy rememberBoxMeasurePolicy2 = BoxKt.rememberBoxMeasurePolicy(center2, false, startRestartGroup, 6);
                startRestartGroup.startReplaceableGroup(-1323940314);
                Density density3 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                LayoutDirection layoutDirection4 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                ViewConfiguration viewConfiguration3 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
                Function0<ComposeUiNode> constructor3 = companion.getConstructor();
                n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf3 = LayoutKt.materializerOf(then2);
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
                Updater.m1383setimpl(m1376constructorimpl3, layoutDirection4, companion.getSetLayoutDirection());
                Updater.m1383setimpl(m1376constructorimpl3, viewConfiguration3, companion.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf3.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                startRestartGroup.startReplaceableGroup(-2137368960);
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                startRestartGroup.startReplaceableGroup(-1351586719);
                function23.invoke(startRestartGroup, Integer.valueOf((i13 >> 15) & 14));
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            }
            startRestartGroup.endReplaceableGroup();
            float calculateStartPadding = PaddingKt.calculateStartPadding(paddingValues, layoutDirection);
            float calculateEndPadding = PaddingKt.calculateEndPadding(paddingValues, layoutDirection);
            Modifier.Companion companion2 = Modifier.Companion;
            if (function22 != null) {
                i12 = 0;
                calculateStartPadding = Dp.m4049constructorimpl(e.d(Dp.m4049constructorimpl(calculateStartPadding - TextFieldImplKt.getHorizontalIconPadding()), Dp.m4049constructorimpl(0)));
            } else {
                i12 = 0;
            }
            float f11 = calculateStartPadding;
            if (function23 != null) {
                calculateEndPadding = Dp.m4049constructorimpl(e.d(Dp.m4049constructorimpl(calculateEndPadding - TextFieldImplKt.getHorizontalIconPadding()), Dp.m4049constructorimpl(i12)));
            }
            Modifier m451paddingqDBjuR0$default = PaddingKt.m451paddingqDBjuR0$default(companion2, f11, 0.0f, calculateEndPadding, 0.0f, 10, null);
            startRestartGroup.startReplaceableGroup(1169915404);
            if (nVar != null) {
                nVar.invoke(LayoutIdKt.layoutId(companion2, TextFieldImplKt.PlaceholderId).then(m451paddingqDBjuR0$default), startRestartGroup, Integer.valueOf((i13 >> 3) & 112));
            }
            startRestartGroup.endReplaceableGroup();
            Modifier then3 = LayoutIdKt.layoutId(companion2, TextFieldImplKt.TextFieldId).then(m451paddingqDBjuR0$default);
            startRestartGroup.startReplaceableGroup(733328855);
            Alignment.Companion companion3 = Alignment.Companion;
            MeasurePolicy rememberBoxMeasurePolicy3 = BoxKt.rememberBoxMeasurePolicy(companion3.getTopStart(), true, startRestartGroup, 48);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density4 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection5 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration4 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            Function0<ComposeUiNode> constructor4 = companion.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf4 = LayoutKt.materializerOf(then3);
            if (startRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor4);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m1376constructorimpl4 = Updater.m1376constructorimpl(startRestartGroup);
            Updater.m1383setimpl(m1376constructorimpl4, rememberBoxMeasurePolicy3, companion.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl4, density4, companion.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl4, layoutDirection5, companion.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl4, viewConfiguration4, companion.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf4.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-2137368960);
            BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
            startRestartGroup.startReplaceableGroup(-1205597937);
            textField.invoke(startRestartGroup, Integer.valueOf((i13 >> 3) & 14));
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            if (function2 != null) {
                Modifier layoutId = LayoutIdKt.layoutId(companion2, TextFieldImplKt.LabelId);
                startRestartGroup.startReplaceableGroup(733328855);
                MeasurePolicy rememberBoxMeasurePolicy4 = BoxKt.rememberBoxMeasurePolicy(companion3.getTopStart(), false, startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(-1323940314);
                Density density5 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                LayoutDirection layoutDirection6 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                ViewConfiguration viewConfiguration5 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
                Function0<ComposeUiNode> constructor5 = companion.getConstructor();
                n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf5 = LayoutKt.materializerOf(layoutId);
                if (startRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor5);
                } else {
                    startRestartGroup.useNode();
                }
                startRestartGroup.disableReusing();
                Composer m1376constructorimpl5 = Updater.m1376constructorimpl(startRestartGroup);
                Updater.m1383setimpl(m1376constructorimpl5, rememberBoxMeasurePolicy4, companion.getSetMeasurePolicy());
                Updater.m1383setimpl(m1376constructorimpl5, density5, companion.getSetDensity());
                Updater.m1383setimpl(m1376constructorimpl5, layoutDirection6, companion.getSetLayoutDirection());
                Updater.m1383setimpl(m1376constructorimpl5, viewConfiguration5, companion.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf5.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                startRestartGroup.startReplaceableGroup(-2137368960);
                startRestartGroup.startReplaceableGroup(-55131805);
                function2.invoke(startRestartGroup, Integer.valueOf((i13 >> 9) & 14));
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
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.OutlinedTextFieldKt$OutlinedTextFieldLayout$2
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
                OutlinedTextFieldKt.OutlinedTextFieldLayout(Modifier.this, textField, nVar, function2, function22, function23, z10, f10, onLabelMeasured, border, paddingValues, composer2, i10 | 1, i11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: calculateHeight-zUg2_y0  reason: not valid java name */
    public static final int m1136calculateHeightzUg2_y0(int i10, int i11, int i12, int i13, int i14, long j10, float f10, PaddingValues paddingValues) {
        return Math.max(Constraints.m4006getMinHeightimpl(j10), Math.max(i10, Math.max(i11, a.c(Math.max(i12, i14) + (paddingValues.mo427calculateBottomPaddingD9Ej5fM() * f10) + Math.max(paddingValues.mo430calculateTopPaddingD9Ej5fM() * f10, i13 / 2.0f)))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: calculateWidth-VsPV1Ek  reason: not valid java name */
    public static final int m1137calculateWidthVsPV1Ek(int i10, int i11, int i12, int i13, int i14, long j10) {
        return Math.max(i10 + Math.max(i12, Math.max(i13, i14)) + i11, Constraints.m4007getMinWidthimpl(j10));
    }

    public static final float getOutlinedTextFieldTopPadding() {
        return OutlinedTextFieldTopPadding;
    }

    @NotNull
    /* renamed from: outlineCutout-12SF9DM  reason: not valid java name */
    public static final Modifier m1138outlineCutout12SF9DM(@NotNull Modifier outlineCutout, final long j10, @NotNull final PaddingValues paddingValues) {
        Intrinsics.checkNotNullParameter(outlineCutout, "$this$outlineCutout");
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        return DrawModifierKt.drawWithContent(outlineCutout, new Function1<ContentDrawScope, Unit>() { // from class: androidx.compose.material.OutlinedTextFieldKt$outlineCutout$1

            /* compiled from: OutlinedTextField.kt */
            @Metadata
            /* loaded from: classes.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[LayoutDirection.values().length];
                    iArr[LayoutDirection.Rtl.ordinal()] = 1;
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ContentDrawScope contentDrawScope) {
                invoke2(contentDrawScope);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ContentDrawScope drawWithContent) {
                float f10;
                float d10;
                Intrinsics.checkNotNullParameter(drawWithContent, "$this$drawWithContent");
                float m1675getWidthimpl = Size.m1675getWidthimpl(j10);
                if (m1675getWidthimpl > 0.0f) {
                    f10 = OutlinedTextFieldKt.OutlinedTextFieldInnerPadding;
                    float mo342toPx0680j_4 = drawWithContent.mo342toPx0680j_4(f10);
                    float mo342toPx0680j_42 = drawWithContent.mo342toPx0680j_4(paddingValues.mo428calculateLeftPaddingu2uoSUM(drawWithContent.getLayoutDirection())) - mo342toPx0680j_4;
                    float f11 = 2;
                    float f12 = m1675getWidthimpl + mo342toPx0680j_42 + (mo342toPx0680j_4 * f11);
                    LayoutDirection layoutDirection = drawWithContent.getLayoutDirection();
                    int[] iArr = WhenMappings.$EnumSwitchMapping$0;
                    if (iArr[layoutDirection.ordinal()] == 1) {
                        d10 = Size.m1675getWidthimpl(drawWithContent.mo2336getSizeNHjbRc()) - f12;
                    } else {
                        d10 = e.d(mo342toPx0680j_42, 0.0f);
                    }
                    float f13 = d10;
                    if (iArr[drawWithContent.getLayoutDirection().ordinal()] == 1) {
                        f12 = Size.m1675getWidthimpl(drawWithContent.mo2336getSizeNHjbRc()) - e.d(mo342toPx0680j_42, 0.0f);
                    }
                    float f14 = f12;
                    float m1672getHeightimpl = Size.m1672getHeightimpl(j10);
                    float f15 = (-m1672getHeightimpl) / f11;
                    float f16 = m1672getHeightimpl / f11;
                    int m1830getDifferencertfAjoo = ClipOp.Companion.m1830getDifferencertfAjoo();
                    DrawContext drawContext = drawWithContent.getDrawContext();
                    long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
                    drawContext.getCanvas().save();
                    drawContext.getTransform().mo2264clipRectN_I0leg(f13, f15, f14, f16, m1830getDifferencertfAjoo);
                    drawWithContent.drawContent();
                    drawContext.getCanvas().restore();
                    drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
                    return;
                }
                drawWithContent.drawContent();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void place(Placeable.PlacementScope placementScope, int i10, int i11, Placeable placeable, Placeable placeable2, Placeable placeable3, Placeable placeable4, Placeable placeable5, Placeable placeable6, float f10, boolean z10, float f11, LayoutDirection layoutDirection, PaddingValues paddingValues) {
        int i12;
        int i13;
        float widthOrZero;
        int c10 = a.c(paddingValues.mo430calculateTopPaddingD9Ej5fM() * f11);
        int c11 = a.c(PaddingKt.calculateStartPadding(paddingValues, layoutDirection) * f11);
        float horizontalIconPadding = TextFieldImplKt.getHorizontalIconPadding() * f11;
        if (placeable != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, Alignment.Companion.getCenterVertically().align(placeable.getHeight(), i10), 0.0f, 4, null);
        }
        if (placeable2 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i11 - placeable2.getWidth(), Alignment.Companion.getCenterVertically().align(placeable2.getHeight(), i10), 0.0f, 4, null);
        }
        if (placeable4 != null) {
            if (z10) {
                i13 = Alignment.Companion.getCenterVertically().align(placeable4.getHeight(), i10);
            } else {
                i13 = c10;
            }
            float f12 = 1 - f10;
            float height = (i13 * f12) - ((placeable4.getHeight() / 2) * f10);
            if (placeable == null) {
                widthOrZero = 0.0f;
            } else {
                widthOrZero = (TextFieldImplKt.widthOrZero(placeable) - horizontalIconPadding) * f12;
            }
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable4, a.c(widthOrZero) + c11, a.c(height), 0.0f, 4, null);
        }
        if (z10) {
            i12 = Alignment.Companion.getCenterVertically().align(placeable3.getHeight(), i10);
        } else {
            i12 = c10;
        }
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, TextFieldImplKt.widthOrZero(placeable), Math.max(i12, TextFieldImplKt.heightOrZero(placeable4) / 2), 0.0f, 4, null);
        if (placeable5 != null) {
            if (z10) {
                c10 = Alignment.Companion.getCenterVertically().align(placeable5.getHeight(), i10);
            }
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable5, TextFieldImplKt.widthOrZero(placeable), c10, 0.0f, 4, null);
        }
        Placeable.PlacementScope.m3377place70tqf50$default(placementScope, placeable6, IntOffset.Companion.m4177getZeronOccac(), 0.0f, 2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0384  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0390  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0433  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0466  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x04b5  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x04d0  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x05b5  */
    /* JADX WARN: Removed duplicated region for block: B:302:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0134  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void OutlinedTextField(@org.jetbrains.annotations.NotNull final androidx.compose.ui.text.input.TextFieldValue r71, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.input.TextFieldValue, kotlin.Unit> r72, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r73, boolean r74, boolean r75, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.TextStyle r76, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r77, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r78, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r79, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r80, boolean r81, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.input.VisualTransformation r82, @org.jetbrains.annotations.Nullable androidx.compose.foundation.text.KeyboardOptions r83, @org.jetbrains.annotations.Nullable androidx.compose.foundation.text.KeyboardActions r84, boolean r85, int r86, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r87, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r88, @org.jetbrains.annotations.Nullable androidx.compose.material.TextFieldColors r89, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r90, final int r91, final int r92, final int r93) {
        /*
            Method dump skipped, instructions count: 1489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.OutlinedTextFieldKt.OutlinedTextField(androidx.compose.ui.text.input.TextFieldValue, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, boolean, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.text.KeyboardOptions, androidx.compose.foundation.text.KeyboardActions, boolean, int, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Shape, androidx.compose.material.TextFieldColors, androidx.compose.runtime.Composer, int, int, int):void");
    }
}
