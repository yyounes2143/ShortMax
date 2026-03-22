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
@SafeParcelable.Class(creator = "TwitterAuthCredentialCreator")
/* loaded from: classes5.dex */
public class TwitterAuthCredential extends AuthCredential {
    @NonNull
    public static final Parcelable.Creator<TwitterAuthCredential> CREATOR = new b0();
    @SafeParcelable.Field(getter = "getToken", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private String f20458a;
    @SafeParcelable.Field(getter = "getSecret", id = 2)

    /* renamed from: b  reason: collision with root package name */
    private String f20459b;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public TwitterAuthCredential(@NonNull @SafeParcelable.Param(id = 1) String str, @NonNull @SafeParcelable.Param(id = 2) String str2) {
        this.f20458a = Preconditions.checkNotEmpty(str);
        this.f20459b = Preconditions.checkNotEmpty(str2);
    }

    public static zzajb w(@NonNull TwitterAuthCredential twitterAuthCredential, @Nullable String str) {
        Preconditions.checkNotNull(twitterAuthCredential);
        return new zzajb(null, twitterAuthCredential.f20458a, twitterAuthCredential.m(), null, twitterAuthCredential.f20459b, null, str, null, null);
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String m() {
        return "twitter.com";
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String o() {
        return "twitter.com";
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public final AuthCredential p() {
        return new TwitterAuthCredential(this.f20458a, this.f20459b);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f20458a, false);
        SafeParcelWriter.writeString(parcel, 2, this.f20459b, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
