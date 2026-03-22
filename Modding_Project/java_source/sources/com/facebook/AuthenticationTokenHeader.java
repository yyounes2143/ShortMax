package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.facebook.internal.v0;
import com.google.android.gms.fido.u2f.api.common.ClientData;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AuthenticationTokenHeader.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAuthenticationTokenHeader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthenticationTokenHeader.kt\ncom/facebook/AuthenticationTokenHeader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,165:1\n1#2:166\n*E\n"})
/* loaded from: classes3.dex */
public final class AuthenticationTokenHeader implements Parcelable {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f14775a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f14776b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f14777c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final b f14774d = new b(null);
    @NotNull
    public static final Parcelable.Creator<AuthenticationTokenHeader> CREATOR = new a();

    /* compiled from: AuthenticationTokenHeader.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<AuthenticationTokenHeader> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public AuthenticationTokenHeader createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new AuthenticationTokenHeader(source);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public AuthenticationTokenHeader[] newArray(int i10) {
            return new AuthenticationTokenHeader[i10];
        }
    }

    /* compiled from: AuthenticationTokenHeader.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public AuthenticationTokenHeader(@NotNull String encodedHeaderString) {
        Intrinsics.checkNotNullParameter(encodedHeaderString, "encodedHeaderString");
        if (b(encodedHeaderString)) {
            byte[] decodedBytes = Base64.decode(encodedHeaderString, 0);
            Intrinsics.checkNotNullExpressionValue(decodedBytes, "decodedBytes");
            JSONObject jSONObject = new JSONObject(new String(decodedBytes, Charsets.UTF_8));
            String string = jSONObject.getString("alg");
            Intrinsics.checkNotNullExpressionValue(string, "jsonObj.getString(\"alg\")");
            this.f14775a = string;
            String string2 = jSONObject.getString(ClientData.KEY_TYPE);
            Intrinsics.checkNotNullExpressionValue(string2, "jsonObj.getString(\"typ\")");
            this.f14776b = string2;
            String string3 = jSONObject.getString("kid");
            Intrinsics.checkNotNullExpressionValue(string3, "jsonObj.getString(\"kid\")");
            this.f14777c = string3;
            return;
        }
        throw new IllegalArgumentException("Invalid Header");
    }

    private final boolean b(String str) {
        boolean z10;
        boolean z11;
        boolean z12;
        v0.g(str, "encodedHeaderString");
        byte[] decodedBytes = Base64.decode(str, 0);
        Intrinsics.checkNotNullExpressionValue(decodedBytes, "decodedBytes");
        try {
            JSONObject jSONObject = new JSONObject(new String(decodedBytes, Charsets.UTF_8));
            String alg = jSONObject.optString("alg");
            Intrinsics.checkNotNullExpressionValue(alg, "alg");
            if (alg.length() > 0 && Intrinsics.areEqual(alg, "RS256")) {
                z10 = true;
            } else {
                z10 = false;
            }
            String optString = jSONObject.optString("kid");
            Intrinsics.checkNotNullExpressionValue(optString, "jsonObj.optString(\"kid\")");
            if (optString.length() > 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            String optString2 = jSONObject.optString(ClientData.KEY_TYPE);
            Intrinsics.checkNotNullExpressionValue(optString2, "jsonObj.optString(\"typ\")");
            if (optString2.length() > 0) {
                z12 = true;
            } else {
                z12 = false;
            }
            if (!z10 || !z11 || !z12) {
                return false;
            }
            return true;
        } catch (JSONException unused) {
            return false;
        }
    }

    @NotNull
    public final String a() {
        return this.f14777c;
    }

    @NotNull
    public final JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("alg", this.f14775a);
        jSONObject.put(ClientData.KEY_TYPE, this.f14776b);
        jSONObject.put("kid", this.f14777c);
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
        if (!(obj instanceof AuthenticationTokenHeader)) {
            return false;
        }
        AuthenticationTokenHeader authenticationTokenHeader = (AuthenticationTokenHeader) obj;
        if (Intrinsics.areEqual(this.f14775a, authenticationTokenHeader.f14775a) && Intrinsics.areEqual(this.f14776b, authenticationTokenHeader.f14776b) && Intrinsics.areEqual(this.f14777c, authenticationTokenHeader.f14777c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f14775a.hashCode()) * 31) + this.f14776b.hashCode()) * 31) + this.f14777c.hashCode();
    }

    @NotNull
    public String toString() {
        String jSONObject = c().toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject, "headerJsonObject.toString()");
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeString(this.f14775a);
        dest.writeString(this.f14776b);
        dest.writeString(this.f14777c);
    }

    public AuthenticationTokenHeader(@NotNull Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f14775a = v0.k(parcel.readString(), "alg");
        this.f14776b = v0.k(parcel.readString(), ClientData.KEY_TYPE);
        this.f14777c = v0.k(parcel.readString(), "kid");
    }
}
