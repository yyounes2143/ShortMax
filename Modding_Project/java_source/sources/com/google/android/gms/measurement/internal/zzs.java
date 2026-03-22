package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzs implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        boolean z10 = false;
        int i10 = 0;
        boolean z11 = false;
        boolean z12 = false;
        int i11 = 0;
        int i12 = 0;
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        long j13 = 0;
        long j14 = 0;
        long j15 = 0;
        long j16 = 0;
        String str = "";
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        Boolean bool = null;
        ArrayList<String> arrayList = null;
        String str11 = null;
        String str12 = null;
        int i13 = 100;
        boolean z13 = true;
        boolean z14 = true;
        long j17 = -2147483648L;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 2:
                    str5 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 3:
                    str6 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 4:
                    str7 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 5:
                    str8 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 6:
                    j10 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 7:
                    j11 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 8:
                    str9 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 9:
                    z13 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 10:
                    z10 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 11:
                    j17 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 12:
                    str10 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 13:
                case 17:
                case 19:
                case 20:
                case 24:
                case 33:
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
                case 14:
                    j12 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 15:
                    i10 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 16:
                    z14 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 18:
                    z11 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 21:
                    bool = SafeParcelReader.readBooleanObject(parcel, readHeader);
                    break;
                case 22:
                    j13 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 23:
                    arrayList = SafeParcelReader.createStringList(parcel, readHeader);
                    break;
                case 25:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 26:
                    str2 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 27:
                    str11 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 28:
                    z12 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 29:
                    j14 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 30:
                    i13 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 31:
                    str3 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 32:
                    i11 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 34:
                    j15 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 35:
                    str12 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 36:
                    str4 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 37:
                    j16 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 38:
                    i12 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzr(str5, str6, str7, str8, j10, j11, str9, z13, z10, j17, str10, j12, i10, z14, z11, bool, j13, arrayList, str, str2, str11, z12, j14, i13, str3, i11, j15, str12, str4, j16, i12);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzr[i10];
    }
}
