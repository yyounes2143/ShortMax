package com.google.firebase.auth.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.auth.AdditionalUserInfo;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.zze;
import java.util.List;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@SafeParcelable.Class(creator = "DefaultAuthResultCreator")
/* loaded from: classes5.dex */
public final class zzz implements AuthResult {
    public static final Parcelable.Creator<zzz> CREATOR = new h();
    @NonNull
    @SafeParcelable.Field(getter = "getUser", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private zzaf f20532a;
    @Nullable
    @SafeParcelable.Field(getter = "getAdditionalUserInfo", id = 2)

    /* renamed from: b  reason: collision with root package name */
    private zzx f20533b;
    @Nullable
    @SafeParcelable.Field(getter = "getOAuthCredential", id = 3)

    /* renamed from: c  reason: collision with root package name */
    private zze f20534c;

    public zzz(zzaf zzafVar) {
        zzaf zzafVar2 = (zzaf) Preconditions.checkNotNull(zzafVar);
        this.f20532a = zzafVar2;
        List<zzab> w02 = zzafVar2.w0();
        this.f20533b = null;
        for (int i10 = 0; i10 < w02.size(); i10++) {
            if (!TextUtils.isEmpty(w02.get(i10).zza())) {
                this.f20533b = new zzx(w02.get(i10).l(), w02.get(i10).zza(), zzafVar.z0());
            }
        }
        if (this.f20533b == null) {
            this.f20533b = new zzx(zzafVar.z0());
        }
        this.f20534c = zzafVar.n0();
    }

    @Nullable
    public final AdditionalUserInfo a() {
        return this.f20533b;
    }

    @Nullable
    public final FirebaseUser b() {
        return this.f20532a;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, b(), i10, false);
        SafeParcelWriter.writeParcelable(parcel, 2, a(), i10, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f20534c, i10, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzz(@NonNull @SafeParcelable.Param(id = 1) zzaf zzafVar, @Nullable @SafeParcelable.Param(id = 2) zzx zzxVar, @Nullable @SafeParcelable.Param(id = 3) zze zzeVar) {
        this.f20532a = zzafVar;
        this.f20533b = zzxVar;
        this.f20534c = zzeVar;
    }
}
