package com.google.android.gms.internal.p003firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzahu  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzahu implements Parcelable.Creator<zzahv> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzahv createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        String str2 = null;
        Long l10 = null;
        String str3 = null;
        Long l11 = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId != 2) {
                if (fieldId != 3) {
                    if (fieldId != 4) {
                        if (fieldId != 5) {
                            if (fieldId != 6) {
                                SafeParcelReader.skipUnknownField(parcel, readHeader);
                            } else {
                                l11 = SafeParcelReader.readLongObject(parcel, readHeader);
                            }
                        } else {
                            str3 = SafeParcelReader.createString(parcel, readHeader);
                        }
                    } else {
                        l10 = SafeParcelReader.readLongObject(parcel, readHeader);
                    }
                } else {
                    str2 = SafeParcelReader.createString(parcel, readHeader);
                }
            } else {
                str = SafeParcelReader.createString(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzahv(str, str2, l10, str3, l11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzahv[] newArray(int i10) {
        return new zzahv[i10];
    }
}
