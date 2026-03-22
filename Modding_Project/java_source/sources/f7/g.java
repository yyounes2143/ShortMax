package f7;

import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
public abstract class g extends b implements h {
    public g() {
        super("com.google.android.play.core.inappreview.protocol.IInAppReviewServiceCallback");
    }

    @Override // f7.b
    protected final boolean i(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        Parcelable parcelable;
        if (i10 == 2) {
            Parcelable.Creator creator = Bundle.CREATOR;
            int i12 = c.f51635a;
            if (parcel.readInt() == 0) {
                parcelable = null;
            } else {
                parcelable = (Parcelable) creator.createFromParcel(parcel);
            }
            Bundle bundle = (Bundle) parcelable;
            int dataAvail = parcel.dataAvail();
            if (dataAvail <= 0) {
                zzb(bundle);
                return true;
            }
            throw new BadParcelableException("Parcel data not fully consumed, unread size: " + dataAvail);
        }
        return false;
    }
}
