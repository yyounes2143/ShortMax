package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final a f34536a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f34537b;

    public b(@NotNull a orientation, boolean z10) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        this.f34536a = orientation;
        this.f34537b = z10;
    }

    @NotNull
    public final a a() {
        return this.f34536a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f34536a == bVar.f34536a && this.f34537b == bVar.f34537b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f34536a.hashCode() * 31) + Boolean.hashCode(this.f34537b);
    }

    @NotNull
    public String toString() {
        return "OrientationSettings(orientation=" + this.f34536a + ", allowOrientationChange=" + this.f34537b + ')';
    }

    public /* synthetic */ b(a aVar, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, (i10 & 2) != 0 ? true : z10);
    }
}
