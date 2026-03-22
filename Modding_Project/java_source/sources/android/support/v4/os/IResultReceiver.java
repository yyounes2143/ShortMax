package android.support.v4.os;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public interface IResultReceiver extends IInterface {
    public static final String B8 = "android$support$v4$os$IResultReceiver".replace('$', '.');

    /* loaded from: classes.dex */
    public static class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T c(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void d(Parcel parcel, T t10, int i10) {
            if (t10 != null) {
                parcel.writeInt(1);
                t10.writeToParcel(parcel, i10);
                return;
            }
            parcel.writeInt(0);
        }
    }

    void a(int i10, Bundle bundle) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IResultReceiver {

        /* loaded from: classes.dex */
        private static class a implements IResultReceiver {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f829a;

            a(IBinder iBinder) {
                this.f829a = iBinder;
            }

            @Override // android.support.v4.os.IResultReceiver
            public void a(int i10, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IResultReceiver.B8);
                    obtain.writeInt(i10);
                    a.d(obtain, bundle, 0);
                    this.f829a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f829a;
            }
        }

        public Stub() {
            attachInterface(this, IResultReceiver.B8);
        }

        public static IResultReceiver i(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IResultReceiver.B8);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IResultReceiver)) {
                return (IResultReceiver) queryLocalInterface;
            }
            return new a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            String str = IResultReceiver.B8;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            } else if (i10 != 1) {
                return super.onTransact(i10, parcel, parcel2, i11);
            } else {
                a(parcel.readInt(), (Bundle) a.c(parcel, Bundle.CREATOR));
                return true;
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static class Default implements IResultReceiver {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.v4.os.IResultReceiver
        public void a(int i10, Bundle bundle) throws RemoteException {
        }
    }
}
