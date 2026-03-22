package android.support.customtabs.trusted;

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
public interface ITrustedWebActivityCallback extends IInterface {

    /* renamed from: x8  reason: collision with root package name */
    public static final String f721x8 = "android$support$customtabs$trusted$ITrustedWebActivityCallback".replace('$', '.');

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

    void onExtraCallback(String str, Bundle bundle) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ITrustedWebActivityCallback {
        static final int TRANSACTION_onExtraCallback = 2;

        /* loaded from: classes.dex */
        private static class a implements ITrustedWebActivityCallback {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f722a;

            a(IBinder iBinder) {
                this.f722a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f722a;
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityCallback
            public void onExtraCallback(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ITrustedWebActivityCallback.f721x8);
                    obtain.writeString(str);
                    a.d(obtain, bundle, 0);
                    this.f722a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ITrustedWebActivityCallback.f721x8);
        }

        public static ITrustedWebActivityCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ITrustedWebActivityCallback.f721x8);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ITrustedWebActivityCallback)) {
                return (ITrustedWebActivityCallback) queryLocalInterface;
            }
            return new a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            String str = ITrustedWebActivityCallback.f721x8;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            } else if (i10 != 2) {
                return super.onTransact(i10, parcel, parcel2, i11);
            } else {
                onExtraCallback(parcel.readString(), (Bundle) a.c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static class Default implements ITrustedWebActivityCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityCallback
        public void onExtraCallback(String str, Bundle bundle) throws RemoteException {
        }
    }
}
