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
@SafeParcelable.Class(creator = "GithubAuthCredentialCreator")
/* loaded from: classes5.dex */
public class GithubAuthCredential extends AuthCredential {
    @NonNull
    public static final Parcelable.Creator<GithubAuthCredential> CREATOR = new t();
    @SafeParcelable.Field(getter = "getToken", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private String f20441a;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public GithubAuthCredential(@SafeParcelable.Param(id = 1) String str) {
        this.f20441a = Preconditions.checkNotEmpty(str);
    }

    public static zzajb w(@NonNull GithubAuthCredential githubAuthCredential, @Nullable String str) {
        Preconditions.checkNotNull(githubAuthCredential);
        return new zzajb(null, githubAuthCredential.f20441a, githubAuthCredential.m(), null, null, null, str, null, null);
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String m() {
        return "github.com";
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String o() {
        return "github.com";
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public final AuthCredential p() {
        return new GithubAuthCredential(this.f20441a);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f20441a, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
