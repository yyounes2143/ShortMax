package com.google.android.gms.internal.p003firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaiy  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaiy implements Parcelable.Creator<zzaiz> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaiz createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            SafeParcelReader.getFieldId(readHeader);
            SafeParcelReader.skipUnknownField(parcel, readHeader);
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzaiz();
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaiz[] newArray(int i10) {
        return new zzaiz[i10];
    }
}
