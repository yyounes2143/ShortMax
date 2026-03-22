package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class c0 implements Parcelable.Creator<UserProfileChangeRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ UserProfileChangeRequest createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        boolean z10 = false;
        boolean z11 = false;
        String str2 = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId != 2) {
                if (fieldId != 3) {
                    if (fieldId != 4) {
                        if (fieldId != 5) {
                            SafeParcelReader.skipUnknownField(parcel, readHeader);
                        } else {
                            z11 = SafeParcelReader.readBoolean(parcel, readHeader);
                        }
                    } else {
                        z10 = SafeParcelReader.readBoolean(parcel, readHeader);
                    }
                } else {
                    str2 = SafeParcelReader.createString(parcel, readHeader);
                }
            } else {
                str = SafeParcelReader.createString(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new UserProfileChangeRequest(str, str2, z10, z11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ UserProfileChangeRequest[] newArray(int i10) {
        return new UserProfileChangeRequest[i10];
    }
}
