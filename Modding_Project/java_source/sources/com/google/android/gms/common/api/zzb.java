package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
/* loaded from: classes4.dex */
public final class zzb implements Parcelable.Creator {
    public static final ApiMetadata zza(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        boolean z10 = false;
        ComplianceOptions complianceOptions = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId != 1) {
                if (fieldId != 2) {
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                } else {
                    z10 = SafeParcelReader.readBoolean(parcel, readHeader);
                }
            } else {
                complianceOptions = (ComplianceOptions) SafeParcelReader.createParcelable(parcel, readHeader, ComplianceOptions.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new ApiMetadata(complianceOptions, z10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zza(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new ApiMetadata[i10];
    }
}
