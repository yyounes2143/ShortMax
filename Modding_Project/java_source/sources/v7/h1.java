package v7;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.firebase.auth.internal.zzx;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class h1 implements Parcelable.Creator<zzx> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzx createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        boolean z10 = false;
        String str2 = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId != 1) {
                if (fieldId != 2) {
                    if (fieldId != 3) {
                        SafeParcelReader.skipUnknownField(parcel, readHeader);
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
        return new zzx(str, str2, z10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzx[] newArray(int i10) {
        return new zzx[i10];
    }
}
