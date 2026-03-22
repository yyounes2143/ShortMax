package androidx.compose.ui.layout;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.UiComposable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubcomposeLayout.kt */
@Metadata
/* loaded from: classes.dex */
public final class SubcomposeLayoutKt {
    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void SubcomposeLayout(@Nullable final Modifier modifier, @NotNull final Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> measurePolicy, @Nullable Composer composer, final int i10, final int i11) {
        int i12;
        Intrinsics.checkNotNullParameter(measurePolicy, "measurePolicy");
        Composer startRestartGroup = composer.startRestartGroup(-1298353104);
        int i13 = i11 & 1;
        if (i13 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (startRestartGroup.changed(modifier) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= startRestartGroup.changed(measurePolicy) ? 32 : 16;
        }
        if ((i12 & 91) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (i13 != 0) {
                modifier = Modifier.Companion;
            }
            startRestartGroup.startReplaceableGroup(-492369756);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new SubcomposeLayoutState();
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            int i14 = i12 << 3;
            SubcomposeLayout((SubcomposeLayoutState) rememberedValue, modifier, measurePolicy, startRestartGroup, (i14 & 112) | 8 | (i14 & 896), 0);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$2
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
                SubcomposeLayoutKt.SubcomposeLayout(Modifier.this, measurePolicy, composer2, i10 | 1, i11);
            }
        });
    }

    @NotNull
    public static final SubcomposeSlotReusePolicy SubcomposeSlotReusePolicy(int i10) {
        return new FixedCountSubcomposeSlotReusePolicy(i10);
    }

    @Composable
    @UiComposable
    public static final void SubcomposeLayout(@NotNull final SubcomposeLayoutState state, @Nullable Modifier modifier, @NotNull final Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> measurePolicy, @Nullable Composer composer, final int i10, final int i11) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(measurePolicy, "measurePolicy");
        Composer startRestartGroup = composer.startRestartGroup(-511989831);
        if ((i11 & 2) != 0) {
            modifier = Modifier.Companion;
        }
        final Modifier modifier2 = modifier;
        CompositionContext rememberCompositionContext = ComposablesKt.rememberCompositionContext(startRestartGroup, 0);
        Modifier materialize = ComposedModifierKt.materialize(startRestartGroup, modifier2);
        Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
        LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
        ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
        final Function0<LayoutNode> constructor$ui_release = LayoutNode.Companion.getConstructor$ui_release();
        startRestartGroup.startReplaceableGroup(1886828752);
        if (startRestartGroup.getApplier() == null) {
            ComposablesKt.invalidApplier();
        }
        startRestartGroup.startNode();
        if (startRestartGroup.getInserting()) {
            startRestartGroup.createNode(new Function0<LayoutNode>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$$inlined$ComposeNode$1
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.ui.node.LayoutNode, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final LayoutNode invoke() {
                    return Function0.this.invoke();
                }
            });
        } else {
            startRestartGroup.useNode();
        }
        Composer m1376constructorimpl = Updater.m1376constructorimpl(startRestartGroup);
        Updater.m1383setimpl(m1376constructorimpl, state, state.getSetRoot$ui_release());
        Updater.m1383setimpl(m1376constructorimpl, rememberCompositionContext, state.getSetCompositionContext$ui_release());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        Updater.m1383setimpl(m1376constructorimpl, materialize, companion.getSetModifier());
        Updater.m1383setimpl(m1376constructorimpl, measurePolicy, state.getSetMeasurePolicy$ui_release());
        Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
        Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
        Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
        startRestartGroup.endNode();
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.startReplaceableGroup(-607848778);
        if (!startRestartGroup.getSkipping()) {
            EffectsKt.SideEffect(new Function0<Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$4
                /* JADX INFO: Access modifiers changed from: package-private */
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
                    SubcomposeLayoutState.this.forceRecomposeChildren$ui_release();
                }
            }, startRestartGroup, 0);
        }
        startRestartGroup.endReplaceableGroup();
        final State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(state, startRestartGroup, 8);
        Unit unit = Unit.f60915a;
        startRestartGroup.startReplaceableGroup(1157296644);
        boolean changed = startRestartGroup.changed(rememberUpdatedState);
        Object rememberedValue = startRestartGroup.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$5$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                    Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                    final State<SubcomposeLayoutState> state2 = rememberUpdatedState;
                    return new DisposableEffectResult() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$5$1$invoke$$inlined$onDispose$1
                        @Override // androidx.compose.runtime.DisposableEffectResult
                        public void dispose() {
                            ((SubcomposeLayoutState) State.this.getValue()).disposeCurrentNodes$ui_release();
                        }
                    };
                }
            };
            startRestartGroup.updateRememberedValue(rememberedValue);
        }
        startRestartGroup.endReplaceableGroup();
        EffectsKt.DisposableEffect(unit, (Function1) rememberedValue, startRestartGroup, 0);
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$6
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

            public final void invoke(@Nullable Composer composer2, int i12) {
                SubcomposeLayoutKt.SubcomposeLayout(SubcomposeLayoutState.this, modifier2, measurePolicy, composer2, i10 | 1, i11);
            }
        });
    }
}
