package android.support.customtabs;

import android.net.Uri;
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
public interface ICustomTabsCallback extends IInterface {

    /* renamed from: t8  reason: collision with root package name */
    public static final String f713t8 = "android$support$customtabs$ICustomTabsCallback".replace('$', '.');

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

    void extraCallback(String str, Bundle bundle) throws RemoteException;

    Bundle extraCallbackWithResult(String str, Bundle bundle) throws RemoteException;

    void onActivityLayout(int i10, int i11, int i12, int i13, int i14, Bundle bundle) throws RemoteException;

    void onActivityResized(int i10, int i11, Bundle bundle) throws RemoteException;

    void onMessageChannelReady(Bundle bundle) throws RemoteException;

    void onMinimized(Bundle bundle) throws RemoteException;

    void onNavigationEvent(int i10, Bundle bundle) throws RemoteException;

    void onPostMessage(String str, Bundle bundle) throws RemoteException;

    void onRelationshipValidationResult(int i10, Uri uri, boolean z10, Bundle bundle) throws RemoteException;

    void onUnminimized(Bundle bundle) throws RemoteException;

    void onWarmupCompleted(Bundle bundle) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ICustomTabsCallback {
        static final int TRANSACTION_extraCallback = 3;
        static final int TRANSACTION_extraCallbackWithResult = 7;
        static final int TRANSACTION_onActivityLayout = 10;
        static final int TRANSACTION_onActivityResized = 8;
        static final int TRANSACTION_onMessageChannelReady = 4;
        static final int TRANSACTION_onMinimized = 11;
        static final int TRANSACTION_onNavigationEvent = 2;
        static final int TRANSACTION_onPostMessage = 5;
        static final int TRANSACTION_onRelationshipValidationResult = 6;
        static final int TRANSACTION_onUnminimized = 12;
        static final int TRANSACTION_onWarmupCompleted = 9;

        /* loaded from: classes.dex */
        private static class a implements ICustomTabsCallback {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f714a;

            a(IBinder iBinder) {
                this.f714a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f714a;
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void extraCallback(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f713t8);
                    obtain.writeString(str);
                    a.d(obtain, bundle, 0);
                    this.f714a.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public Bundle extraCallbackWithResult(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f713t8);
                    obtain.writeString(str);
                    a.d(obtain, bundle, 0);
                    this.f714a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return (Bundle) a.c(obtain2, Bundle.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onActivityLayout(int i10, int i11, int i12, int i13, int i14, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f713t8);
                    obtain.writeInt(i10);
                    obtain.writeInt(i11);
                    obtain.writeInt(i12);
                    obtain.writeInt(i13);
                    obtain.writeInt(i14);
                    a.d(obtain, bundle, 0);
                    this.f714a.transact(10, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onActivityResized(int i10, int i11, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f713t8);
                    obtain.writeInt(i10);
                    obtain.writeInt(i11);
                    a.d(obtain, bundle, 0);
                    this.f714a.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onMessageChannelReady(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f713t8);
                    a.d(obtain, bundle, 0);
                    this.f714a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onMinimized(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f713t8);
                    a.d(obtain, bundle, 0);
                    this.f714a.transact(11, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onNavigationEvent(int i10, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f713t8);
                    obtain.writeInt(i10);
                    a.d(obtain, bundle, 0);
                    this.f714a.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onPostMessage(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f713t8);
                    obtain.writeString(str);
                    a.d(obtain, bundle, 0);
                    this.f714a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onRelationshipValidationResult(int i10, Uri uri, boolean z10, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f713t8);
                    obtain.writeInt(i10);
                    a.d(obtain, uri, 0);
                    obtain.writeInt(z10 ? 1 : 0);
                    a.d(obtain, bundle, 0);
                    this.f714a.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onUnminimized(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f713t8);
                    a.d(obtain, bundle, 0);
                    this.f714a.transact(12, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onWarmupCompleted(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f713t8);
                    a.d(obtain, bundle, 0);
                    this.f714a.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ICustomTabsCallback.f713t8);
        }

        public static ICustomTabsCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ICustomTabsCallback.f713t8);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ICustomTabsCallback)) {
                return (ICustomTabsCallback) queryLocalInterface;
            }
            return new a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            boolean z10;
            String str = ICustomTabsCallback.f713t8;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            switch (i10) {
                case 2:
                    onNavigationEvent(parcel.readInt(), (Bundle) a.c(parcel, Bundle.CREATOR));
                    break;
                case 3:
                    extraCallback(parcel.readString(), (Bundle) a.c(parcel, Bundle.CREATOR));
                    break;
                case 4:
                    onMessageChannelReady((Bundle) a.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 5:
                    onPostMessage(parcel.readString(), (Bundle) a.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 6:
                    int readInt = parcel.readInt();
                    Uri uri = (Uri) a.c(parcel, Uri.CREATOR);
                    if (parcel.readInt() != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    onRelationshipValidationResult(readInt, uri, z10, (Bundle) a.c(parcel, Bundle.CREATOR));
                    break;
                case 7:
                    Bundle extraCallbackWithResult = extraCallbackWithResult(parcel.readString(), (Bundle) a.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    a.d(parcel2, extraCallbackWithResult, 1);
                    break;
                case 8:
                    onActivityResized(parcel.readInt(), parcel.readInt(), (Bundle) a.c(parcel, Bundle.CREATOR));
                    break;
                case 9:
                    onWarmupCompleted((Bundle) a.c(parcel, Bundle.CREATOR));
                    break;
                case 10:
                    onActivityLayout(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), (Bundle) a.c(parcel, Bundle.CREATOR));
                    break;
                case 11:
                    onMinimized((Bundle) a.c(parcel, Bundle.CREATOR));
                    break;
                case 12:
                    onUnminimized((Bundle) a.c(parcel, Bundle.CREATOR));
                    break;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static class Default implements ICustomTabsCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public Bundle extraCallbackWithResult(String str, Bundle bundle) throws RemoteException {
            return null;
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onMessageChannelReady(Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onMinimized(Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onUnminimized(Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onWarmupCompleted(Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void extraCallback(String str, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onNavigationEvent(int i10, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onPostMessage(String str, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onActivityResized(int i10, int i11, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onRelationshipValidationResult(int i10, Uri uri, boolean z10, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onActivityLayout(int i10, int i11, int i12, int i13, int i14, Bundle bundle) throws RemoteException {
        }
    }
}
