package androidx.compose.material.internal;

import android.view.View;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import at.n;
import bt.a;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ExposedDropdownMenuPopup.kt */
@Metadata
/* loaded from: classes.dex */
public final class ExposedDropdownMenuPopupKt {
    @NotNull
    private static final ProvidableCompositionLocal<String> LocalPopupTestTag = CompositionLocalKt.compositionLocalOf$default(null, new Function0<String>() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$LocalPopupTestTag$1
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final String invoke() {
            return "DEFAULT_TEST_TAG";
        }
    }, 1, null);

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    public static final void ExposedDropdownMenuPopup(@Nullable Function0<Unit> function0, @NotNull final PopupPositionProvider popupPositionProvider, @NotNull final Function2<? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, final int i10, final int i11) {
        final Function0<Unit> function02;
        int i12;
        int i13;
        int i14;
        int i15;
        Function0<Unit> function03;
        final LayoutDirection layoutDirection;
        final String str;
        final Function0<Unit> function04;
        int i16;
        Composer composer2;
        PopupLayout popupLayout;
        Intrinsics.checkNotNullParameter(popupPositionProvider, "popupPositionProvider");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(-841446797);
        int i17 = i11 & 1;
        if (i17 != 0) {
            i12 = i10 | 6;
            function02 = function0;
        } else if ((i10 & 14) == 0) {
            Object obj = function0;
            if (startRestartGroup.changed(obj)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i12 = i13 | i10;
            function02 = obj;
        } else {
            function02 = function0;
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(popupPositionProvider)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i12 |= i14;
        }
        if ((i11 & 4) != 0) {
            i12 |= MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
        } else if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(content)) {
                i15 = 256;
            } else {
                i15 = 128;
            }
            i12 |= i15;
        }
        int i18 = i12;
        if ((i18 & TTVideoEngineInterface.PLAYER_OPTION_ENABLE_RECEIVE_BINARY_SEI) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
            composer2 = startRestartGroup;
        } else {
            if (i17 != 0) {
                function03 = null;
            } else {
                function03 = function02;
            }
            View view = (View) startRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalView());
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            String str2 = (String) startRestartGroup.consume(LocalPopupTestTag);
            LayoutDirection layoutDirection2 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            CompositionContext rememberCompositionContext = ComposablesKt.rememberCompositionContext(startRestartGroup, 0);
            final State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(content, startRestartGroup, (i18 >> 6) & 14);
            UUID popupId = (UUID) RememberSaveableKt.m1492rememberSaveable(new Object[0], (Saver<Object, ? extends Object>) null, (String) null, (Function0<? extends Object>) new Function0<UUID>() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupId$1
                @Override // kotlin.jvm.functions.Function0
                public final UUID invoke() {
                    return UUID.randomUUID();
                }
            }, startRestartGroup, 3080, 6);
            startRestartGroup.startReplaceableGroup(-492369756);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (rememberedValue == Composer.Companion.getEmpty()) {
                Intrinsics.checkNotNullExpressionValue(popupId, "popupId");
                layoutDirection = layoutDirection2;
                str = str2;
                function04 = function03;
                i16 = i18;
                composer2 = startRestartGroup;
                final PopupLayout popupLayout2 = new PopupLayout(function03, str2, view, density, popupPositionProvider, popupId);
                popupLayout2.setContent(rememberCompositionContext, ComposableLambdaKt.composableLambdaInstance(144472904, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return Unit.f60915a;
                    }

                    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                    @Composable
                    public final void invoke(@Nullable Composer composer3, int i19) {
                        if ((i19 & 11) == 2 && composer3.getSkipping()) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        Modifier semantics$default = SemanticsModifierKt.semantics$default(Modifier.Companion, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                invoke2(semanticsPropertyReceiver);
                                return Unit.f60915a;
                            }

                            /* renamed from: invoke  reason: avoid collision after fix types in other method */
                            public final void invoke2(@NotNull SemanticsPropertyReceiver semantics) {
                                Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                                SemanticsPropertiesKt.popup(semantics);
                            }
                        }, 1, null);
                        final PopupLayout popupLayout3 = PopupLayout.this;
                        Modifier alpha = AlphaKt.alpha(OnRemeasuredModifierKt.onSizeChanged(semantics$default, new Function1<IntSize, Unit>() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1.2
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(IntSize intSize) {
                                m1276invokeozmzZPI(intSize.m4213unboximpl());
                                return Unit.f60915a;
                            }

                            /* renamed from: invoke-ozmzZPI  reason: not valid java name */
                            public final void m1276invokeozmzZPI(long j10) {
                                PopupLayout.this.m1278setPopupContentSizefhxjrPA(IntSize.m4201boximpl(j10));
                                PopupLayout.this.updatePosition();
                            }
                        }), PopupLayout.this.getCanCalculatePosition() ? 1.0f : 0.0f);
                        final State<Function2<Composer, Integer, Unit>> state = rememberUpdatedState;
                        ComposableLambda composableLambda = ComposableLambdaKt.composableLambda(composer3, 2080999218, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1.3
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                invoke(composer4, num.intValue());
                                return Unit.f60915a;
                            }

                            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                            @Composable
                            public final void invoke(@Nullable Composer composer4, int i20) {
                                Function2 m1274ExposedDropdownMenuPopup$lambda0;
                                if ((i20 & 11) == 2 && composer4.getSkipping()) {
                                    composer4.skipToGroupEnd();
                                    return;
                                }
                                m1274ExposedDropdownMenuPopup$lambda0 = ExposedDropdownMenuPopupKt.m1274ExposedDropdownMenuPopup$lambda0(state);
                                m1274ExposedDropdownMenuPopup$lambda0.invoke(composer4, 0);
                            }
                        });
                        composer3.startReplaceableGroup(1769324208);
                        ExposedDropdownMenuPopupKt$SimpleStack$1 exposedDropdownMenuPopupKt$SimpleStack$1 = ExposedDropdownMenuPopupKt$SimpleStack$1.INSTANCE;
                        composer3.startReplaceableGroup(-1323940314);
                        Density density2 = (Density) composer3.consume(CompositionLocalsKt.getLocalDensity());
                        LayoutDirection layoutDirection3 = (LayoutDirection) composer3.consume(CompositionLocalsKt.getLocalLayoutDirection());
                        ViewConfiguration viewConfiguration = (ViewConfiguration) composer3.consume(CompositionLocalsKt.getLocalViewConfiguration());
                        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                        Function0<ComposeUiNode> constructor = companion.getConstructor();
                        n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(alpha);
                        if (composer3.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composer3.startReusableNode();
                        if (composer3.getInserting()) {
                            composer3.createNode(constructor);
                        } else {
                            composer3.useNode();
                        }
                        composer3.disableReusing();
                        Composer m1376constructorimpl = Updater.m1376constructorimpl(composer3);
                        Updater.m1383setimpl(m1376constructorimpl, exposedDropdownMenuPopupKt$SimpleStack$1, companion.getSetMeasurePolicy());
                        Updater.m1383setimpl(m1376constructorimpl, density2, companion.getSetDensity());
                        Updater.m1383setimpl(m1376constructorimpl, layoutDirection3, companion.getSetLayoutDirection());
                        Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
                        composer3.enableReusing();
                        materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(composer3)), composer3, 0);
                        composer3.startReplaceableGroup(2058660585);
                        composableLambda.invoke(composer3, 6);
                        composer3.endReplaceableGroup();
                        composer3.endNode();
                        composer3.endReplaceableGroup();
                        composer3.endReplaceableGroup();
                    }
                }));
                composer2.updateRememberedValue(popupLayout2);
                popupLayout = popupLayout2;
            } else {
                layoutDirection = layoutDirection2;
                str = str2;
                function04 = function03;
                i16 = i18;
                composer2 = startRestartGroup;
                popupLayout = rememberedValue;
            }
            composer2.endReplaceableGroup();
            final PopupLayout popupLayout3 = (PopupLayout) popupLayout;
            EffectsKt.DisposableEffect(popupLayout3, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                    Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                    PopupLayout.this.show();
                    PopupLayout.this.updateParameters(function04, str, layoutDirection);
                    final PopupLayout popupLayout4 = PopupLayout.this;
                    return new DisposableEffectResult() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$1$invoke$$inlined$onDispose$1
                        @Override // androidx.compose.runtime.DisposableEffectResult
                        public void dispose() {
                            PopupLayout.this.disposeComposition();
                            PopupLayout.this.dismiss();
                        }
                    };
                }
            }, composer2, 8);
            EffectsKt.SideEffect(new Function0<Unit>() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                    PopupLayout.this.updateParameters(function04, str, layoutDirection);
                }
            }, composer2, 0);
            EffectsKt.DisposableEffect(popupPositionProvider, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                    Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                    PopupLayout.this.setPositionProvider(popupPositionProvider);
                    PopupLayout.this.updatePosition();
                    return new DisposableEffectResult() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3$invoke$$inlined$onDispose$1
                        @Override // androidx.compose.runtime.DisposableEffectResult
                        public void dispose() {
                        }
                    };
                }
            }, composer2, (i16 >> 3) & 14);
            Modifier onGloballyPositioned = OnGloballyPositionedModifierKt.onGloballyPositioned(Modifier.Companion, new Function1<LayoutCoordinates, Unit>() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$5
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(LayoutCoordinates layoutCoordinates) {
                    invoke2(layoutCoordinates);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull LayoutCoordinates childCoordinates) {
                    Intrinsics.checkNotNullParameter(childCoordinates, "childCoordinates");
                    LayoutCoordinates parentLayoutCoordinates = childCoordinates.getParentLayoutCoordinates();
                    Intrinsics.checkNotNull(parentLayoutCoordinates);
                    long mo3337getSizeYbymL2g = parentLayoutCoordinates.mo3337getSizeYbymL2g();
                    long positionInWindow = LayoutCoordinatesKt.positionInWindow(parentLayoutCoordinates);
                    PopupLayout.this.setParentBounds(IntRectKt.m4199IntRectVbeCjmY(IntOffsetKt.IntOffset(a.c(Offset.m1606getXimpl(positionInWindow)), a.c(Offset.m1607getYimpl(positionInWindow))), mo3337getSizeYbymL2g));
                    PopupLayout.this.updatePosition();
                }
            });
            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$6
                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                /* renamed from: measure-3p2s80s */
                public final MeasureResult mo42measure3p2s80s(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> list, long j10) {
                    Intrinsics.checkNotNullParameter(Layout, "$this$Layout");
                    Intrinsics.checkNotNullParameter(list, "<anonymous parameter 0>");
                    PopupLayout.this.setParentLayoutDirection(layoutDirection);
                    return MeasureScope.layout$default(Layout, 0, 0, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$6$measure$1
                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                            Intrinsics.checkNotNullParameter(layout, "$this$layout");
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                            invoke2(placementScope);
                            return Unit.f60915a;
                        }
                    }, 4, null);
                }
            };
            composer2.startReplaceableGroup(-1323940314);
            Density density2 = (Density) composer2.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection3 = (LayoutDirection) composer2.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composer2.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(onGloballyPositioned);
            if (composer2.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composer2.startReusableNode();
            if (composer2.getInserting()) {
                composer2.createNode(constructor);
            } else {
                composer2.useNode();
            }
            composer2.disableReusing();
            Composer m1376constructorimpl = Updater.m1376constructorimpl(composer2);
            Updater.m1383setimpl(m1376constructorimpl, measurePolicy, companion.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density2, companion.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection3, companion.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
            composer2.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(composer2)), composer2, 0);
            composer2.startReplaceableGroup(2058660585);
            composer2.startReplaceableGroup(-261830998);
            composer2.endReplaceableGroup();
            composer2.endReplaceableGroup();
            composer2.endNode();
            composer2.endReplaceableGroup();
            function02 = function04;
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$7
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer3, int i19) {
                    ExposedDropdownMenuPopupKt.ExposedDropdownMenuPopup(function02, popupPositionProvider, content, composer3, i10 | 1, i11);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ExposedDropdownMenuPopup$lambda-0  reason: not valid java name */
    public static final Function2<Composer, Integer, Unit> m1274ExposedDropdownMenuPopup$lambda0(State<? extends Function2<? super Composer, ? super Integer, Unit>> state) {
        return (Function2) state.getValue();
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    private static final void SimpleStack(Modifier modifier, Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, int i10) {
        composer.startReplaceableGroup(1769324208);
        ExposedDropdownMenuPopupKt$SimpleStack$1 exposedDropdownMenuPopupKt$SimpleStack$1 = ExposedDropdownMenuPopupKt$SimpleStack$1.INSTANCE;
        composer.startReplaceableGroup(-1323940314);
        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        LayoutDirection layoutDirection = (LayoutDirection) composer.consume(CompositionLocalsKt.getLocalLayoutDirection());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.consume(CompositionLocalsKt.getLocalViewConfiguration());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        Function0<ComposeUiNode> constructor = companion.getConstructor();
        n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(modifier);
        int i11 = (((((i10 << 3) & 112) | ((i10 >> 3) & 14)) << 9) & 7168) | 6;
        if (composer.getApplier() == null) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(constructor);
        } else {
            composer.useNode();
        }
        composer.disableReusing();
        Composer m1376constructorimpl = Updater.m1376constructorimpl(composer);
        Updater.m1383setimpl(m1376constructorimpl, exposedDropdownMenuPopupKt$SimpleStack$1, companion.getSetMeasurePolicy());
        Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
        Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
        Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
        composer.enableReusing();
        materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(composer)), composer, 0);
        composer.startReplaceableGroup(2058660585);
        function2.invoke(composer, Integer.valueOf((i11 >> 9) & 14));
        composer.endReplaceableGroup();
        composer.endNode();
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
    }

    @NotNull
    public static final ProvidableCompositionLocal<String> getLocalPopupTestTag() {
        return LocalPopupTestTag;
    }
}
