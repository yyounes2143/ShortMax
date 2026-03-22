package v7;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.firebase.auth.PhoneMultiFactorInfo;
import com.google.firebase.auth.TotpMultiFactorInfo;
import com.google.firebase.auth.internal.zzaf;
import com.google.firebase.auth.internal.zzal;
import com.google.firebase.auth.internal.zzam;
import com.google.firebase.auth.zze;
import java.util.ArrayList;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class i implements Parcelable.Creator<zzal> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzal createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        ArrayList arrayList = null;
        zzam zzamVar = null;
        String str = null;
        zze zzeVar = null;
        zzaf zzafVar = null;
        ArrayList arrayList2 = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 1:
                    arrayList = SafeParcelReader.createTypedList(parcel, readHeader, PhoneMultiFactorInfo.CREATOR);
                    break;
                case 2:
                    zzamVar = (zzam) SafeParcelReader.createParcelable(parcel, readHeader, zzam.CREATOR);
                    break;
                case 3:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 4:
                    zzeVar = (zze) SafeParcelReader.createParcelable(parcel, readHeader, zze.CREATOR);
                    break;
                case 5:
                    zzafVar = (zzaf) SafeParcelReader.createParcelable(parcel, readHeader, zzaf.CREATOR);
                    break;
                case 6:
                    arrayList2 = SafeParcelReader.createTypedList(parcel, readHeader, TotpMultiFactorInfo.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzal(arrayList, zzamVar, str, zzeVar, zzafVar, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzal[] newArray(int i10) {
        return new zzal[i10];
    }
}
