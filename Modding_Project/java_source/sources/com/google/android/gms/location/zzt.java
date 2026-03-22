package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* compiled from: com.google.android.gms:play-services-location@@18.0.0 */
/* loaded from: classes5.dex */
public final class zzt implements Parcelable.Creator<zzs> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzs createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        boolean z10 = true;
        long j10 = 50;
        float f10 = 0.0f;
        long j11 = Long.MAX_VALUE;
        int i10 = Integer.MAX_VALUE;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId != 1) {
                if (fieldId != 2) {
                    if (fieldId != 3) {
                        if (fieldId != 4) {
                            if (fieldId != 5) {
                                SafeParcelReader.skipUnknownField(parcel, readHeader);
                            } else {
                                i10 = SafeParcelReader.readInt(parcel, readHeader);
                            }
                        } else {
                            j11 = SafeParcelReader.readLong(parcel, readHeader);
                        }
                    } else {
                        f10 = SafeParcelReader.readFloat(parcel, readHeader);
                    }
                } else {
                    j10 = SafeParcelReader.readLong(parcel, readHeader);
                }
            } else {
                z10 = SafeParcelReader.readBoolean(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzs(z10, j10, f10, j11, i10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzs[] newArray(int i10) {
        return new zzs[i10];
    }
}
