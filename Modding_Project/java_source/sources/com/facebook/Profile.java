package com.facebook;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.internal.u0;
import com.facebook.internal.v0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Profile.kt */
@Metadata
/* loaded from: classes3.dex */
public final class Profile implements Parcelable {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f14872a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f14873b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f14874c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f14875d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final String f14876e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final Uri f14877f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final Uri f14878g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final b f14870h = new b(null);

    /* renamed from: i  reason: collision with root package name */
    private static final String f14871i = Profile.class.getSimpleName();
    @NotNull
    public static final Parcelable.Creator<Profile> CREATOR = new a();

    /* compiled from: Profile.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<Profile> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public Profile createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new Profile(source, null);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public Profile[] newArray(int i10) {
            return new Profile[i10];
        }
    }

    /* compiled from: Profile.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {

        /* compiled from: Profile.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class a implements u0.a {
            a() {
            }

            @Override // com.facebook.internal.u0.a
            public void a(@Nullable JSONObject jSONObject) {
                String str;
                Uri uri;
                Uri uri2 = null;
                if (jSONObject != null) {
                    str = jSONObject.optString("id");
                } else {
                    str = null;
                }
                if (str == null) {
                    Log.w(Profile.f14871i, "No user ID returned on Me request");
                    return;
                }
                String optString = jSONObject.optString("link");
                String optString2 = jSONObject.optString("profile_picture", null);
                String optString3 = jSONObject.optString("first_name");
                String optString4 = jSONObject.optString("middle_name");
                String optString5 = jSONObject.optString("last_name");
                String optString6 = jSONObject.optString("name");
                if (optString != null) {
                    uri = Uri.parse(optString);
                } else {
                    uri = null;
                }
                if (optString2 != null) {
                    uri2 = Uri.parse(optString2);
                }
                Profile.f14870h.c(new Profile(str, optString3, optString4, optString5, optString6, uri, uri2));
            }

            @Override // com.facebook.internal.u0.a
            public void b(@Nullable FacebookException facebookException) {
                String str = Profile.f14871i;
                Log.e(str, "Got unexpected exception: " + facebookException);
            }
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a() {
            AccessToken.c cVar = AccessToken.f14731l;
            AccessToken e10 = cVar.e();
            if (e10 == null) {
                return;
            }
            if (!cVar.g()) {
                c(null);
            } else {
                u0.H(e10.m(), new a());
            }
        }

        @Nullable
        public final Profile b() {
            return e0.f15524d.a().c();
        }

        public final void c(@Nullable Profile profile) {
            e0.f15524d.a().f(profile);
        }

        private b() {
        }
    }

    public /* synthetic */ Profile(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
        this(parcel);
    }

    @Nullable
    public final String b() {
        return this.f14872a;
    }

    @Nullable
    public final String c() {
        return this.f14876e;
    }

