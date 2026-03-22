package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final Boolean f33178a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Boolean f33179b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final Boolean f33180c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final Float f33181d;

    public a() {
        this(null, null, null, null, 15, null);
    }

    @Nullable
    public final Boolean a() {
        return this.f33178a;
    }

    @Nullable
    public final Boolean b() {
        return this.f33179b;
    }

    @Nullable
    public final Float c() {
        return this.f33181d;
    }

    @Nullable
    public final Boolean d() {
        return this.f33180c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (Intrinsics.areEqual(this.f33178a, aVar.f33178a) && Intrinsics.areEqual(this.f33179b, aVar.f33179b) && Intrinsics.areEqual(this.f33180c, aVar.f33180c) && Intrinsics.areEqual((Object) this.f33181d, (Object) aVar.f33181d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        Boolean bool = this.f33178a;
        int i10 = 0;
        if (bool == null) {
            hashCode = 0;
        } else {
            hashCode = bool.hashCode();
        }
        int i11 = hashCode * 31;
        Boolean bool2 = this.f33179b;
        if (bool2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = bool2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        Boolean bool3 = this.f33180c;
        if (bool3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = bool3.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        Float f10 = this.f33181d;
        if (f10 != null) {
            i10 = f10.hashCode();
        }
        return i13 + i10;
    }

    @NotNull
    public String toString() {
        return "AccessibilitySignal(accessibilityCaptioningEnabled=" + this.f33178a + ", accessibilityLargePointerIcon=" + this.f33179b + ", reduceBrightColorsActivated=" + this.f33180c + ", fontScale=" + this.f33181d + ')';
    }

    public a(@Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Float f10) {
        this.f33178a = bool;
        this.f33179b = bool2;
        this.f33180c = bool3;
        this.f33181d = f10;
    }

    public /* synthetic */ a(Boolean bool, Boolean bool2, Boolean bool3, Float f10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : bool, (i10 & 2) != 0 ? null : bool2, (i10 & 4) != 0 ? null : bool3, (i10 & 8) != 0 ? null : f10);
    }
}
