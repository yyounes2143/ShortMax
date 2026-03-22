package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class h {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final Integer f33201a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Integer f33202b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final Boolean f33203c;

    public h() {
        this(null, null, null, 7, null);
    }

    @Nullable
    public final Integer a() {
        return this.f33202b;
    }

    @Nullable
    public final Integer b() {
        return this.f33201a;
    }

    @Nullable
    public final Boolean c() {
        return this.f33203c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (Intrinsics.areEqual(this.f33201a, hVar.f33201a) && Intrinsics.areEqual(this.f33202b, hVar.f33202b) && Intrinsics.areEqual(this.f33203c, hVar.f33203c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        Integer num = this.f33201a;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i11 = hashCode * 31;
        Integer num2 = this.f33202b;
        if (num2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        Boolean bool = this.f33203c;
        if (bool != null) {
            i10 = bool.hashCode();
        }
        return i12 + i10;
    }

    @NotNull
    public String toString() {
        return "BatteryInfoSignal(maxBatteryLevel=" + this.f33201a + ", batteryStatus=" + this.f33202b + ", isPowerSaveMode=" + this.f33203c + ')';
    }

    public h(@Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool) {
        this.f33201a = num;
        this.f33202b = num2;
        this.f33203c = bool;
    }

    public /* synthetic */ h(Integer num, Integer num2, Boolean bool, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : num, (i10 & 2) != 0 ? null : num2, (i10 & 4) != 0 ? null : bool);
    }
}
