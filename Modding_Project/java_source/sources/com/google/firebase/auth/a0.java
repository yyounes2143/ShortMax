package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.p003firebaseauthapi.zzaiz;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class a0 implements Parcelable.Creator<TotpMultiFactorInfo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TotpMultiFactorInfo createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        String str2 = null;
        zzaiz zzaizVar = null;
        long j10 = 0;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId != 1) {
                if (fieldId != 2) {
                    if (fieldId != 3) {
                        if (fieldId != 4) {
                            SafeParcelReader.skipUnknownField(parcel, readHeader);
                        } else {
                            zzaizVar = (zzaiz) SafeParcelReader.createParcelable(parcel, readHeader, zzaiz.CREATOR);
                        }
                    } else {
                        j10 = SafeParcelReader.readLong(parcel, readHeader);
                    }
                } else {
                    str2 = SafeParcelReader.createString(parcel, readHeader);
                }
            } else {
                str = SafeParcelReader.createString(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new TotpMultiFactorInfo(str, str2, j10, zzaizVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TotpMultiFactorInfo[] newArray(int i10) {
        return new TotpMultiFactorInfo[i10];
    }
}
