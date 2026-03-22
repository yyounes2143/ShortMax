package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.autofill.HintConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@SafeParcelable.Class(creator = "EmailAuthCredentialCreator")
/* loaded from: classes5.dex */
public class EmailAuthCredential extends AuthCredential {
    @NonNull
    public static final Parcelable.Creator<EmailAuthCredential> CREATOR = new f0();
    @SafeParcelable.Field(getter = "getEmail", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private String f20402a;
    @Nullable
    @SafeParcelable.Field(getter = "getPassword", id = 2)

    /* renamed from: b  reason: collision with root package name */
    private String f20403b;
    @Nullable
    @SafeParcelable.Field(getter = "getSignInLink", id = 3)

    /* renamed from: c  reason: collision with root package name */
    private final String f20404c;
    @Nullable
    @SafeParcelable.Field(getter = "getCachedState", id = 4)

    /* renamed from: d  reason: collision with root package name */
    private String f20405d;
    @SafeParcelable.Field(getter = "isForLinking", id = 5)

    /* renamed from: e  reason: collision with root package name */
    private boolean f20406e;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public EmailAuthCredential(@SafeParcelable.Param(id = 1) String str, @Nullable @SafeParcelable.Param(id = 2) String str2, @Nullable @SafeParcelable.Param(id = 3) String str3, @Nullable @SafeParcelable.Param(id = 4) String str4, @SafeParcelable.Param(id = 5) boolean z10) {
        this.f20402a = Preconditions.checkNotEmpty(str);
        if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Cannot create an EmailAuthCredential without a password or emailLink.");
        }
        this.f20403b = str2;
        this.f20404c = str3;
        this.f20405d = str4;
        this.f20406e = z10;
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String m() {
        return HintConstants.AUTOFILL_HINT_PASSWORD;
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String o() {
        if (!TextUtils.isEmpty(this.f20403b)) {
            return HintConstants.AUTOFILL_HINT_PASSWORD;
        }
        return "emailLink";
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public final AuthCredential p() {
        return new EmailAuthCredential(this.f20402a, this.f20403b, this.f20404c, this.f20405d, this.f20406e);
    }

    @NonNull
    public final EmailAuthCredential w(@NonNull FirebaseUser firebaseUser) {
        this.f20405d = firebaseUser.zze();
        this.f20406e = true;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f20402a, false);
        SafeParcelWriter.writeString(parcel, 2, this.f20403b, false);
        SafeParcelWriter.writeString(parcel, 3, this.f20404c, false);
        SafeParcelWriter.writeString(parcel, 4, this.f20405d, false);
        SafeParcelWriter.writeBoolean(parcel, 5, this.f20406e);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Nullable
    public final String zzb() {
        return this.f20405d;
    }

    @NonNull
    public final String zzc() {
        return this.f20402a;
    }

    @Nullable
    public final String zzd() {
        return this.f20403b;
    }

    @Nullable
    public final String zze() {
        return this.f20404c;
    }

    public final boolean zzf() {
        if (!TextUtils.isEmpty(this.f20404c)) {
            return true;
        }
        return false;
    }

    public final boolean zzg() {
        return this.f20406e;
    }
}
