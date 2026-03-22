package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: TransformableState.kt */
@Metadata
/* loaded from: classes.dex */
final class DefaultTransformableState implements TransformableState {
    @NotNull
    private final MutableState<Boolean> isTransformingState;
    @NotNull
    private final n<Float, Offset, Float, Unit> onTransformation;
    @NotNull
    private final MutatorMutex transformMutex;
    @NotNull
    private final TransformScope transformScope;

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultTransformableState(@NotNull n<? super Float, ? super Offset, ? super Float, Unit> onTransformation) {
        MutableState<Boolean> mutableStateOf$default;
        Intrinsics.checkNotNullParameter(onTransformation, "onTransformation");
        this.onTransformation = onTransformation;
        this.transformScope = new TransformScope() { // from class: androidx.compose.foundation.gestures.DefaultTransformableState$transformScope$1
            @Override // androidx.compose.foundation.gestures.TransformScope
            /* renamed from: transformBy-d-4ec7I  reason: not valid java name */
            public void mo276transformByd4ec7I(float f10, long j10, float f11) {
                DefaultTransformableState.this.getOnTransformation().invoke(Float.valueOf(f10), Offset.m1595boximpl(j10), Float.valueOf(f11));
            }
        };
        this.transformMutex = new MutatorMutex();
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
        this.isTransformingState = mutableStateOf$default;
    }

    @NotNull
    public final n<Float, Offset, Float, Unit> getOnTransformation() {
        return this.onTransformation;
    }

    @Override // androidx.compose.foundation.gestures.TransformableState
    public boolean isTransformInProgress() {
        return this.isTransformingState.getValue().booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.TransformableState
    @Nullable
    public Object transform(@NotNull MutatePriority mutatePriority, @NotNull Function2<? super TransformScope, ? super c<? super Unit>, ? extends Object> function2, @NotNull c<? super Unit> cVar) {
        Object f10 = i.f(new DefaultTransformableState$transform$2(this, mutatePriority, function2, null), cVar);
        if (f10 == a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }
}
