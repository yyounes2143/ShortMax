package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class y {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final v f35669a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final String f35670b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final t f35671c;

    public y(@NotNull v event, @NotNull String url, @Nullable t tVar) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(url, "url");
        this.f35669a = event;
        this.f35670b = url;
        this.f35671c = tVar;
    }

    @NotNull
    public final v a() {
        return this.f35669a;
    }

    @Nullable
    public final t b() {
        return this.f35671c;
    }

    @NotNull
    public final String c() {
        return this.f35670b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        if (this.f35669a == yVar.f35669a && Intrinsics.areEqual(this.f35670b, yVar.f35670b) && Intrinsics.areEqual(this.f35671c, yVar.f35671c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((this.f35669a.hashCode() * 31) + this.f35670b.hashCode()) * 31;
        t tVar = this.f35671c;
        if (tVar == null) {
            hashCode = 0;
        } else {
            hashCode = tVar.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "Tracking(event=" + this.f35669a + ", url=" + this.f35670b + ", offset=" + this.f35671c + ')';
    }
}
