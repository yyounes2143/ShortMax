package f7;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
public final class d extends a implements f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.inappreview.protocol.IInAppReviewService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f7.f
    public final void h(String str, Bundle bundle, h hVar) throws RemoteException {
        Parcel i10 = i();
        i10.writeString(str);
        int i11 = c.f51635a;
        i10.writeInt(1);
        bundle.writeToParcel(i10, 0);
        i10.writeStrongBinder(hVar);
        j(2, i10);
    }
}
