package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media;

import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public final int f34189a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f34190b;

    /* renamed from: c  reason: collision with root package name */
    public final double f34191c;

    /* renamed from: d  reason: collision with root package name */
    public final int f34192d;

    public o(int i10, boolean z10, double d10, int i11) {
        this.f34189a = i10;
        this.f34190b = z10;
        this.f34191c = d10;
        this.f34192d = i11;
    }

    public final int a() {
        return this.f34189a;
    }

    public final int b() {
        return this.f34192d;
    }

    public final double c() {
        return this.f34191c;
    }

    public final boolean d() {
        return this.f34190b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (this.f34189a == oVar.f34189a && this.f34190b == oVar.f34190b && Double.compare(this.f34191c, oVar.f34191c) == 0 && this.f34192d == oVar.f34192d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((Integer.hashCode(this.f34189a) * 31) + Boolean.hashCode(this.f34190b)) * 31) + Double.hashCode(this.f34191c)) * 31) + Integer.hashCode(this.f34192d);
    }

    @NotNull
    public String toString() {
        return "MediaConfig(chunkSize=" + this.f34189a + ", isStreamingEnabled=" + this.f34190b + ", minStreamingPlayableDurationOnTimeoutSecs=" + this.f34191c + ", mediaCacheDiskCleanUpLimit=" + this.f34192d + ')';
    }
}
