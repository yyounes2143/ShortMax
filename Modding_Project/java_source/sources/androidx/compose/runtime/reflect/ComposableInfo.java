package androidx.compose.runtime.reflect;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComposableMethod.jvm.kt */
@StabilityInferred(parameters = 1)
@Metadata
/* loaded from: classes.dex */
public final class ComposableInfo {
    public static final int $stable = 0;
    private final int changedParams;
    private final int defaultParams;
    private final boolean isComposable;
    private final int realParamsCount;

    public ComposableInfo(boolean z10, int i10, int i11, int i12) {
        this.isComposable = z10;
        this.realParamsCount = i10;
        this.changedParams = i11;
        this.defaultParams = i12;
    }

    public static /* synthetic */ ComposableInfo copy$default(ComposableInfo composableInfo, boolean z10, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            z10 = composableInfo.isComposable;
        }
        if ((i13 & 2) != 0) {
            i10 = composableInfo.realParamsCount;
        }
        if ((i13 & 4) != 0) {
            i11 = composableInfo.changedParams;
        }
        if ((i13 & 8) != 0) {
            i12 = composableInfo.defaultParams;
        }
        return composableInfo.copy(z10, i10, i11, i12);
    }

    public final boolean component1() {
        return this.isComposable;
    }

    public final int component2() {
        return this.realParamsCount;
    }

    public final int component3() {
        return this.changedParams;
    }

    public final int component4() {
        return this.defaultParams;
    }

    @NotNull
    public final ComposableInfo copy(boolean z10, int i10, int i11, int i12) {
        return new ComposableInfo(z10, i10, i11, i12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ComposableInfo)) {
            return false;
        }
        ComposableInfo composableInfo = (ComposableInfo) obj;
        if (this.isComposable == composableInfo.isComposable && this.realParamsCount == composableInfo.realParamsCount && this.changedParams == composableInfo.changedParams && this.defaultParams == composableInfo.defaultParams) {
            return true;
        }
        return false;
    }

    public final int getChangedParams() {
        return this.changedParams;
    }

    public final int getDefaultParams() {
        return this.defaultParams;
    }

    public final int getRealParamsCount() {
        return this.realParamsCount;
    }

    public int hashCode() {
        return (((((Boolean.hashCode(this.isComposable) * 31) + Integer.hashCode(this.realParamsCount)) * 31) + Integer.hashCode(this.changedParams)) * 31) + Integer.hashCode(this.defaultParams);
    }

    public final boolean isComposable() {
        return this.isComposable;
    }

    @NotNull
    public String toString() {
        return "ComposableInfo(isComposable=" + this.isComposable + ", realParamsCount=" + this.realParamsCount + ", changedParams=" + this.changedParams + ", defaultParams=" + this.defaultParams + ')';
    }
}
