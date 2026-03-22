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
@SafeParcelable.Class(creator = "PlayGamesAuthCredentialCreator")
/* loaded from: classes5.dex */
public class PlayGamesAuthCredential extends AuthCredential {
    @NonNull
    public static final Parcelable.Creator<PlayGamesAuthCredential> CREATOR = new z();
    @SafeParcelable.Field(getter = "getServerAuthCode", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private final String f20453a;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public PlayGamesAuthCredential(@NonNull @SafeParcelable.Param(id = 1) String str) {
        this.f20453a = Preconditions.checkNotEmpty(str);
    }

    public static zzajb w(@NonNull PlayGamesAuthCredential playGamesAuthCredential, @Nullable String str) {
        Preconditions.checkNotNull(playGamesAuthCredential);
        return new zzajb(null, null, playGamesAuthCredential.m(), null, null, playGamesAuthCredential.f20453a, str, null, null);
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String m() {
        return "playgames.google.com";
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String o() {
        return "playgames.google.com";
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public final AuthCredential p() {
        return new PlayGamesAuthCredential(this.f20453a);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f20453a, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
