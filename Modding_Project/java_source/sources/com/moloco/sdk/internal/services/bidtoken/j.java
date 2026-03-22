package com.moloco.sdk.internal.services.bidtoken;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class j {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f33155a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final String f33156b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final String f33157c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final String f33158d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final String f33159e;

    public j(@NotNull String language, @NotNull String osVersion, @NotNull String make, @NotNull String model, @NotNull String hardwareVersion) {
        Intrinsics.checkNotNullParameter(language, "language");
        Intrinsics.checkNotNullParameter(osVersion, "osVersion");
        Intrinsics.checkNotNullParameter(make, "make");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(hardwareVersion, "hardwareVersion");
        this.f33155a = language;
        this.f33156b = osVersion;
        this.f33157c = make;
        this.f33158d = model;
        this.f33159e = hardwareVersion;
    }

    @NotNull
    public final String a() {
        return this.f33156b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (Intrinsics.areEqual(this.f33155a, jVar.f33155a) && Intrinsics.areEqual(this.f33156b, jVar.f33156b) && Intrinsics.areEqual(this.f33157c, jVar.f33157c) && Intrinsics.areEqual(this.f33158d, jVar.f33158d) && Intrinsics.areEqual(this.f33159e, jVar.f33159e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.f33155a.hashCode() * 31) + this.f33156b.hashCode()) * 31) + this.f33157c.hashCode()) * 31) + this.f33158d.hashCode()) * 31) + this.f33159e.hashCode();
    }

    @NotNull
    public String toString() {
        return "BidTokenDeviceRequestInfo(language=" + this.f33155a + ", osVersion=" + this.f33156b + ", make=" + this.f33157c + ", model=" + this.f33158d + ", hardwareVersion=" + this.f33159e + ')';
    }
}
