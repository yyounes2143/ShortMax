package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.VisibleForTesting;
import com.facebook.internal.FetchedAppSettingsManager;
import java.net.HttpURLConnection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: FacebookRequestError.kt */
@Metadata
/* loaded from: classes3.dex */
public final class FacebookRequestError implements Parcelable {

    /* renamed from: a  reason: collision with root package name */
    private final int f14822a;

    /* renamed from: b  reason: collision with root package name */
    private final int f14823b;

    /* renamed from: c  reason: collision with root package name */
    private final int f14824c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f14825d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final String f14826e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final String f14827f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final JSONObject f14828g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final JSONObject f14829h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final Object f14830i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final HttpURLConnection f14831j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final String f14832k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private FacebookException f14833l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final Category f14834m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final String f14835n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final b f14820o = new b(null);
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private static final c f14821p = new c(200, 299);
    @NotNull
    public static final Parcelable.Creator<FacebookRequestError> CREATOR = new a();

    /* compiled from: FacebookRequestError.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum Category {
        LOGIN_RECOVERABLE,
        OTHER,
        TRANSIENT
    }

    /* compiled from: FacebookRequestError.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<FacebookRequestError> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public FacebookRequestError createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new FacebookRequestError(parcel, (DefaultConstructorMarker) null);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public FacebookRequestError[] newArray(int i10) {
            return new FacebookRequestError[i10];
        }
    }

    /* compiled from: FacebookRequestError.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Removed duplicated region for block: B:45:0x00ce A[Catch: JSONException -> 0x0123, TryCatch #0 {JSONException -> 0x0123, blocks: (B:3:0x0012, B:5:0x0018, B:7:0x0022, B:9:0x0026, B:12:0x0034, B:14:0x003f, B:17:0x0049, B:20:0x0053, B:23:0x005b, B:25:0x0061, B:28:0x006b, B:31:0x0075, B:45:0x00ce, B:34:0x0082, B:37:0x008f, B:39:0x0098, B:43:0x00a9, B:47:0x00ef, B:49:0x00f9, B:51:0x0101, B:53:0x010a), top: B:57:0x0012 }] */
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.facebook.FacebookRequestError a(@org.jetbrains.annotations.NotNull org.json.JSONObject r20, @org.jetbrains.annotations.Nullable java.lang.Object r21, @org.jetbrains.annotations.Nullable java.net.HttpURLConnection r22) {
            /*
                Method dump skipped, instructions count: 292
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.FacebookRequestError.b.a(org.json.JSONObject, java.lang.Object, java.net.HttpURLConnection):com.facebook.FacebookRequestError");
        }

        @NotNull
        public final synchronized com.facebook.internal.i b() {
            com.facebook.internal.p f10 = FetchedAppSettingsManager.f(v.m());
            if (f10 == null) {
                return com.facebook.internal.i.f16201g.b();
            }
            return f10.g();
        }

        @NotNull
        public final c c() {
            return FacebookRequestError.f14821p;
        }

        private b() {
        }
    }

    /* compiled from: FacebookRequestError.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final int f14836a;

        /* renamed from: b  reason: collision with root package name */
        private final int f14837b;

        public c(int i10, int i11) {
            this.f14836a = i10;
            this.f14837b = i11;
        }

        public final boolean a(int i10) {
            int i11 = this.f14836a;
            if (i10 > this.f14837b || i11 > i10) {
                return false;
            }
            return true;
        }
    }

    public /* synthetic */ FacebookRequestError(int i10, int i11, int i12, String str, String str2, String str3, String str4, JSONObject jSONObject, JSONObject jSONObject2, Object obj, HttpURLConnection httpURLConnection, FacebookException facebookException, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, i12, str, str2, str3, str4, jSONObject, jSONObject2, obj, httpURLConnection, facebookException, z10);
    }

    public final int b() {
        return this.f14823b;
    }

    @Nullable
    public final String c() {
        String str = this.f14832k;
        if (str == null) {
            FacebookException facebookException = this.f14833l;
            if (facebookException != null) {
                return facebookException.getLocalizedMessage();
            }
            return null;
        }
        return str;
    }

    @Nullable
    public final String d() {
        return this.f14825d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    public final FacebookException e() {
        return this.f14833l;
    }

    public final int f() {
        return this.f14822a;
    }

    public final int g() {
        return this.f14824c;
    }

    @NotNull
    public String toString() {
        String str = "{HttpStatus: " + this.f14822a + ", errorCode: " + this.f14823b + ", subErrorCode: " + this.f14824c + ", errorType: " + this.f14825d + ", errorMessage: " + c() + "}";
        Intrinsics.checkNotNullExpressionValue(str, "StringBuilder(\"{HttpStat…(\"}\")\n        .toString()");
        return str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i10) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.f14822a);
        out.writeInt(this.f14823b);
        out.writeInt(this.f14824c);
        out.writeString(this.f14825d);
        out.writeString(c());
        out.writeString(this.f14826e);
        out.writeString(this.f14827f);
    }

    public /* synthetic */ FacebookRequestError(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
        this(parcel);
    }

    private FacebookRequestError(int i10, int i11, int i12, String str, String str2, String str3, String str4, JSONObject jSONObject, JSONObject jSONObject2, Object obj, HttpURLConnection httpURLConnection, FacebookException facebookException, boolean z10) {
        Category c10;
        this.f14822a = i10;
        this.f14823b = i11;
        this.f14824c = i12;
        this.f14825d = str;
        this.f14826e = str3;
        this.f14827f = str4;
        this.f14828g = jSONObject;
        this.f14829h = jSONObject2;
        this.f14830i = obj;
        this.f14831j = httpURLConnection;
        this.f14832k = str2;
        if (facebookException != null) {
            this.f14833l = facebookException;
            c10 = Category.OTHER;
        } else {
            this.f14833l = new FacebookServiceException(this, c());
            c10 = f14820o.b().c(i11, i12, z10);
        }
        this.f14834m = c10;
        this.f14835n = f14820o.b().d(c10);
    }

    @VisibleForTesting(otherwise = 4)
    public FacebookRequestError(@Nullable HttpURLConnection httpURLConnection, @Nullable Exception exc) {
        this(-1, -1, -1, null, null, null, null, null, null, null, httpURLConnection, exc instanceof FacebookException ? (FacebookException) exc : new FacebookException(exc), false);
    }

    public FacebookRequestError(int i10, @Nullable String str, @Nullable String str2) {
        this(-1, i10, -1, str, str2, null, null, null, null, null, null, null, false);
    }

    private FacebookRequestError(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), null, null, null, null, null, false);
    }
}
