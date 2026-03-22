package androidx.compose.ui.platform;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.MotionDurationScale;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WindowRecomposer.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class MotionDurationScaleImpl implements MotionDurationScale {
    @NotNull
    private final MutableState scaleFactor$delegate;

    public MotionDurationScaleImpl() {
        MutableState mutableStateOf$default;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(1.0f), null, 2, null);
        this.scaleFactor$delegate = mutableStateOf$default;
    }

    @Override // androidx.compose.ui.MotionDurationScale, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) MotionDurationScale.DefaultImpls.fold(this, r10, function2);
    }

    @Override // androidx.compose.ui.MotionDurationScale, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.b<E> bVar) {
        return (E) MotionDurationScale.DefaultImpls.get(this, bVar);
    }

    @Override // androidx.compose.ui.MotionDurationScale
    public float getScaleFactor() {
        return ((Number) this.scaleFactor$delegate.getValue()).floatValue();
    }

    @Override // androidx.compose.ui.MotionDurationScale, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.b<?> bVar) {
        return MotionDurationScale.DefaultImpls.minusKey(this, bVar);
    }

    @Override // androidx.compose.ui.MotionDurationScale, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return MotionDurationScale.DefaultImpls.plus(this, coroutineContext);
    }

    public void setScaleFactor(float f10) {
        this.scaleFactor$delegate.setValue(Float.valueOf(f10));
    }
}