    @NotNull
    public final Uri d(int i10, int i11) {
        String str;
        Uri uri = this.f14878g;
        if (uri != null) {
            return uri;
        }
        AccessToken.c cVar = AccessToken.f14731l;
        if (cVar.g()) {
            AccessToken e10 = cVar.e();
            if (e10 != null) {
                str = e10.m();
            } else {
                str = null;
            }
        } else {
            str = "";
        }
        return com.facebook.internal.a0.f16136f.a(this.f14872a, i10, i11, str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    public final JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f14872a);
            jSONObject.put("first_name", this.f14873b);
            jSONObject.put("middle_name", this.f14874c);
            jSONObject.put("last_name", this.f14875d);
            jSONObject.put("name", this.f14876e);
            Uri uri = this.f14877f;
            if (uri != null) {
                jSONObject.put("link_uri", uri.toString());
            }
            Uri uri2 = this.f14878g;
            if (uri2 != null) {
                jSONObject.put("picture_uri", uri2.toString());
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    public boolean equals(@Nullable Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        Uri uri;
        Uri uri2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Profile)) {
            return false;
        }
        String str5 = this.f14872a;
        if (((str5 == null && ((Profile) obj).f14872a == null) || Intrinsics.areEqual(str5, ((Profile) obj).f14872a)) && ((((str = this.f14873b) == null && ((Profile) obj).f14873b == null) || Intrinsics.areEqual(str, ((Profile) obj).f14873b)) && ((((str2 = this.f14874c) == null && ((Profile) obj).f14874c == null) || Intrinsics.areEqual(str2, ((Profile) obj).f14874c)) && ((((str3 = this.f14875d) == null && ((Profile) obj).f14875d == null) || Intrinsics.areEqual(str3, ((Profile) obj).f14875d)) && ((((str4 = this.f14876e) == null && ((Profile) obj).f14876e == null) || Intrinsics.areEqual(str4, ((Profile) obj).f14876e)) && ((((uri = this.f14877f) == null && ((Profile) obj).f14877f == null) || Intrinsics.areEqual(uri, ((Profile) obj).f14877f)) && (((uri2 = this.f14878g) == null && ((Profile) obj).f14878g == null) || Intrinsics.areEqual(uri2, ((Profile) obj).f14878g)))))))) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        String str = this.f14872a;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i11 = TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + i10;
        String str2 = this.f14873b;
        if (str2 != null) {
            i11 = (i11 * 31) + str2.hashCode();
        }
        String str3 = this.f14874c;
        if (str3 != null) {
            i11 = (i11 * 31) + str3.hashCode();
        }
        String str4 = this.f14875d;
        if (str4 != null) {
            i11 = (i11 * 31) + str4.hashCode();
        }
        String str5 = this.f14876e;
        if (str5 != null) {
            i11 = (i11 * 31) + str5.hashCode();
        }
        Uri uri = this.f14877f;
        if (uri != null) {
            i11 = (i11 * 31) + uri.hashCode();
        }
        Uri uri2 = this.f14878g;
        if (uri2 != null) {
            return (i11 * 31) + uri2.hashCode();
        }
        return i11;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        String str;
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeString(this.f14872a);
        dest.writeString(this.f14873b);
        dest.writeString(this.f14874c);
        dest.writeString(this.f14875d);
        dest.writeString(this.f14876e);
        Uri uri = this.f14877f;
        String str2 = null;
        if (uri != null) {
            str = uri.toString();
        } else {
            str = null;
        }
        dest.writeString(str);
        Uri uri2 = this.f14878g;
        if (uri2 != null) {
            str2 = uri2.toString();
        }
        dest.writeString(str2);
    }

    public Profile(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Uri uri, @Nullable Uri uri2) {
        v0.k(str, "id");
        this.f14872a = str;
        this.f14873b = str2;
        this.f14874c = str3;
        this.f14875d = str4;
        this.f14876e = str5;
        this.f14877f = uri;
        this.f14878g = uri2;
    }

    public Profile(@NotNull JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        this.f14872a = jsonObject.optString("id", null);
        this.f14873b = jsonObject.optString("first_name", null);
        this.f14874c = jsonObject.optString("middle_name", null);
        this.f14875d = jsonObject.optString("last_name", null);
        this.f14876e = jsonObject.optString("name", null);
        String optString = jsonObject.optString("link_uri", null);
        this.f14877f = optString == null ? null : Uri.parse(optString);
        String optString2 = jsonObject.optString("picture_uri", null);
        this.f14878g = optString2 != null ? Uri.parse(optString2) : null;
    }

    private Profile(Parcel parcel) {
        this.f14872a = parcel.readString();
        this.f14873b = parcel.readString();
        this.f14874c = parcel.readString();
        this.f14875d = parcel.readString();
        this.f14876e = parcel.readString();
        String readString = parcel.readString();
        this.f14877f = readString == null ? null : Uri.parse(readString);
        String readString2 = parcel.readString();
        this.f14878g = readString2 != null ? Uri.parse(readString2) : null;
    }
}
