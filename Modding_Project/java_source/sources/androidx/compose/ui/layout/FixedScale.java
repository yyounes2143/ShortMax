package androidx.compose.ui.layout;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContentScale.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class FixedScale implements ContentScale {
    private final float value;

    public FixedScale(float f10) {
        this.value = f10;
    }

    public static /* synthetic */ FixedScale copy$default(FixedScale fixedScale, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = fixedScale.value;
        }
        return fixedScale.copy(f10);
    }

    public final float component1() {
        return this.value;
    }

    @Override // androidx.compose.ui.layout.ContentScale
    /* renamed from: computeScaleFactor-H7hwNQA */
    public long mo3326computeScaleFactorH7hwNQA(long j10, long j11) {
        float f10 = this.value;
        return ScaleFactorKt.ScaleFactor(f10, f10);
    }

    @NotNull
    public final FixedScale copy(float f10) {
        return new FixedScale(f10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof FixedScale) && Intrinsics.areEqual((Object) Float.valueOf(this.value), (Object) Float.valueOf(((FixedScale) obj).value))) {
            return true;
        }
        return false;
    }

    public final float getValue() {
        return this.value;
    }

    public int hashCode() {
        return Float.hashCode(this.value);
    }

    @NotNull
    public String toString() {
        return "FixedScale(value=" + this.value + ')';
    }
}
