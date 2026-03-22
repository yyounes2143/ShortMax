package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Crossfade.kt */
@Metadata
/* loaded from: classes.dex */
public final class CrossfadeKt$Crossfade$4$1 extends Lambda implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ FiniteAnimationSpec<Float> $animationSpec;
    final /* synthetic */ n<T, Composer, Integer, Unit> $content;
    final /* synthetic */ T $stateForContent;
    final /* synthetic */ Transition<T> $this_Crossfade;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CrossfadeKt$Crossfade$4$1(Transition<T> transition, int i10, FiniteAnimationSpec<Float> finiteAnimationSpec, T t10, n<? super T, ? super Composer, ? super Integer, Unit> nVar) {
        super(2);
        this.$this_Crossfade = transition;
        this.$$dirty = i10;
        this.$animationSpec = finiteAnimationSpec;
        this.$stateForContent = t10;
        this.$content = nVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-1  reason: not valid java name */
    public static final float m76invoke$lambda1(State<Float> state) {
        return state.getValue().floatValue();
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
        Transition<T> transition = this.$this_Crossfade;
        final FiniteAnimationSpec<Float> finiteAnimationSpec = this.$animationSpec;
        n<Transition.Segment<T>, Composer, Integer, FiniteAnimationSpec<Float>> nVar = new n<Transition.Segment<T>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$4$1$alpha$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ FiniteAnimationSpec<Float> invoke(Object obj, Composer composer2, Integer num) {
                return invoke((Transition.Segment) obj, composer2, num.intValue());
            }

            @Composable
            @NotNull
            public final FiniteAnimationSpec<Float> invoke(@NotNull Transition.Segment<T> animateFloat, @Nullable Composer composer2, int i11) {
                Intrinsics.checkNotNullParameter(animateFloat, "$this$animateFloat");
                composer2.startReplaceableGroup(438406499);
                FiniteAnimationSpec<Float> finiteAnimationSpec2 = finiteAnimationSpec;
                composer2.endReplaceableGroup();
                return finiteAnimationSpec2;
            }
        };
        T t10 = this.$stateForContent;
        int i11 = this.$$dirty;
        composer.startReplaceableGroup(-1338768149);
        TwoWayConverter<Float, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
        composer.startReplaceableGroup(-142660079);
        Object currentState = transition.getCurrentState();
        composer.startReplaceableGroup(-438678252);
        float f10 = Intrinsics.areEqual(currentState, t10) ? 1.0f : 0.0f;
        composer.endReplaceableGroup();
        Float valueOf = Float.valueOf(f10);
        Object targetState = transition.getTargetState();
        composer.startReplaceableGroup(-438678252);
        float f11 = Intrinsics.areEqual(targetState, t10) ? 1.0f : 0.0f;
        composer.endReplaceableGroup();
        final State createTransitionAnimation = androidx.compose.animation.core.TransitionKt.createTransitionAnimation(transition, valueOf, Float.valueOf(f11), nVar.invoke(transition.getSegment(), composer, 0), vectorConverter, "FloatAnimation", composer, i11 & 14);
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        Modifier.Companion companion = Modifier.Companion;
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(createTransitionAnimation);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$4$1$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(GraphicsLayerScope graphicsLayerScope) {
                    invoke2(graphicsLayerScope);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull GraphicsLayerScope graphicsLayer) {
                    float m76invoke$lambda1;
                    Intrinsics.checkNotNullParameter(graphicsLayer, "$this$graphicsLayer");
                    m76invoke$lambda1 = CrossfadeKt$Crossfade$4$1.m76invoke$lambda1(createTransitionAnimation);
                    graphicsLayer.setAlpha(m76invoke$lambda1);
                }
            };
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        Modifier graphicsLayer = GraphicsLayerModifierKt.graphicsLayer(companion, (Function1) rememberedValue);
        n<T, Composer, Integer, Unit> nVar2 = this.$content;
        T t11 = this.$stateForContent;
        int i12 = this.$$dirty;
        composer.startReplaceableGroup(-1990474327);
        MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.Companion.getTopStart(), false, composer, 0);
        composer.startReplaceableGroup(1376089335);
        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        LayoutDirection layoutDirection = (LayoutDirection) composer.consume(CompositionLocalsKt.getLocalLayoutDirection());
        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
        Function0<ComposeUiNode> constructor = companion2.getConstructor();
        n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(graphicsLayer);
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
        Updater.m1383setimpl(m1376constructorimpl, rememberBoxMeasurePolicy, companion2.getSetMeasurePolicy());
        Updater.m1383setimpl(m1376constructorimpl, density, companion2.getSetDensity());
        Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion2.getSetLayoutDirection());
        composer.enableReusing();
        materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(composer)), composer, 0);
        composer.startReplaceableGroup(2058660585);
        composer.startReplaceableGroup(-1253629305);
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
        composer.startReplaceableGroup(-222715758);
        nVar2.invoke(t11, composer, Integer.valueOf((i12 >> 9) & 112));
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        composer.endNode();
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
    }
}
