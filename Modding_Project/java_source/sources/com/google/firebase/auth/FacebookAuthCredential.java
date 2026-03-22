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
@SafeParcelable.Class(creator = "FacebookAuthCredentialCreator")
/* loaded from: classes5.dex */
public class FacebookAuthCredential extends AuthCredential {
    @NonNull
    public static final Parcelable.Creator<FacebookAuthCredential> CREATOR = new g0();
    @SafeParcelable.Field(getter = "getAccessToken", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private final String f20407a;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public FacebookAuthCredential(@SafeParcelable.Param(id = 1) String str) {
        this.f20407a = Preconditions.checkNotEmpty(str);
    }

    @NonNull
    public static zzajb w(@NonNull FacebookAuthCredential facebookAuthCredential, @Nullable String str) {
        Preconditions.checkNotNull(facebookAuthCredential);
        return new zzajb(null, facebookAuthCredential.f20407a, facebookAuthCredential.m(), null, null, null, str, null, null);
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String m() {
        return "facebook.com";
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String o() {
        return "facebook.com";
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public final AuthCredential p() {
        return new FacebookAuthCredential(this.f20407a);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f20407a, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
