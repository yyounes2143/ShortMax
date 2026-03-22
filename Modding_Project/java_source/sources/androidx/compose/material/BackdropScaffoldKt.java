package androidx.compose.material;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.UiComposable;
import androidx.compose.ui.ZIndexModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import at.o;
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
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BackdropScaffold.kt */
@Metadata
/* loaded from: classes.dex */
public final class BackdropScaffoldKt {
    private static final float AnimationSlideOffset = Dp.m4049constructorimpl(20);

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    public static final void BackLayerTransition(final BackdropValue backdropValue, final Function2<? super Composer, ? super Integer, Unit> function2, Function2<? super Composer, ? super Integer, Unit> function22, Composer composer, final int i10) {
        int i11;
        float f10;
        int i12;
        int i13;
        int i14;
        final Function2<? super Composer, ? super Integer, Unit> function23 = function22;
        Composer startRestartGroup = composer.startRestartGroup(-950970976);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(backdropValue)) {
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
            if (startRestartGroup.changed(function23)) {
                i12 = 256;
            } else {
                i12 = 128;
            }
            i11 |= i12;
        }
        int i15 = i11;
        if ((i15 & TTVideoEngineInterface.PLAYER_OPTION_ENABLE_RECEIVE_BINARY_SEI) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (backdropValue == BackdropValue.Revealed) {
                f10 = 0.0f;
            } else {
                f10 = 2.0f;
            }
            State<Float> animateFloatAsState = AnimateAsStateKt.animateFloatAsState(f10, new TweenSpec(0, 0, null, 7, null), 0.0f, null, startRestartGroup, 0, 12);
            float mo342toPx0680j_4 = ((Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo342toPx0680j_4(AnimationSlideOffset);
            float f11 = 1;
            float m10 = e.m(m919BackLayerTransition$lambda7(animateFloatAsState) - f11, 0.0f, 1.0f);
            float m11 = e.m(f11 - m919BackLayerTransition$lambda7(animateFloatAsState), 0.0f, 1.0f);
            startRestartGroup.startReplaceableGroup(733328855);
            Modifier.Companion companion = Modifier.Companion;
            Alignment.Companion companion2 = Alignment.Companion;
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(companion2.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion3.getConstructor();
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
            Updater.m1383setimpl(m1376constructorimpl, rememberBoxMeasurePolicy, companion3.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion3.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion3.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion3.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-2137368960);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            startRestartGroup.startReplaceableGroup(2065804710);
            Modifier m1979graphicsLayerpANQ8Wg$default = GraphicsLayerModifierKt.m1979graphicsLayerpANQ8Wg$default(ZIndexModifierKt.zIndex(companion, m10), 0.0f, 0.0f, m10, 0.0f, (f11 - m10) * mo342toPx0680j_4, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 65515, null);
            startRestartGroup.startReplaceableGroup(733328855);
            MeasurePolicy rememberBoxMeasurePolicy2 = BoxKt.rememberBoxMeasurePolicy(companion2.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density2 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection2 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration2 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            Function0<ComposeUiNode> constructor2 = companion3.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(m1979graphicsLayerpANQ8Wg$default);
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
            Updater.m1383setimpl(m1376constructorimpl2, rememberBoxMeasurePolicy2, companion3.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl2, density2, companion3.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl2, layoutDirection2, companion3.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl2, viewConfiguration2, companion3.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf2.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-2137368960);
            startRestartGroup.startReplaceableGroup(-1057690836);
            function2.invoke(startRestartGroup, Integer.valueOf((i15 >> 3) & 14));
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            Modifier m1979graphicsLayerpANQ8Wg$default2 = GraphicsLayerModifierKt.m1979graphicsLayerpANQ8Wg$default(ZIndexModifierKt.zIndex(companion, m11), 0.0f, 0.0f, m11, 0.0f, (f11 - m11) * (-mo342toPx0680j_4), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 65515, null);
            startRestartGroup.startReplaceableGroup(733328855);
            MeasurePolicy rememberBoxMeasurePolicy3 = BoxKt.rememberBoxMeasurePolicy(companion2.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density3 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection3 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration3 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            Function0<ComposeUiNode> constructor3 = companion3.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf3 = LayoutKt.materializerOf(m1979graphicsLayerpANQ8Wg$default2);
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
            Updater.m1383setimpl(m1376constructorimpl3, rememberBoxMeasurePolicy3, companion3.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl3, density3, companion3.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl3, layoutDirection3, companion3.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl3, viewConfiguration3, companion3.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf3.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-2137368960);
            startRestartGroup.startReplaceableGroup(-676544093);
            function23 = function22;
            function23.invoke(startRestartGroup, Integer.valueOf((i15 >> 6) & 14));
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.BackdropScaffoldKt$BackLayerTransition$2
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
                    BackdropScaffoldKt.BackLayerTransition(BackdropValue.this, function2, function23, composer2, i10 | 1);
                }
            });
        }
    }

    /* renamed from: BackLayerTransition$lambda-7  reason: not valid java name */
    private static final float m919BackLayerTransition$lambda7(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0379  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x03f1  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x04f1  */
    /* JADX WARN: Removed duplicated region for block: B:288:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0139  */
    @androidx.compose.runtime.Composable
    @androidx.compose.material.ExperimentalMaterialApi
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /* renamed from: BackdropScaffold-BZszfkY  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m920BackdropScaffoldBZszfkY(@org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r49, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r50, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r51, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r52, @org.jetbrains.annotations.Nullable androidx.compose.material.BackdropScaffoldState r53, boolean r54, float r55, float r56, boolean r57, boolean r58, long r59, long r61, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r63, float r64, long r65, long r67, long r69, @org.jetbrains.annotations.Nullable at.n<? super androidx.compose.material.SnackbarHostState, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r71, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r72, final int r73, final int r74, final int r75) {
        /*
            Method dump skipped, instructions count: 1295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.BackdropScaffoldKt.m920BackdropScaffoldBZszfkY(kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, androidx.compose.material.BackdropScaffoldState, boolean, float, float, boolean, boolean, long, long, androidx.compose.ui.graphics.Shape, float, long, long, long, at.n, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @UiComposable
    public static final void BackdropStack(final Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> function2, final Function1<? super Constraints, Constraints> function1, final o<? super Constraints, ? super Float, ? super Composer, ? super Integer, Unit> oVar, Composer composer, final int i10) {
        final int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        Composer startRestartGroup = composer.startRestartGroup(-1248995194);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(modifier)) {
                i15 = 4;
            } else {
                i15 = 2;
            }
            i11 = i15 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(function2)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i11 |= i14;
        }
        if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(function1)) {
                i13 = 256;
            } else {
                i13 = 128;
            }
            i11 |= i13;
        }
        if ((i10 & 7168) == 0) {
            if (startRestartGroup.changed(oVar)) {
                i12 = 2048;
            } else {
                i12 = 1024;
            }
            i11 |= i12;
        }
        if ((i11 & 5851) == 1170 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            startRestartGroup.startReplaceableGroup(1618982084);
            boolean changed = startRestartGroup.changed(function2) | startRestartGroup.changed(function1) | startRestartGroup.changed(oVar);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function2<SubcomposeMeasureScope, Constraints, MeasureResult>() { // from class: androidx.compose.material.BackdropScaffoldKt$BackdropStack$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
                        return m928invoke0kLqBqw(subcomposeMeasureScope, constraints.m4011unboximpl());
                    }

                    @NotNull
                    /* renamed from: invoke-0kLqBqw  reason: not valid java name */
                    public final MeasureResult m928invoke0kLqBqw(@NotNull SubcomposeMeasureScope SubcomposeLayout, final long j10) {
                        Intrinsics.checkNotNullParameter(SubcomposeLayout, "$this$SubcomposeLayout");
                        final Placeable mo3335measureBRTryo0 = ((Measurable) CollectionsKt.r0(SubcomposeLayout.subcompose(BackdropLayers.Back, function2))).mo3335measureBRTryo0(function1.invoke(Constraints.m3993boximpl(j10)).m4011unboximpl());
                        final float height = mo3335measureBRTryo0.getHeight();
                        BackdropLayers backdropLayers = BackdropLayers.Front;
                        final o<Constraints, Float, Composer, Integer, Unit> oVar2 = oVar;
                        final int i16 = i11;
                        List<Measurable> subcompose = SubcomposeLayout.subcompose(backdropLayers, ComposableLambdaKt.composableLambdaInstance(-1222642649, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.BackdropScaffoldKt$BackdropStack$1$1$placeables$1
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
                                if ((i17 & 11) == 2 && composer2.getSkipping()) {
                                    composer2.skipToGroupEnd();
                                } else {
                                    oVar2.invoke(Constraints.m3993boximpl(j10), Float.valueOf(height), composer2, Integer.valueOf((i16 >> 3) & 896));
                                }
                            }
                        }));
                        final ArrayList arrayList = new ArrayList(subcompose.size());
                        int size = subcompose.size();
                        for (int i17 = 0; i17 < size; i17++) {
                            arrayList.add(subcompose.get(i17).mo3335measureBRTryo0(j10));
                        }
                        int max = Math.max(Constraints.m4007getMinWidthimpl(j10), mo3335measureBRTryo0.getWidth());
                        int max2 = Math.max(Constraints.m4006getMinHeightimpl(j10), mo3335measureBRTryo0.getHeight());
                        int size2 = arrayList.size();
                        int i18 = max2;
                        int i19 = max;
                        for (int i20 = 0; i20 < size2; i20++) {
                            Placeable placeable = (Placeable) arrayList.get(i20);
                            i19 = Math.max(i19, placeable.getWidth());
                            i18 = Math.max(i18, placeable.getHeight());
                        }
                        return MeasureScope.layout$default(SubcomposeLayout, i19, i18, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.BackdropScaffoldKt$BackdropStack$1$1.2
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
                                Placeable.PlacementScope.placeRelative$default(layout, Placeable.this, 0, 0, 0.0f, 4, null);
                                List<Placeable> list = arrayList;
                                int size3 = list.size();
                                for (int i21 = 0; i21 < size3; i21++) {
                                    Placeable.PlacementScope.placeRelative$default(layout, list.get(i21), 0, 0, 0.0f, 4, null);
                                }
                            }
                        }, 4, null);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            SubcomposeLayoutKt.SubcomposeLayout(modifier, (Function2) rememberedValue, startRestartGroup, i11 & 14, 0);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.BackdropScaffoldKt$BackdropStack$2
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
                    BackdropScaffoldKt.BackdropStack(Modifier.this, function2, function1, oVar, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    /* renamed from: Scrim-3J-VO9M  reason: not valid java name */
    public static final void m921Scrim3JVO9M(final long j10, final Function0<Unit> function0, final boolean z10, Composer composer, final int i10) {
        int i11;
        float f10;
        Modifier modifier;
        int i12;
        int i13;
        int i14;
        Composer startRestartGroup = composer.startRestartGroup(-92141505);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(j10)) {
                i14 = 4;
            } else {
                i14 = 2;
            }
            i11 = i14 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(function0)) {
                i13 = 32;
            } else {
                i13 = 16;
            }
            i11 |= i13;
        }
        if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(z10)) {
                i12 = 256;
            } else {
                i12 = 128;
            }
            i11 |= i12;
        }
        if ((i11 & TTVideoEngineInterface.PLAYER_OPTION_ENABLE_RECEIVE_BINARY_SEI) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else if (j10 != Color.Companion.m1878getUnspecified0d7_KjU()) {
            if (z10) {
                f10 = 1.0f;
            } else {
                f10 = 0.0f;
            }
            final State<Float> animateFloatAsState = AnimateAsStateKt.animateFloatAsState(f10, new TweenSpec(0, 0, null, 7, null), 0.0f, null, startRestartGroup, 0, 12);
            startRestartGroup.startReplaceableGroup(1010547004);
            if (z10) {
                Modifier.Companion companion = Modifier.Companion;
                Unit unit = Unit.f60915a;
                startRestartGroup.startReplaceableGroup(1157296644);
                boolean changed = startRestartGroup.changed(function0);
                Object rememberedValue = startRestartGroup.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new BackdropScaffoldKt$Scrim$dismissModifier$1$1(function0, null);
                    startRestartGroup.updateRememberedValue(rememberedValue);
                }
                startRestartGroup.endReplaceableGroup();
                modifier = SuspendingPointerInputFilterKt.pointerInput(companion, unit, (Function2) rememberedValue);
            } else {
                modifier = Modifier.Companion;
            }
            startRestartGroup.endReplaceableGroup();
            Modifier then = SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, null).then(modifier);
            Color m1832boximpl = Color.m1832boximpl(j10);
            startRestartGroup.startReplaceableGroup(511388516);
            boolean changed2 = startRestartGroup.changed(m1832boximpl) | startRestartGroup.changed(animateFloatAsState);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                rememberedValue2 = new Function1<DrawScope, Unit>() { // from class: androidx.compose.material.BackdropScaffoldKt$Scrim$1$1
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
                        float m922Scrim_3J_VO9M$lambda4;
                        Intrinsics.checkNotNullParameter(Canvas, "$this$Canvas");
                        long j11 = j10;
                        m922Scrim_3J_VO9M$lambda4 = BackdropScaffoldKt.m922Scrim_3J_VO9M$lambda4(animateFloatAsState);
                        DrawScope.m2331drawRectnJ9OG0$default(Canvas, j11, 0L, 0L, m922Scrim_3J_VO9M$lambda4, null, null, 0, 118, null);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            CanvasKt.Canvas(then, (Function1) rememberedValue2, startRestartGroup, 0);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.BackdropScaffoldKt$Scrim$2
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

                public final void invoke(@Nullable Composer composer2, int i15) {
                    BackdropScaffoldKt.m921Scrim3JVO9M(j10, function0, z10, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Scrim_3J_VO9M$lambda-4  reason: not valid java name */
    public static final float m922Scrim_3J_VO9M$lambda4(State<Float> state) {
        return state.getValue().floatValue();
    }

    @Composable
    @ExperimentalMaterialApi
    @NotNull
    public static final BackdropScaffoldState rememberBackdropScaffoldState(@NotNull final BackdropValue initialValue, @Nullable final AnimationSpec<Float> animationSpec, @Nullable final Function1<? super BackdropValue, Boolean> function1, @Nullable final SnackbarHostState snackbarHostState, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        composer.startReplaceableGroup(-862178912);
        if ((i11 & 2) != 0) {
            animationSpec = SwipeableDefaults.INSTANCE.getAnimationSpec();
        }
        if ((i11 & 4) != 0) {
            function1 = new Function1<BackdropValue, Boolean>() { // from class: androidx.compose.material.BackdropScaffoldKt$rememberBackdropScaffoldState$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull BackdropValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.TRUE;
                }
            };
        }
        if ((i11 & 8) != 0) {
            composer.startReplaceableGroup(-492369756);
            Object rememberedValue = composer.rememberedValue();
            if (rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new SnackbarHostState();
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            snackbarHostState = (SnackbarHostState) rememberedValue;
        }
        BackdropScaffoldState backdropScaffoldState = (BackdropScaffoldState) RememberSaveableKt.m1492rememberSaveable(new Object[]{animationSpec, function1, snackbarHostState}, (Saver<Object, ? extends Object>) BackdropScaffoldState.Companion.Saver(animationSpec, function1, snackbarHostState), (String) null, (Function0<? extends Object>) new Function0<BackdropScaffoldState>() { // from class: androidx.compose.material.BackdropScaffoldKt$rememberBackdropScaffoldState$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BackdropScaffoldState invoke() {
                return new BackdropScaffoldState(BackdropValue.this, animationSpec, function1, snackbarHostState);
            }
        }, composer, 72, 4);
        composer.endReplaceableGroup();
        return backdropScaffoldState;
    }
}
