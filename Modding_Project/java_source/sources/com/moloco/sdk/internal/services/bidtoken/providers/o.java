package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.services.H;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class o {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final H f33224a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f33225b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f33226c;

    public o() {
        this(null, null, null, 7, null);
    }

    @Nullable
    public final String a() {
        return this.f33226c;
    }

    @Nullable
    public final String b() {
        return this.f33225b;
    }

    @Nullable
    public final H c() {
        return this.f33224a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (this.f33224a == oVar.f33224a && Intrinsics.areEqual(this.f33225b, oVar.f33225b) && Intrinsics.areEqual(this.f33226c, oVar.f33226c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        H h10 = this.f33224a;
        int i10 = 0;
        if (h10 == null) {
            hashCode = 0;
        } else {
            hashCode = h10.hashCode();
        }
        int i11 = hashCode * 31;
        String str = this.f33225b;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str2 = this.f33226c;
        if (str2 != null) {
            i10 = str2.hashCode();
        }
        return i12 + i10;
    }

    @NotNull
    public String toString() {
        return "DeviceSignalInfo(orientation=" + this.f33224a + ", locale=" + this.f33225b + ", keyboardLocale=" + this.f33226c + ')';
    }

    public o(@Nullable H h10, @Nullable String str, @Nullable String str2) {
        this.f33224a = h10;
        this.f33225b = str;
        this.f33226c = str2;
    }

    public /* synthetic */ o(H h10, String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : h10, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? null : str2);
    }
}
