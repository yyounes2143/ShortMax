package com.google.firebase.auth.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.firebase.auth.zze;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class h implements Parcelable.Creator<zzz> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzz createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        zzaf zzafVar = null;
        zzx zzxVar = null;
        zze zzeVar = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId != 1) {
                if (fieldId != 2) {
                    if (fieldId != 3) {
                        SafeParcelReader.skipUnknownField(parcel, readHeader);
                    } else {
                        zzeVar = (zze) SafeParcelReader.createParcelable(parcel, readHeader, zze.CREATOR);
                    }
                } else {
                    zzxVar = (zzx) SafeParcelReader.createParcelable(parcel, readHeader, zzx.CREATOR);
                }
            } else {
                zzafVar = (zzaf) SafeParcelReader.createParcelable(parcel, readHeader, zzaf.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzz(zzafVar, zzxVar, zzeVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzz[] newArray(int i10) {
        return new zzz[i10];
    }
}
