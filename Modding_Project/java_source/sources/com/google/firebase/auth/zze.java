package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.p003firebaseauthapi.zzac;
import com.google.android.gms.internal.p003firebaseauthapi.zzajb;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@SafeParcelable.Class(creator = "DefaultOAuthCredentialCreator")
/* loaded from: classes5.dex */
public final class zze extends OAuthCredential {
    public static final Parcelable.Creator<zze> CREATOR = new e0();
    @SafeParcelable.Field(getter = "getProvider", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private final String f20595a;
    @Nullable
    @SafeParcelable.Field(getter = "getIdToken", id = 2)

    /* renamed from: b  reason: collision with root package name */
    private final String f20596b;
    @Nullable
    @SafeParcelable.Field(getter = "getAccessToken", id = 3)

    /* renamed from: c  reason: collision with root package name */
    private final String f20597c;
    @Nullable
    @SafeParcelable.Field(getter = "getWebSignInCredential", id = 4)

    /* renamed from: d  reason: collision with root package name */
    private final zzajb f20598d;
    @Nullable
    @SafeParcelable.Field(getter = "getPendingToken", id = 5)

    /* renamed from: e  reason: collision with root package name */
    private final String f20599e;
    @Nullable
    @SafeParcelable.Field(getter = "getSecret", id = 6)

    /* renamed from: f  reason: collision with root package name */
    private final String f20600f;
    @Nullable
    @SafeParcelable.Field(getter = "getRawNonce", id = 7)

    /* renamed from: g  reason: collision with root package name */
    private final String f20601g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zze(@Nullable @SafeParcelable.Param(id = 1) String str, @Nullable @SafeParcelable.Param(id = 2) String str2, @Nullable @SafeParcelable.Param(id = 3) String str3, @Nullable @SafeParcelable.Param(id = 4) zzajb zzajbVar, @Nullable @SafeParcelable.Param(id = 5) String str4, @Nullable @SafeParcelable.Param(id = 6) String str5, @Nullable @SafeParcelable.Param(id = 7) String str6) {
        this.f20595a = zzac.zzb(str);
        this.f20596b = str2;
        this.f20597c = str3;
        this.f20598d = zzajbVar;
        this.f20599e = str4;
        this.f20600f = str5;
        this.f20601g = str6;
    }

    public static zze R(zzajb zzajbVar) {
        Preconditions.checkNotNull(zzajbVar, "Must specify a non-null webSignInCredential");
        return new zze(null, null, null, zzajbVar, null, null, null);
    }

    public static zze T(String str, String str2, String str3, @Nullable String str4, @Nullable String str5) {
        Preconditions.checkNotEmpty(str, "Must specify a non-empty providerId");
        if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Must specify an idToken or an accessToken.");
        }
        return new zze(str, str2, str3, null, str4, str5, null);
    }

    public static zzajb x(zze zzeVar, @Nullable String str) {
        Preconditions.checkNotNull(zzeVar);
        zzajb zzajbVar = zzeVar.f20598d;
        if (zzajbVar != null) {
            return zzajbVar;
        }
        return new zzajb(zzeVar.getIdToken(), zzeVar.getAccessToken(), zzeVar.m(), null, zzeVar.w(), null, str, zzeVar.f20599e, zzeVar.f20601g);
    }

    @Override // com.google.firebase.auth.OAuthCredential
    @Nullable
    public final String getAccessToken() {
        return this.f20597c;
    }

    @Override // com.google.firebase.auth.OAuthCredential
    @Nullable
    public final String getIdToken() {
        return this.f20596b;
    }

    @Override // com.google.firebase.auth.AuthCredential
    public final String m() {
        return this.f20595a;
    }

    @Override // com.google.firebase.auth.AuthCredential
    public final String o() {
        return this.f20595a;
    }

    @Override // com.google.firebase.auth.AuthCredential
    public final AuthCredential p() {
        return new zze(this.f20595a, this.f20596b, this.f20597c, this.f20598d, this.f20599e, this.f20600f, this.f20601g);
    }

    @Override // com.google.firebase.auth.OAuthCredential
    @Nullable
    public final String w() {
        return this.f20600f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, m(), false);
        SafeParcelWriter.writeString(parcel, 2, getIdToken(), false);
        SafeParcelWriter.writeString(parcel, 3, getAccessToken(), false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.f20598d, i10, false);
        SafeParcelWriter.writeString(parcel, 5, this.f20599e, false);
        SafeParcelWriter.writeString(parcel, 6, w(), false);
        SafeParcelWriter.writeString(parcel, 7, this.f20601g, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
