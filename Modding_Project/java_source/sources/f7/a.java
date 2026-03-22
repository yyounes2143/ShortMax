package f7;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f51633a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51634b = "com.google.android.play.core.inappreview.protocol.IInAppReviewService";

    /* JADX INFO: Access modifiers changed from: protected */
    public a(IBinder iBinder, String str) {
        this.f51633a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f51633a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel i() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f51634b);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void j(int i10, Parcel parcel) throws RemoteException {
        try {
            this.f51633a.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
