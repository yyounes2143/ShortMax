package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: LazyListItemPlacementAnimator.kt */
@Metadata
/* loaded from: classes.dex */
final class PlaceableInfo {
    @NotNull
    private final Animatable<IntOffset, AnimationVector2D> animatedOffset;
    @NotNull
    private final MutableState inProgress$delegate;
    private int size;
    private long targetOffset;

    public /* synthetic */ PlaceableInfo(long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, i10);
    }

    @NotNull
    public final Animatable<IntOffset, AnimationVector2D> getAnimatedOffset() {
        return this.animatedOffset;
    }

    public final boolean getInProgress() {
        return ((Boolean) this.inProgress$delegate.getValue()).booleanValue();
    }

    public final int getSize() {
        return this.size;
    }

    /* renamed from: getTargetOffset-nOcc-ac  reason: not valid java name */
    public final long m579getTargetOffsetnOccac() {
        return this.targetOffset;
    }

    public final void setInProgress(boolean z10) {
        this.inProgress$delegate.setValue(Boolean.valueOf(z10));
    }

    public final void setSize(int i10) {
        this.size = i10;
    }

    /* renamed from: setTargetOffset--gyyYBs  reason: not valid java name */
    public final void m580setTargetOffsetgyyYBs(long j10) {
        this.targetOffset = j10;
    }

    private PlaceableInfo(long j10, int i10) {
        MutableState mutableStateOf$default;
        this.size = i10;
        this.animatedOffset = new Animatable<>(IntOffset.m4158boximpl(j10), VectorConvertersKt.getVectorConverter(IntOffset.Companion), null, 4, null);
        this.targetOffset = j10;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
        this.inProgress$delegate = mutableStateOf$default;
    }
}
