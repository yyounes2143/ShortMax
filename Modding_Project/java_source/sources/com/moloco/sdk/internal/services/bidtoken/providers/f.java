package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.services.z;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class f {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final z f33195a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Integer f33196b;

    public f() {
        this(null, null, 3, null);
    }

    @Nullable
    public final Integer a() {
        return this.f33196b;
    }

    @Nullable
    public final z b() {
        return this.f33195a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f33195a == fVar.f33195a && Intrinsics.areEqual(this.f33196b, fVar.f33196b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        z zVar = this.f33195a;
        int i10 = 0;
        if (zVar == null) {
            hashCode = 0;
        } else {
            hashCode = zVar.hashCode();
        }
        int i11 = hashCode * 31;
        Integer num = this.f33196b;
        if (num != null) {
            i10 = num.hashCode();
        }
        return i11 + i10;
    }

    @NotNull
    public String toString() {
        return "AudioSignal(muteSwitchState=" + this.f33195a + ", mediaVolume=" + this.f33196b + ')';
    }

    public f(@Nullable z zVar, @Nullable Integer num) {
        this.f33195a = zVar;
        this.f33196b = num;
    }

    public /* synthetic */ f(z zVar, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : zVar, (i10 & 2) != 0 ? null : num);
    }
}
