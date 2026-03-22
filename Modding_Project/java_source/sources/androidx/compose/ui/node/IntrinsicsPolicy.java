package androidx.compose.ui.node;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.layout.MeasurePolicy;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IntrinsicsPolicy.kt */
@Metadata
/* loaded from: classes.dex */
public final class IntrinsicsPolicy {
    @NotNull
    private static final Companion Companion = new Companion(null);
    @Deprecated
    @NotNull
    private static final String NoPolicyError = "Intrinsic size is queried but there is no measure policy in place.";
    @NotNull
    private final LayoutNode layoutNode;
    @Nullable
    private MutableState<MeasurePolicy> measurePolicyState;
    @Nullable
    private MeasurePolicy pendingMeasurePolicy;

    /* compiled from: IntrinsicsPolicy.kt */
    @Metadata
    /* loaded from: classes.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public IntrinsicsPolicy(@NotNull LayoutNode layoutNode) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        this.layoutNode = layoutNode;
    }

    private final MeasurePolicy measurePolicyFromState() {
        MutableState<MeasurePolicy> mutableState = this.measurePolicyState;
        if (mutableState == null) {
            MeasurePolicy measurePolicy = this.pendingMeasurePolicy;
            if (measurePolicy != null) {
                mutableState = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(measurePolicy, null, 2, null);
            } else {
                throw new IllegalStateException(NoPolicyError);
            }
        }
        this.measurePolicyState = mutableState;
        return mutableState.getValue();
    }

    @NotNull
    public final LayoutNode getLayoutNode() {
        return this.layoutNode;
    }

    public final int maxIntrinsicHeight(int i10) {
        return measurePolicyFromState().maxIntrinsicHeight(this.layoutNode.getMeasureScope$ui_release(), this.layoutNode.getChildren$ui_release(), i10);
    }

    public final int maxIntrinsicWidth(int i10) {
        return measurePolicyFromState().maxIntrinsicWidth(this.layoutNode.getMeasureScope$ui_release(), this.layoutNode.getChildren$ui_release(), i10);
    }

    public final int minIntrinsicHeight(int i10) {
        return measurePolicyFromState().minIntrinsicHeight(this.layoutNode.getMeasureScope$ui_release(), this.layoutNode.getChildren$ui_release(), i10);
    }

    public final int minIntrinsicWidth(int i10) {
        return measurePolicyFromState().minIntrinsicWidth(this.layoutNode.getMeasureScope$ui_release(), this.layoutNode.getChildren$ui_release(), i10);
    }

    public final void updateFrom(@NotNull MeasurePolicy measurePolicy) {
        Intrinsics.checkNotNullParameter(measurePolicy, "measurePolicy");
        MutableState<MeasurePolicy> mutableState = this.measurePolicyState;
        if (mutableState != null) {
            Intrinsics.checkNotNull(mutableState);
            mutableState.setValue(measurePolicy);
            return;
        }
        this.pendingMeasurePolicy = measurePolicy;
    }
}
