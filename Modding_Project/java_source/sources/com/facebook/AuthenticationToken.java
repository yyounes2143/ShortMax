package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.v0;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.io.IOException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AuthenticationToken.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAuthenticationToken.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthenticationToken.kt\ncom/facebook/AuthenticationToken\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,212:1\n1#2:213\n*E\n"})
/* loaded from: classes3.dex */
public final class AuthenticationToken implements Parcelable {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f14748a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f14749b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final AuthenticationTokenHeader f14750c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final AuthenticationTokenClaims f14751d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f14752e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final b f14747f = new b(null);
    @NotNull
    public static final Parcelable.Creator<AuthenticationToken> CREATOR = new a();

    /* compiled from: AuthenticationToken.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<AuthenticationToken> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public AuthenticationToken createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new AuthenticationToken(source);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public AuthenticationToken[] newArray(int i10) {
            return new AuthenticationToken[i10];
        }
    }

    /* compiled from: AuthenticationToken.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@Nullable AuthenticationToken authenticationToken) {
            AuthenticationTokenManager.f14778d.a().e(authenticationToken);
        }

        private b() {
        }
    }

    public AuthenticationToken(@NotNull String token, @NotNull String expectedNonce) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(expectedNonce, "expectedNonce");
        v0.g(token, BidResponsed.KEY_TOKEN);
        v0.g(expectedNonce, "expectedNonce");
        List split$default = StringsKt.split$default(token, new String[]{"."}, false, 0, 6, null);
        if (split$default.size() == 3) {
            String str = (String) split$default.get(0);
            String str2 = (String) split$default.get(1);
            String str3 = (String) split$default.get(2);
            this.f14748a = token;
            this.f14749b = expectedNonce;
            AuthenticationTokenHeader authenticationTokenHeader = new AuthenticationTokenHeader(str);
            this.f14750c = authenticationTokenHeader;
            this.f14751d = new AuthenticationTokenClaims(str2, expectedNonce);
            if (a(str, str2, str3, authenticationTokenHeader.a())) {
                this.f14752e = str3;
                return;
            }
            throw new IllegalArgumentException("Invalid Signature");
        }
        throw new IllegalArgumentException("Invalid IdToken string");
    }

    private final boolean a(String str, String str2, String str3, String str4) {
        try {
            String c10 = s4.b.c(str4);
            if (c10 == null) {
                return false;
            }
            PublicKey b10 = s4.b.b(c10);
            return s4.b.e(b10, str + '.' + str2, str3);
        } catch (IOException | InvalidKeySpecException unused) {
            return false;
        }
    }

    @NotNull
    public final JSONObject b() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("token_string", this.f14748a);
        jSONObject.put("expected_nonce", this.f14749b);
        jSONObject.put("header", this.f14750c.c());
        jSONObject.put("claims", this.f14751d.b());
        jSONObject.put(InAppPurchaseMetaData.KEY_SIGNATURE, this.f14752e);
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
        if (!(obj instanceof AuthenticationToken)) {
            return false;
        }
        AuthenticationToken authenticationToken = (AuthenticationToken) obj;
        if (Intrinsics.areEqual(this.f14748a, authenticationToken.f14748a) && Intrinsics.areEqual(this.f14749b, authenticationToken.f14749b) && Intrinsics.areEqual(this.f14750c, authenticationToken.f14750c) && Intrinsics.areEqual(this.f14751d, authenticationToken.f14751d) && Intrinsics.areEqual(this.f14752e, authenticationToken.f14752e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f14748a.hashCode()) * 31) + this.f14749b.hashCode()) * 31) + this.f14750c.hashCode()) * 31) + this.f14751d.hashCode()) * 31) + this.f14752e.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeString(this.f14748a);
        dest.writeString(this.f14749b);
        dest.writeParcelable(this.f14750c, i10);
        dest.writeParcelable(this.f14751d, i10);
        dest.writeString(this.f14752e);
    }

    public AuthenticationToken(@NotNull Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f14748a = v0.k(parcel.readString(), BidResponsed.KEY_TOKEN);
        this.f14749b = v0.k(parcel.readString(), "expectedNonce");
        Parcelable readParcelable = parcel.readParcelable(AuthenticationTokenHeader.class.getClassLoader());
        if (readParcelable != null) {
            this.f14750c = (AuthenticationTokenHeader) readParcelable;
            Parcelable readParcelable2 = parcel.readParcelable(AuthenticationTokenClaims.class.getClassLoader());
            if (readParcelable2 != null) {
                this.f14751d = (AuthenticationTokenClaims) readParcelable2;
                this.f14752e = v0.k(parcel.readString(), InAppPurchaseMetaData.KEY_SIGNATURE);
                return;
            }
            throw new IllegalStateException("Required value was null.");
        }
        throw new IllegalStateException("Required value was null.");
    }
}
