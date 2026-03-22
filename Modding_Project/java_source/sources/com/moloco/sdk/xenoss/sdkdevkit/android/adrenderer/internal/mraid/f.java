package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.k0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class f {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final k0 f34282a;

    public f() {
        this(null, 1, null);
    }

    @NotNull
    public final f a(@Nullable k0 k0Var) {
        return new f(k0Var);
    }

    @Nullable
    public final k0 b() {
        return this.f34282a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof f) && Intrinsics.areEqual(this.f34282a, ((f) obj).f34282a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        k0 k0Var = this.f34282a;
        if (k0Var == null) {
            return 0;
        }
        return k0Var.hashCode();
    }

    @NotNull
    public String toString() {
        return "MraidAdData(dec=" + this.f34282a + ')';
    }

    public f(@Nullable k0 k0Var) {
        this.f34282a = k0Var;
    }

    public /* synthetic */ f(k0 k0Var, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : k0Var);
    }
}
