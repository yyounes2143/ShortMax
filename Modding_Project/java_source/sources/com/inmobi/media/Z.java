package com.inmobi.media;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes5.dex */
public final class Z implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<Z> CREATOR = new Y();

    /* renamed from: a  reason: collision with root package name */
    public final long f24417a;

    /* renamed from: b  reason: collision with root package name */
    public final String f24418b;

    /* renamed from: c  reason: collision with root package name */
    public Map f24419c;

    /* renamed from: d  reason: collision with root package name */
    public String f24420d;

    /* renamed from: e  reason: collision with root package name */
    public final String f24421e;

    /* renamed from: f  reason: collision with root package name */
    public final String f24422f;

    /* renamed from: g  reason: collision with root package name */
    public String f24423g;

    /* renamed from: h  reason: collision with root package name */
    public String f24424h;

    /* renamed from: i  reason: collision with root package name */
    public String f24425i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f24426j;

    /* renamed from: k  reason: collision with root package name */
    public String f24427k;

    public Z(long j10, String str, String str2, String str3, DefaultConstructorMarker defaultConstructorMarker) {
        this.f24424h = "";
        this.f24425i = "activity";
        this.f24417a = j10;
        this.f24418b = str;
        this.f24421e = str2;
        this.f24418b = str == null ? "" : str;
        this.f24422f = str3;
    }

    public static /* synthetic */ void c() {
    }

    @NotNull
    public final String d() {
        String str = this.f24423g;
        Intrinsics.checkNotNull(str);
        return str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    public final String e() {
        return this.f24427k;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Z)) {
            return false;
        }
        Z z10 = (Z) obj;
        if (this.f24417a == z10.f24417a && Intrinsics.areEqual(this.f24425i, z10.f24425i) && Intrinsics.areEqual(this.f24418b, z10.f24418b) && Intrinsics.areEqual(this.f24421e, z10.f24421e)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Map<String, String> f() {
        return this.f24419c;
    }

    public final long g() {
        return this.f24417a;
    }

    @NotNull
    public final String h() {
        return "im";
    }

    public int hashCode() {
        int i10;
        long j10 = this.f24417a;
        int i11 = ((int) (j10 ^ (j10 >>> 32))) * 31;
        String str = this.f24421e;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return this.f24425i.hashCode() + ((i11 + i10) * 30);
    }

    @Nullable
    public final String i() {
        return this.f24420d;
    }

    @NotNull
    public final String j() {
        return this.f24425i;
    }

    public final long l() {
        return this.f24417a;
    }

    @Nullable
    public final String m() {
        return this.f24422f;
    }

    @Nullable
    public final String o() {
        return this.f24418b;
    }

    public final boolean p() {
        return this.f24426j;
    }

    @NotNull
    public String toString() {
        return String.valueOf(this.f24417a);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeLong(this.f24417a);
        dest.writeString(this.f24425i);
        dest.writeString(this.f24421e);
    }

    @Nullable
    public final String b() {
        return this.f24421e;
    }

    public final void a(@Nullable Map<String, String> map) {
        this.f24419c = map;
    }

    public final void b(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f24425i = str;
    }

    @NotNull
    public final String a() {
        return this.f24424h;
    }

    public final void a(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f24424h = str;
    }

    public Z(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
        this.f24424h = "";
        String str = "activity";
        this.f24425i = "activity";
        this.f24417a = parcel.readLong();
        String readString = parcel.readString();
        if (readString != null && !Intrinsics.areEqual(readString, "activity") && Intrinsics.areEqual(readString, "others")) {
            str = "others";
        }
        this.f24425i = str;
        this.f24421e = parcel.readString();
    }

    public static /* synthetic */ void k() {
    }

    public static /* synthetic */ void n() {
    }
}
