package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class w implements Parcelable.Creator<PhoneAuthCredential> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PhoneAuthCredential createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        boolean z10 = false;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId != 1) {
                if (fieldId != 2) {
                    if (fieldId != 4) {
                        if (fieldId != 5) {
                            if (fieldId != 6) {
                                SafeParcelReader.skipUnknownField(parcel, readHeader);
                            } else {
                                str4 = SafeParcelReader.createString(parcel, readHeader);
                            }
                        } else {
                            z10 = SafeParcelReader.readBoolean(parcel, readHeader);
                        }
                    } else {
                        str3 = SafeParcelReader.createString(parcel, readHeader);
                    }
                } else {
                    str2 = SafeParcelReader.createString(parcel, readHeader);
                }
            } else {
                str = SafeParcelReader.createString(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new PhoneAuthCredential(str, str2, str3, z10, str4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PhoneAuthCredential[] newArray(int i10) {
        return new PhoneAuthCredential[i10];
    }
}
