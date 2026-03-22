package androidx.compose.ui.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubcomposeLayout.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class SubcomposeLayoutState {
    public static final int $stable = 8;
    @Nullable
    private LayoutNodeSubcompositionsState _state;
    @NotNull
    private final Function2<LayoutNode, CompositionContext, Unit> setCompositionContext;
    @NotNull
    private final Function2<LayoutNode, Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult>, Unit> setMeasurePolicy;
    @NotNull
    private final Function2<LayoutNode, SubcomposeLayoutState, Unit> setRoot;
    @NotNull
    private final SubcomposeSlotReusePolicy slotReusePolicy;

    public SubcomposeLayoutState(@NotNull SubcomposeSlotReusePolicy slotReusePolicy) {
        Intrinsics.checkNotNullParameter(slotReusePolicy, "slotReusePolicy");
        this.slotReusePolicy = slotReusePolicy;
        this.setRoot = new Function2<LayoutNode, SubcomposeLayoutState, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setRoot$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode, SubcomposeLayoutState subcomposeLayoutState) {
                invoke2(layoutNode, subcomposeLayoutState);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull LayoutNode layoutNode, @NotNull SubcomposeLayoutState it) {
                LayoutNodeSubcompositionsState state;
                LayoutNodeSubcompositionsState state2;
                SubcomposeSlotReusePolicy subcomposeSlotReusePolicy;
                SubcomposeSlotReusePolicy subcomposeSlotReusePolicy2;
                Intrinsics.checkNotNullParameter(layoutNode, "$this$null");
                Intrinsics.checkNotNullParameter(it, "it");
                SubcomposeLayoutState subcomposeLayoutState = SubcomposeLayoutState.this;
                LayoutNodeSubcompositionsState subcompositionsState$ui_release = layoutNode.getSubcompositionsState$ui_release();
                if (subcompositionsState$ui_release == null) {
                    subcomposeSlotReusePolicy2 = SubcomposeLayoutState.this.slotReusePolicy;
                    subcompositionsState$ui_release = new LayoutNodeSubcompositionsState(layoutNode, subcomposeSlotReusePolicy2);
                    layoutNode.setSubcompositionsState$ui_release(subcompositionsState$ui_release);
                }
                subcomposeLayoutState._state = subcompositionsState$ui_release;
                state = SubcomposeLayoutState.this.getState();
                state.makeSureStateIsConsistent();
                state2 = SubcomposeLayoutState.this.getState();
                subcomposeSlotReusePolicy = SubcomposeLayoutState.this.slotReusePolicy;
                state2.setSlotReusePolicy(subcomposeSlotReusePolicy);
            }
        };
        this.setCompositionContext = new Function2<LayoutNode, CompositionContext, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setCompositionContext$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode, CompositionContext compositionContext) {
                invoke2(layoutNode, compositionContext);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull LayoutNode layoutNode, @NotNull CompositionContext it) {
                LayoutNodeSubcompositionsState state;
                Intrinsics.checkNotNullParameter(layoutNode, "$this$null");
                Intrinsics.checkNotNullParameter(it, "it");
                state = SubcomposeLayoutState.this.getState();
                state.setCompositionContext(it);
            }
        };
        this.setMeasurePolicy = new Function2<LayoutNode, Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult>, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setMeasurePolicy$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode, Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> function2) {
                invoke2(layoutNode, function2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull LayoutNode layoutNode, @NotNull Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> it) {
                LayoutNodeSubcompositionsState state;
                Intrinsics.checkNotNullParameter(layoutNode, "$this$null");
                Intrinsics.checkNotNullParameter(it, "it");
                state = SubcomposeLayoutState.this.getState();
                layoutNode.setMeasurePolicy(state.createMeasurePolicy(it));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LayoutNodeSubcompositionsState getState() {
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this._state;
        if (layoutNodeSubcompositionsState != null) {
            return layoutNodeSubcompositionsState;
        }
        throw new IllegalArgumentException("SubcomposeLayoutState is not attached to SubcomposeLayout");
    }

    public final void disposeCurrentNodes$ui_release() {
        getState().disposeCurrentNodes();
    }

    public final void forceRecomposeChildren$ui_release() {
        getState().forceRecomposeChildren();
    }

    @NotNull
    public final Function2<LayoutNode, CompositionContext, Unit> getSetCompositionContext$ui_release() {
        return this.setCompositionContext;
    }

    @NotNull
    public final Function2<LayoutNode, Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult>, Unit> getSetMeasurePolicy$ui_release() {
        return this.setMeasurePolicy;
    }

    @NotNull
    public final Function2<LayoutNode, SubcomposeLayoutState, Unit> getSetRoot$ui_release() {
        return this.setRoot;
    }

    @NotNull
    public final PrecomposedSlotHandle precompose(@Nullable Object obj, @NotNull Function2<? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        return getState().precompose(obj, content);
    }

    public SubcomposeLayoutState() {
        this(NoOpSubcomposeSlotReusePolicy.INSTANCE);
    }

    @c
    public SubcomposeLayoutState(int i10) {
        this(SubcomposeLayoutKt.SubcomposeSlotReusePolicy(i10));
    }

    /* compiled from: SubcomposeLayout.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface PrecomposedSlotHandle {
        void dispose();

        default int getPlaceablesCount() {
            return 0;
        }

        /* renamed from: premeasure-0kLqBqw */
        default void mo3344premeasure0kLqBqw(int i10, long j10) {
        }
    }
}
