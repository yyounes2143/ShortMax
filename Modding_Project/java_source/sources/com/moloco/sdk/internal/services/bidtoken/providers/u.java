package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class u {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final Integer f33251a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Integer f33252b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final Boolean f33253c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.a f33254d;

    public u() {
        this(null, null, null, null, 15, null);
    }

    @Nullable
    public final Integer a() {
        return this.f33251a;
    }

    @Nullable
    public final Integer b() {
        return this.f33252b;
    }

    @Nullable
    public final Boolean c() {
        return this.f33253c;
    }

    @Nullable
    public final com.moloco.sdk.internal.services.a d() {
        return this.f33254d;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        if (Intrinsics.areEqual(this.f33251a, uVar.f33251a) && Intrinsics.areEqual(this.f33252b, uVar.f33252b) && Intrinsics.areEqual(this.f33253c, uVar.f33253c) && Intrinsics.areEqual(this.f33254d, uVar.f33254d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        Integer num = this.f33251a;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i11 = hashCode * 31;
        Integer num2 = this.f33252b;
        if (num2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        Boolean bool = this.f33253c;
        if (bool == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = bool.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        com.moloco.sdk.internal.services.a aVar = this.f33254d;
        if (aVar != null) {
            i10 = aVar.hashCode();
        }
        return i13 + i10;
    }

    @NotNull
    public String toString() {
        return "NetworkInfoSignal(mobileCountryCode=" + this.f33251a + ", mobileNetworkCode=" + this.f33252b + ", networkRestricted=" + this.f33253c + ", networkType=" + this.f33254d + ')';
    }

    public u(@Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool, @Nullable com.moloco.sdk.internal.services.a aVar) {
        this.f33251a = num;
        this.f33252b = num2;
        this.f33253c = bool;
        this.f33254d = aVar;
    }

    public /* synthetic */ u(Integer num, Integer num2, Boolean bool, com.moloco.sdk.internal.services.a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : num, (i10 & 2) != 0 ? null : num2, (i10 & 4) != 0 ? null : bool, (i10 & 8) != 0 ? null : aVar);
    }
}
