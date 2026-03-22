package androidx.compose.ui.node;

import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: OwnerSnapshotObserver.kt */
@Metadata
/* loaded from: classes.dex */
public final class OwnerSnapshotObserver {
    @NotNull
    private final SnapshotStateObserver observer;
    @NotNull
    private final Function1<LayoutNode, Unit> onCommitAffectingLayout;
    @NotNull
    private final Function1<LayoutNode, Unit> onCommitAffectingLayoutModifier;
    @NotNull
    private final Function1<LayoutNode, Unit> onCommitAffectingMeasure;

    public OwnerSnapshotObserver(@NotNull Function1<? super Function0<Unit>, Unit> onChangedExecutor) {
        Intrinsics.checkNotNullParameter(onChangedExecutor, "onChangedExecutor");
        this.observer = new SnapshotStateObserver(onChangedExecutor);
        this.onCommitAffectingMeasure = new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingMeasure$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode) {
                invoke2(layoutNode);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull LayoutNode layoutNode) {
                Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
                if (layoutNode.isValid()) {
                    LayoutNode.requestRemeasure$ui_release$default(layoutNode, false, 1, null);
                }
            }
        };
        this.onCommitAffectingLayout = new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode) {
                invoke2(layoutNode);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull LayoutNode layoutNode) {
                Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
                if (layoutNode.isValid()) {
                    LayoutNode.requestRelayout$ui_release$default(layoutNode, false, 1, null);
                }
            }
        };
        this.onCommitAffectingLayoutModifier = new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayoutModifier$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode) {
                invoke2(layoutNode);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull LayoutNode layoutNode) {
                Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
                if (layoutNode.isValid()) {
                    LayoutNode.requestRelayout$ui_release$default(layoutNode, false, 1, null);
                }
            }
        };
    }

    public final void clear$ui_release(@NotNull Object target) {
        Intrinsics.checkNotNullParameter(target, "target");
        this.observer.clear(target);
    }

    public final void clearInvalidObservations$ui_release() {
        this.observer.clearIf(new Function1<Object, Boolean>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$clearInvalidObservations$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(!((OwnerScope) it).isValid());
            }
        });
    }

    public final void observeLayoutModifierSnapshotReads$ui_release(@NotNull LayoutNode node, @NotNull Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(node, "node");
        Intrinsics.checkNotNullParameter(block, "block");
        observeReads$ui_release(node, this.onCommitAffectingLayoutModifier, block);
    }

    public final void observeLayoutSnapshotReads$ui_release(@NotNull LayoutNode node, @NotNull Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(node, "node");
        Intrinsics.checkNotNullParameter(block, "block");
        observeReads$ui_release(node, this.onCommitAffectingLayout, block);
    }

    public final void observeMeasureSnapshotReads$ui_release(@NotNull LayoutNode node, @NotNull Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(node, "node");
        Intrinsics.checkNotNullParameter(block, "block");
        observeReads$ui_release(node, this.onCommitAffectingMeasure, block);
    }

    public final <T extends OwnerScope> void observeReads$ui_release(@NotNull T target, @NotNull Function1<? super T, Unit> onChanged, @NotNull Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(onChanged, "onChanged");
        Intrinsics.checkNotNullParameter(block, "block");
        this.observer.observeReads(target, onChanged, block);
    }

    public final void startObserving$ui_release() {
        this.observer.start();
    }

    public final void stopObserving$ui_release() {
        this.observer.stop();
        this.observer.clear();
    }
}
