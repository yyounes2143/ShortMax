package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f36369a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f36370b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f36371c;

    public a(boolean z10, boolean z11, boolean z12) {
        this.f36369a = z10;
        this.f36370b = z11;
        this.f36371c = z12;
    }

    public final boolean a() {
        return this.f36371c;
    }

    public final boolean b() {
        return this.f36369a;
    }

    public final boolean c() {
        return this.f36370b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f36369a == aVar.f36369a && this.f36370b == aVar.f36370b && this.f36371c == aVar.f36371c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((Boolean.hashCode(this.f36369a) * 31) + Boolean.hashCode(this.f36370b)) * 31) + Boolean.hashCode(this.f36371c);
    }

    @NotNull
    public String toString() {
        return "PlayingState(isPlaying=" + this.f36369a + ", isVisible=" + this.f36370b + ", hasMore=" + this.f36371c + ')';
    }

    public /* synthetic */ a(boolean z10, boolean z11, boolean z12, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, (i10 & 2) != 0 ? true : z11, (i10 & 4) != 0 ? true : z12);
    }
}
