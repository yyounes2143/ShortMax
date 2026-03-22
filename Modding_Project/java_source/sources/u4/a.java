package u4;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
/* compiled from: IReceiverService.java */
/* loaded from: classes3.dex */
public interface a extends IInterface {

    /* compiled from: IReceiverService.java */
    /* renamed from: u4.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static abstract class AbstractBinderC0941a extends Binder implements a {

        /* compiled from: IReceiverService.java */
        /* renamed from: u4.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        private static class C0942a implements a {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f67795a;

            C0942a(IBinder iBinder) {
                this.f67795a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f67795a;
            }

            @Override // u4.a
            public int g(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.facebook.ppml.receiver.IReceiverService");
                    b.b(obtain, bundle, 0);
                    this.f67795a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static a i(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.facebook.ppml.receiver.IReceiverService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0942a(iBinder);
        }
    }

    /* compiled from: IReceiverService.java */
    /* loaded from: classes3.dex */
    public static class b {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void b(Parcel parcel, T t10, int i10) {
            if (t10 != null) {
                parcel.writeInt(1);
                t10.writeToParcel(parcel, i10);
                return;
            }
            parcel.writeInt(0);
        }
    }

    int g(Bundle bundle) throws RemoteException;
}
