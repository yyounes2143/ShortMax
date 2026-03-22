package android.support.customtabs;

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
public interface IEngagementSignalsCallback extends IInterface {

    /* renamed from: v8  reason: collision with root package name */
    public static final String f717v8 = "android$support$customtabs$IEngagementSignalsCallback".replace('$', '.');

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

    void onGreatestScrollPercentageIncreased(int i10, Bundle bundle) throws RemoteException;

    void onSessionEnded(boolean z10, Bundle bundle) throws RemoteException;

    void onVerticalScrollEvent(boolean z10, Bundle bundle) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IEngagementSignalsCallback {
        static final int TRANSACTION_onGreatestScrollPercentageIncreased = 3;
        static final int TRANSACTION_onSessionEnded = 4;
        static final int TRANSACTION_onVerticalScrollEvent = 2;

        /* loaded from: classes.dex */
        private static class a implements IEngagementSignalsCallback {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f718a;

            a(IBinder iBinder) {
                this.f718a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f718a;
            }

            @Override // android.support.customtabs.IEngagementSignalsCallback
            public void onGreatestScrollPercentageIncreased(int i10, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IEngagementSignalsCallback.f717v8);
                    obtain.writeInt(i10);
                    a.d(obtain, bundle, 0);
                    this.f718a.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.IEngagementSignalsCallback
            public void onSessionEnded(boolean z10, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IEngagementSignalsCallback.f717v8);
                    obtain.writeInt(z10 ? 1 : 0);
                    a.d(obtain, bundle, 0);
                    this.f718a.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.IEngagementSignalsCallback
            public void onVerticalScrollEvent(boolean z10, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IEngagementSignalsCallback.f717v8);
                    obtain.writeInt(z10 ? 1 : 0);
                    a.d(obtain, bundle, 0);
                    this.f718a.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IEngagementSignalsCallback.f717v8);
        }

        public static IEngagementSignalsCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IEngagementSignalsCallback.f717v8);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IEngagementSignalsCallback)) {
                return (IEngagementSignalsCallback) queryLocalInterface;
            }
            return new a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            String str = IEngagementSignalsCallback.f717v8;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            boolean z10 = false;
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return super.onTransact(i10, parcel, parcel2, i11);
                    }
                    if (parcel.readInt() != 0) {
                        z10 = true;
                    }
                    onSessionEnded(z10, (Bundle) a.c(parcel, Bundle.CREATOR));
                } else {
                    onGreatestScrollPercentageIncreased(parcel.readInt(), (Bundle) a.c(parcel, Bundle.CREATOR));
                }
            } else {
                if (parcel.readInt() != 0) {
                    z10 = true;
                }
                onVerticalScrollEvent(z10, (Bundle) a.c(parcel, Bundle.CREATOR));
            }
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static class Default implements IEngagementSignalsCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.customtabs.IEngagementSignalsCallback
        public void onGreatestScrollPercentageIncreased(int i10, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.IEngagementSignalsCallback
        public void onSessionEnded(boolean z10, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.IEngagementSignalsCallback
        public void onVerticalScrollEvent(boolean z10, Bundle bundle) throws RemoteException {
        }
    }
}
