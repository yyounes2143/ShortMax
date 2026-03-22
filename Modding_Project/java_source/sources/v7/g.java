package v7;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.firebase.auth.internal.zzah;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class g implements Parcelable.Creator<zzah> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzah createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        long j10 = 0;
        long j11 = 0;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId != 1) {
                if (fieldId != 2) {
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                } else {
                    j11 = SafeParcelReader.readLong(parcel, readHeader);
                }
            } else {
                j10 = SafeParcelReader.readLong(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzah(j10, j11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzah[] newArray(int i10) {
        return new zzah[i10];
    }
}
