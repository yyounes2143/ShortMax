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
@SafeParcelable.Class(creator = "PhoneAuthCredentialCreator")
/* loaded from: classes5.dex */
public class PhoneAuthCredential extends AuthCredential implements Cloneable {
    @NonNull
    public static final Parcelable.Creator<PhoneAuthCredential> CREATOR = new w();
    @Nullable
    @SafeParcelable.Field(getter = "getSessionInfo", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private String f20444a;
    @Nullable
    @SafeParcelable.Field(getter = "getSmsCode", id = 2)

    /* renamed from: b  reason: collision with root package name */
    private String f20445b;
    @Nullable
    @SafeParcelable.Field(getter = "getPhoneNumber", id = 4)

    /* renamed from: c  reason: collision with root package name */
    private String f20446c;
    @SafeParcelable.Field(getter = "getAutoCreate", id = 5)

    /* renamed from: d  reason: collision with root package name */
    private boolean f20447d;
    @Nullable
    @SafeParcelable.Field(getter = "getTemporaryProof", id = 6)

    /* renamed from: e  reason: collision with root package name */
    private String f20448e;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public PhoneAuthCredential(@Nullable @SafeParcelable.Param(id = 1) String str, @Nullable @SafeParcelable.Param(id = 2) String str2, @Nullable @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) boolean z10, @Nullable @SafeParcelable.Param(id = 6) String str4) {
        boolean z11;
        if ((!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) || (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4))) {
            z11 = true;
        } else {
            z11 = false;
        }
        Preconditions.checkArgument(z11, "Cannot create PhoneAuthCredential without either sessionInfo + smsCode or temporary proof + phoneNumber.");
        this.f20444a = str;
        this.f20445b = str2;
        this.f20446c = str3;
        this.f20447d = z10;
        this.f20448e = str4;
    }

    @NonNull
    public static PhoneAuthCredential T(@NonNull String str, @NonNull String str2) {
        return new PhoneAuthCredential(null, null, str, true, str2);
    }

    @NonNull
    public static PhoneAuthCredential x(@NonNull String str, @NonNull String str2) {
        return new PhoneAuthCredential(str, str2, null, true, null);
    }

    @NonNull
    public final PhoneAuthCredential R(boolean z10) {
        this.f20447d = false;
        return this;
    }

    @NonNull
    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return new PhoneAuthCredential(this.f20444a, w(), this.f20446c, this.f20447d, this.f20448e);
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String m() {
        return HintConstants.AUTOFILL_HINT_PHONE;
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public String o() {
        return HintConstants.AUTOFILL_HINT_PHONE;
    }

    @Override // com.google.firebase.auth.AuthCredential
    @NonNull
    public final AuthCredential p() {
        return (PhoneAuthCredential) clone();
    }

    @Nullable
    public String w() {
        return this.f20445b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f20444a, false);
        SafeParcelWriter.writeString(parcel, 2, w(), false);
        SafeParcelWriter.writeString(parcel, 4, this.f20446c, false);
        SafeParcelWriter.writeBoolean(parcel, 5, this.f20447d);
        SafeParcelWriter.writeString(parcel, 6, this.f20448e, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Nullable
    public final String zzb() {
        return this.f20446c;
    }

    @Nullable
    public final String zzc() {
        return this.f20444a;
    }

    @Nullable
    public final String zzd() {
        return this.f20448e;
    }

    public final boolean zze() {
        return this.f20447d;
    }
}
