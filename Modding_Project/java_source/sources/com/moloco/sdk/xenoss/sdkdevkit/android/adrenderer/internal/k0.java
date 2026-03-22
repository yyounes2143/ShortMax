package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class k0 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f34075a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f34076b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f34077c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f34078d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final String f34079e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final String f34080f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final String f34081g;

    public k0(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
        this.f34075a = str;
        this.f34076b = str2;
        this.f34077c = str3;
        this.f34078d = str4;
        this.f34079e = str5;
        this.f34080f = str6;
        this.f34081g = str7;
    }

    public static /* synthetic */ k0 a(k0 k0Var, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = k0Var.f34075a;
        }
        if ((i10 & 2) != 0) {
            str2 = k0Var.f34076b;
        }
        String str8 = str2;
        if ((i10 & 4) != 0) {
            str3 = k0Var.f34077c;
        }
        String str9 = str3;
        if ((i10 & 8) != 0) {
            str4 = k0Var.f34078d;
        }
        String str10 = str4;
        if ((i10 & 16) != 0) {
            str5 = k0Var.f34079e;
        }
        String str11 = str5;
        if ((i10 & 32) != 0) {
            str6 = k0Var.f34080f;
        }
        String str12 = str6;
        if ((i10 & 64) != 0) {
            str7 = k0Var.f34081g;
        }
        return k0Var.b(str, str8, str9, str10, str11, str12, str7);
    }

    @NotNull
    public final k0 b(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
        return new k0(str, str2, str3, str4, str5, str6, str7);
    }

    @Nullable
    public final String c() {
        return this.f34075a;
    }

    @Nullable
    public final String d() {
        return this.f34076b;
    }

    @Nullable
    public final String e() {
        return this.f34077c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k0)) {
            return false;
        }
        k0 k0Var = (k0) obj;
        if (Intrinsics.areEqual(this.f34075a, k0Var.f34075a) && Intrinsics.areEqual(this.f34076b, k0Var.f34076b) && Intrinsics.areEqual(this.f34077c, k0Var.f34077c) && Intrinsics.areEqual(this.f34078d, k0Var.f34078d) && Intrinsics.areEqual(this.f34079e, k0Var.f34079e) && Intrinsics.areEqual(this.f34080f, k0Var.f34080f) && Intrinsics.areEqual(this.f34081g, k0Var.f34081g)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String f() {
        return this.f34079e;
    }

    @Nullable
    public final String g() {
        return this.f34078d;
    }

    @Nullable
    public final String h() {
        return this.f34080f;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        String str = this.f34075a;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = hashCode * 31;
        String str2 = this.f34076b;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str3 = this.f34077c;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        String str4 = this.f34078d;
        if (str4 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str4.hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        String str5 = this.f34079e;
        if (str5 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = str5.hashCode();
        }
        int i15 = (i14 + hashCode5) * 31;
        String str6 = this.f34080f;
        if (str6 == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = str6.hashCode();
        }
        int i16 = (i15 + hashCode6) * 31;
        String str7 = this.f34081g;
        if (str7 != null) {
            i10 = str7.hashCode();
        }
        return i16 + i10;
    }

    @Nullable
    public final String i() {
        return this.f34081g;
    }

    @NotNull
    public String toString() {
        return "DEC(appIconUri=" + this.f34075a + ", appName=" + this.f34076b + ", ctaText=" + this.f34077c + ", ctaUrl=" + this.f34078d + ", ctaTrackingUrl=" + this.f34079e + ", impressionTrackingUrl=" + this.f34080f + ", skipToDECTrackingUrl=" + this.f34081g + ')';
    }
}
