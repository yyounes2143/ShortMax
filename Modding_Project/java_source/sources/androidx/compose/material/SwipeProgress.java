package androidx.compose.material;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Swipeable.kt */
@Immutable
@Metadata
@ExperimentalMaterialApi
/* loaded from: classes.dex */
public final class SwipeProgress<T> {
    private final float fraction;
    private final T from;

    /* renamed from: to  reason: collision with root package name */
    private final T f905to;

    public SwipeProgress(T t10, T t11, float f10) {
        this.from = t10;
        this.f905to = t11;
        this.fraction = f10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SwipeProgress)) {
            return false;
        }
        SwipeProgress swipeProgress = (SwipeProgress) obj;
        if (Intrinsics.areEqual(this.from, swipeProgress.from) && Intrinsics.areEqual(this.f905to, swipeProgress.f905to) && this.fraction == swipeProgress.fraction) {
            return true;
        }
        return false;
    }

    public final float getFraction() {
        return this.fraction;
    }

    public final T getFrom() {
        return this.from;
    }

    public final T getTo() {
        return this.f905to;
    }

    public int hashCode() {
        int i10;
        T t10 = this.from;
        int i11 = 0;
        if (t10 != null) {
            i10 = t10.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        T t11 = this.f905to;
        if (t11 != null) {
            i11 = t11.hashCode();
        }
        return ((i12 + i11) * 31) + Float.hashCode(this.fraction);
    }

    @NotNull
    public String toString() {
        return "SwipeProgress(from=" + this.from + ", to=" + this.f905to + ", fraction=" + this.fraction + ')';
    }
}
