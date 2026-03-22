package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.p003firebaseauthapi.zzajb;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@SafeParcelable.Class(creator = "GoogleAuthCredentialCreator")
/* loaded from: classes5.dex */
public class GoogleAuthCredential extends AuthCredential {
    @NonNull
    public static final Parcelable.Creator<GoogleAuthCredential> CREATOR = new u();
    @Nullable
    @SafeParcelable.Field(getter = "getIdToken", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private final String f20442a;
    @Nullable
    @SafeParcelable.Field(getter = "getAccessToken", id = 2)

    /* renamed from: b  reason: collision with root package name */
    private final String f20443b;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public GoogleAuthCredential(@Nullable @SafeParcelable.Param(id = 1) String str, @Nullable @SafeParcelable.Param(id = 2) String str2) {
        if (str == null && str2 == null) {
            throw new IllegalArgumentException("Must specify an idToken or an accessToken.");
        }
        if (str != null && str.length() == 0) {
            throw new IllegalArgumentException("idToken cannot be empty");
        }
        if (str2 != null && str2.length() == 0) {
            throw new IllegalArgumentException("accessToken cannot be empty");
        }
        this.f20442a = str;
        this.f20443b = str2;
    }

    public static zzajb w(@NonNull GoogleAuthCredential googleAuthCredential, @Nullable String str) {
        Preconditions.checkNotNull(googleAuthCredential);
        return new zzajb(googleAuthCredential.f20442a, googleAuthCredential.f20443b, googleAuthCredential.m(), null, null, null, str, null, null);
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String m() {
        return "google.com";
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String o() {
        return "google.com";
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public final AuthCredential p() {
        return new GoogleAuthCredential(this.f20442a, this.f20443b);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f20442a, false);
        SafeParcelWriter.writeString(parcel, 2, this.f20443b, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
