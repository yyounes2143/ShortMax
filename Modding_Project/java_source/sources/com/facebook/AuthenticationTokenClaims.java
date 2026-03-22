package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import androidx.annotation.VisibleForTesting;
import com.facebook.internal.u0;
import com.facebook.internal.v0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: AuthenticationTokenClaims.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAuthenticationTokenClaims.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthenticationTokenClaims.kt\ncom/facebook/AuthenticationTokenClaims\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,585:1\n1#2:586\n*E\n"})
/* loaded from: classes3.dex */
public final class AuthenticationTokenClaims implements Parcelable {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f14754a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f14755b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f14756c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final String f14757d;

    /* renamed from: e  reason: collision with root package name */
    private final long f14758e;

    /* renamed from: f  reason: collision with root package name */
    private final long f14759f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final String f14760g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final String f14761h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final String f14762i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final String f14763j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final String f14764k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final String f14765l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final String f14766m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final Set<String> f14767n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final String f14768o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final Map<String, Integer> f14769p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private final Map<String, String> f14770q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final Map<String, String> f14771r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private final String f14772s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private final String f14773t;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    public static final b f14753u = new b(null);
    @NotNull
    public static final Parcelable.Creator<AuthenticationTokenClaims> CREATOR = new a();

    /* compiled from: AuthenticationTokenClaims.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<AuthenticationTokenClaims> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public AuthenticationTokenClaims createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new AuthenticationTokenClaims(source);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public AuthenticationTokenClaims[] newArray(int i10) {
            return new AuthenticationTokenClaims[i10];
        }
    }

    /* compiled from: AuthenticationTokenClaims.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final String a(@NotNull JSONObject jSONObject, @NotNull String name) {
            Intrinsics.checkNotNullParameter(jSONObject, "<this>");
            Intrinsics.checkNotNullParameter(name, "name");
            if (jSONObject.has(name)) {
                return jSONObject.getString(name);
            }
            return null;
        }

        private b() {
        }
    }

    public AuthenticationTokenClaims(@NotNull String encodedClaims, @NotNull String expectedNonce) {
        Intrinsics.checkNotNullParameter(encodedClaims, "encodedClaims");
        Intrinsics.checkNotNullParameter(expectedNonce, "expectedNonce");
        v0.g(encodedClaims, "encodedClaims");
        byte[] decodedBytes = Base64.decode(encodedClaims, 8);
        Intrinsics.checkNotNullExpressionValue(decodedBytes, "decodedBytes");
        JSONObject jSONObject = new JSONObject(new String(decodedBytes, Charsets.UTF_8));
        if (a(jSONObject, expectedNonce)) {
            String string = jSONObject.getString("jti");
            Intrinsics.checkNotNullExpressionValue(string, "jsonObj.getString(JSON_KEY_JIT)");
            this.f14754a = string;
            String string2 = jSONObject.getString("iss");
            Intrinsics.checkNotNullExpressionValue(string2, "jsonObj.getString(JSON_KEY_ISS)");
            this.f14755b = string2;
            String string3 = jSONObject.getString("aud");
            Intrinsics.checkNotNullExpressionValue(string3, "jsonObj.getString(JSON_KEY_AUD)");
            this.f14756c = string3;
            String string4 = jSONObject.getString("nonce");
            Intrinsics.checkNotNullExpressionValue(string4, "jsonObj.getString(JSON_KEY_NONCE)");
            this.f14757d = string4;
            this.f14758e = jSONObject.getLong("exp");
            this.f14759f = jSONObject.getLong("iat");
            String string5 = jSONObject.getString("sub");
            Intrinsics.checkNotNullExpressionValue(string5, "jsonObj.getString(JSON_KEY_SUB)");
            this.f14760g = string5;
            b bVar = f14753u;
            this.f14761h = bVar.a(jSONObject, "name");
            this.f14762i = bVar.a(jSONObject, "given_name");
            this.f14763j = bVar.a(jSONObject, "middle_name");
            this.f14764k = bVar.a(jSONObject, "family_name");
            this.f14765l = bVar.a(jSONObject, "email");
            this.f14766m = bVar.a(jSONObject, "picture");
            JSONArray optJSONArray = jSONObject.optJSONArray("user_friends");
            this.f14767n = optJSONArray == null ? null : Collections.unmodifiableSet(u0.g0(optJSONArray));
            this.f14768o = bVar.a(jSONObject, "user_birthday");
            JSONObject optJSONObject = jSONObject.optJSONObject("user_age_range");
            this.f14769p = optJSONObject == null ? null : Collections.unmodifiableMap(u0.o(optJSONObject));
            JSONObject optJSONObject2 = jSONObject.optJSONObject("user_hometown");
            this.f14770q = optJSONObject2 == null ? null : Collections.unmodifiableMap(u0.p(optJSONObject2));
            JSONObject optJSONObject3 = jSONObject.optJSONObject("user_location");
            this.f14771r = optJSONObject3 != null ? Collections.unmodifiableMap(u0.p(optJSONObject3)) : null;
            this.f14772s = bVar.a(jSONObject, "user_gender");
            this.f14773t = bVar.a(jSONObject, "user_link");
            return;
        }
        throw new IllegalArgumentException("Invalid claims");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(new java.net.URL(r2).getHost(), "www.facebook.com") == false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean a(org.json.JSONObject r7, java.lang.String r8) {
        /*
            r6 = this;
            java.lang.String r0 = "iss"
            r1 = 0
            if (r7 != 0) goto L6
            return r1
        L6:
            java.lang.String r2 = "jti"
            java.lang.String r3 = r7.optString(r2)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r2)
            int r2 = r3.length()
            if (r2 != 0) goto L16
            return r1
        L16:
            java.lang.String r2 = r7.optString(r0)     // Catch: java.net.MalformedURLException -> Lc2
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)     // Catch: java.net.MalformedURLException -> Lc2
            int r0 = r2.length()     // Catch: java.net.MalformedURLException -> Lc2
            if (r0 != 0) goto L24
            goto L46
        L24:
            java.net.URL r0 = new java.net.URL     // Catch: java.net.MalformedURLException -> Lc2
            r0.<init>(r2)     // Catch: java.net.MalformedURLException -> Lc2
            java.lang.String r0 = r0.getHost()     // Catch: java.net.MalformedURLException -> Lc2
            java.lang.String r3 = "facebook.com"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r3)     // Catch: java.net.MalformedURLException -> Lc2
            if (r0 != 0) goto L47
            java.net.URL r0 = new java.net.URL     // Catch: java.net.MalformedURLException -> Lc2
            r0.<init>(r2)     // Catch: java.net.MalformedURLException -> Lc2
            java.lang.String r0 = r0.getHost()     // Catch: java.net.MalformedURLException -> Lc2
            java.lang.String r2 = "www.facebook.com"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r2)     // Catch: java.net.MalformedURLException -> Lc2
            if (r0 != 0) goto L47
        L46:
            return r1
        L47:
            java.lang.String r0 = "aud"
            java.lang.String r2 = r7.optString(r0)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            int r0 = r2.length()
            if (r0 != 0) goto L57
            goto L61
        L57:
            java.lang.String r0 = com.facebook.v.m()
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r0)
            if (r0 != 0) goto L62
        L61:
            return r1
        L62:
            java.util.Date r0 = new java.util.Date
            java.lang.String r2 = "exp"
            long r2 = r7.optLong(r2)
            r4 = 1000(0x3e8, float:1.401E-42)
            long r4 = (long) r4
            long r2 = r2 * r4
            r0.<init>(r2)
            java.util.Date r2 = new java.util.Date
            r2.<init>()
            boolean r0 = r2.after(r0)
            if (r0 == 0) goto L7d
            return r1
        L7d:
            java.lang.String r0 = "iat"
            long r2 = r7.optLong(r0)
            java.util.Date r0 = new java.util.Date
            long r2 = r2 * r4
            r4 = 600000(0x927c0, double:2.964394E-318)
            long r2 = r2 + r4
            r0.<init>(r2)
            java.util.Date r2 = new java.util.Date
            r2.<init>()
            boolean r0 = r2.after(r0)
            if (r0 == 0) goto L99
            return r1
        L99:
            java.lang.String r0 = "sub"
            java.lang.String r2 = r7.optString(r0)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            int r0 = r2.length()
            if (r0 != 0) goto La9
            return r1
        La9:
            java.lang.String r0 = "nonce"
            java.lang.String r7 = r7.optString(r0)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r0)
            int r0 = r7.length()
            if (r0 != 0) goto Lb9
            goto Lbf
        Lb9:
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r8)
            if (r7 != 0) goto Lc0
        Lbf:
            return r1
        Lc0:
            r7 = 1
            return r7
        Lc2:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.AuthenticationTokenClaims.a(org.json.JSONObject, java.lang.String):boolean");
    }

    @VisibleForTesting(otherwise = 2)
    @NotNull
    public final JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("jti", this.f14754a);
        jSONObject.put("iss", this.f14755b);
        jSONObject.put("aud", this.f14756c);
        jSONObject.put("nonce", this.f14757d);
        jSONObject.put("exp", this.f14758e);
        jSONObject.put("iat", this.f14759f);
        String str = this.f14760g;
        if (str != null) {
            jSONObject.put("sub", str);
        }
        String str2 = this.f14761h;
        if (str2 != null) {
            jSONObject.put("name", str2);
        }
        String str3 = this.f14762i;
        if (str3 != null) {
            jSONObject.put("given_name", str3);
        }
        String str4 = this.f14763j;
        if (str4 != null) {
            jSONObject.put("middle_name", str4);
        }
        String str5 = this.f14764k;
        if (str5 != null) {
            jSONObject.put("family_name", str5);
        }
        String str6 = this.f14765l;
        if (str6 != null) {
            jSONObject.put("email", str6);
        }
        String str7 = this.f14766m;
        if (str7 != null) {
            jSONObject.put("picture", str7);
        }
        if (this.f14767n != null) {
            jSONObject.put("user_friends", new JSONArray((Collection) this.f14767n));
        }
        String str8 = this.f14768o;
        if (str8 != null) {
            jSONObject.put("user_birthday", str8);
        }
        if (this.f14769p != null) {
            jSONObject.put("user_age_range", new JSONObject(this.f14769p));
        }
        if (this.f14770q != null) {
            jSONObject.put("user_hometown", new JSONObject(this.f14770q));
        }
        if (this.f14771r != null) {
            jSONObject.put("user_location", new JSONObject(this.f14771r));
        }
        String str9 = this.f14772s;
        if (str9 != null) {
            jSONObject.put("user_gender", str9);
        }
        String str10 = this.f14773t;
        if (str10 != null) {
            jSONObject.put("user_link", str10);
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthenticationTokenClaims)) {
            return false;
        }
        AuthenticationTokenClaims authenticationTokenClaims = (AuthenticationTokenClaims) obj;
        if (Intrinsics.areEqual(this.f14754a, authenticationTokenClaims.f14754a) && Intrinsics.areEqual(this.f14755b, authenticationTokenClaims.f14755b) && Intrinsics.areEqual(this.f14756c, authenticationTokenClaims.f14756c) && Intrinsics.areEqual(this.f14757d, authenticationTokenClaims.f14757d) && this.f14758e == authenticationTokenClaims.f14758e && this.f14759f == authenticationTokenClaims.f14759f && Intrinsics.areEqual(this.f14760g, authenticationTokenClaims.f14760g) && Intrinsics.areEqual(this.f14761h, authenticationTokenClaims.f14761h) && Intrinsics.areEqual(this.f14762i, authenticationTokenClaims.f14762i) && Intrinsics.areEqual(this.f14763j, authenticationTokenClaims.f14763j) && Intrinsics.areEqual(this.f14764k, authenticationTokenClaims.f14764k) && Intrinsics.areEqual(this.f14765l, authenticationTokenClaims.f14765l) && Intrinsics.areEqual(this.f14766m, authenticationTokenClaims.f14766m) && Intrinsics.areEqual(this.f14767n, authenticationTokenClaims.f14767n) && Intrinsics.areEqual(this.f14768o, authenticationTokenClaims.f14768o) && Intrinsics.areEqual(this.f14769p, authenticationTokenClaims.f14769p) && Intrinsics.areEqual(this.f14770q, authenticationTokenClaims.f14770q) && Intrinsics.areEqual(this.f14771r, authenticationTokenClaims.f14771r) && Intrinsics.areEqual(this.f14772s, authenticationTokenClaims.f14772s) && Intrinsics.areEqual(this.f14773t, authenticationTokenClaims.f14773t)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int hashCode = (((((((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f14754a.hashCode()) * 31) + this.f14755b.hashCode()) * 31) + this.f14756c.hashCode()) * 31) + this.f14757d.hashCode()) * 31) + Long.hashCode(this.f14758e)) * 31) + Long.hashCode(this.f14759f)) * 31) + this.f14760g.hashCode()) * 31;
        String str = this.f14761h;
        int i22 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i23 = (hashCode + i10) * 31;
        String str2 = this.f14762i;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i24 = (i23 + i11) * 31;
        String str3 = this.f14763j;
        if (str3 != null) {
            i12 = str3.hashCode();
        } else {
            i12 = 0;
        }
        int i25 = (i24 + i12) * 31;
        String str4 = this.f14764k;
        if (str4 != null) {
            i13 = str4.hashCode();
        } else {
            i13 = 0;
        }
        int i26 = (i25 + i13) * 31;
        String str5 = this.f14765l;
        if (str5 != null) {
            i14 = str5.hashCode();
        } else {
            i14 = 0;
        }
        int i27 = (i26 + i14) * 31;
        String str6 = this.f14766m;
        if (str6 != null) {
            i15 = str6.hashCode();
        } else {
            i15 = 0;
        }
        int i28 = (i27 + i15) * 31;
        Set<String> set = this.f14767n;
        if (set != null) {
            i16 = set.hashCode();
        } else {
            i16 = 0;
        }
        int i29 = (i28 + i16) * 31;
        String str7 = this.f14768o;
        if (str7 != null) {
            i17 = str7.hashCode();
        } else {
            i17 = 0;
        }
        int i30 = (i29 + i17) * 31;
        Map<String, Integer> map = this.f14769p;
        if (map != null) {
            i18 = map.hashCode();
        } else {
            i18 = 0;
        }
        int i31 = (i30 + i18) * 31;
        Map<String, String> map2 = this.f14770q;
        if (map2 != null) {
            i19 = map2.hashCode();
        } else {
            i19 = 0;
        }
        int i32 = (i31 + i19) * 31;
        Map<String, String> map3 = this.f14771r;
        if (map3 != null) {
            i20 = map3.hashCode();
        } else {
            i20 = 0;
        }
        int i33 = (i32 + i20) * 31;
        String str8 = this.f14772s;
        if (str8 != null) {
            i21 = str8.hashCode();
        } else {
            i21 = 0;
        }
        int i34 = (i33 + i21) * 31;
        String str9 = this.f14773t;
        if (str9 != null) {
            i22 = str9.hashCode();
        }
        return i34 + i22;
    }

    @NotNull
    public String toString() {
        String jSONObject = b().toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject, "claimsJsonObject.toString()");
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeString(this.f14754a);
        dest.writeString(this.f14755b);
        dest.writeString(this.f14756c);
        dest.writeString(this.f14757d);
        dest.writeLong(this.f14758e);
        dest.writeLong(this.f14759f);
        dest.writeString(this.f14760g);
        dest.writeString(this.f14761h);
        dest.writeString(this.f14762i);
        dest.writeString(this.f14763j);
        dest.writeString(this.f14764k);
        dest.writeString(this.f14765l);
        dest.writeString(this.f14766m);
        if (this.f14767n == null) {
            dest.writeStringList(null);
        } else {
            dest.writeStringList(new ArrayList(this.f14767n));
        }
        dest.writeString(this.f14768o);
        dest.writeMap(this.f14769p);
        dest.writeMap(this.f14770q);
        dest.writeMap(this.f14771r);
        dest.writeString(this.f14772s);
        dest.writeString(this.f14773t);
    }

    public AuthenticationTokenClaims(@NotNull Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f14754a = v0.k(parcel.readString(), "jti");
        this.f14755b = v0.k(parcel.readString(), "iss");
        this.f14756c = v0.k(parcel.readString(), "aud");
        this.f14757d = v0.k(parcel.readString(), "nonce");
        this.f14758e = parcel.readLong();
        this.f14759f = parcel.readLong();
        this.f14760g = v0.k(parcel.readString(), "sub");
        this.f14761h = parcel.readString();
        this.f14762i = parcel.readString();
        this.f14763j = parcel.readString();
        this.f14764k = parcel.readString();
        this.f14765l = parcel.readString();
        this.f14766m = parcel.readString();
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        this.f14767n = createStringArrayList != null ? Collections.unmodifiableSet(new HashSet(createStringArrayList)) : null;
        this.f14768o = parcel.readString();
        HashMap readHashMap = parcel.readHashMap(IntCompanionObject.INSTANCE.getClass().getClassLoader());
        readHashMap = readHashMap == null ? null : readHashMap;
        this.f14769p = readHashMap != null ? Collections.unmodifiableMap(readHashMap) : null;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        HashMap readHashMap2 = parcel.readHashMap(stringCompanionObject.getClass().getClassLoader());
        readHashMap2 = readHashMap2 == null ? null : readHashMap2;
        this.f14770q = readHashMap2 != null ? Collections.unmodifiableMap(readHashMap2) : null;
        HashMap readHashMap3 = parcel.readHashMap(stringCompanionObject.getClass().getClassLoader());
        readHashMap3 = readHashMap3 == null ? null : readHashMap3;
        this.f14771r = readHashMap3 != null ? Collections.unmodifiableMap(readHashMap3) : null;
        this.f14772s = parcel.readString();
        this.f14773t = parcel.readString();
    }
}
