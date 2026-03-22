package android.support.customtabs;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsCallback;
import androidx.annotation.RestrictTo;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public interface ICustomTabsService extends IInterface {

    /* renamed from: u8  reason: collision with root package name */
    public static final String f715u8 = "android$support$customtabs$ICustomTabsService".replace('$', '.');

    /* loaded from: classes.dex */
    public static class Default implements ICustomTabsService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public Bundle extraCommand(String str, Bundle bundle) throws RemoteException {
            return null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean isEngagementSignalsApiAvailable(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean mayLaunchUrl(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle, List<Bundle> list) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean newSession(ICustomTabsCallback iCustomTabsCallback) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean newSessionWithExtras(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public int postMessage(ICustomTabsCallback iCustomTabsCallback, String str, Bundle bundle) throws RemoteException {
            return 0;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean receiveFile(ICustomTabsCallback iCustomTabsCallback, Uri uri, int i10, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean requestPostMessageChannel(ICustomTabsCallback iCustomTabsCallback, Uri uri) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean requestPostMessageChannelWithExtras(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean setEngagementSignalsCallback(ICustomTabsCallback iCustomTabsCallback, IBinder iBinder, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean updateVisuals(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean validateRelationship(ICustomTabsCallback iCustomTabsCallback, int i10, Uri uri, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean warmup(long j10) throws RemoteException {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T d(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void e(Parcel parcel, List<T> list, int i10) {
            if (list == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = list.size();
            parcel.writeInt(size);
            for (int i11 = 0; i11 < size; i11++) {
                f(parcel, list.get(i11), i10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void f(Parcel parcel, T t10, int i10) {
            if (t10 != null) {
                parcel.writeInt(1);
                t10.writeToParcel(parcel, i10);
                return;
            }
            parcel.writeInt(0);
        }
    }

    Bundle extraCommand(String str, Bundle bundle) throws RemoteException;

    boolean isEngagementSignalsApiAvailable(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) throws RemoteException;

    boolean mayLaunchUrl(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle, List<Bundle> list) throws RemoteException;

    boolean newSession(ICustomTabsCallback iCustomTabsCallback) throws RemoteException;

    boolean newSessionWithExtras(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) throws RemoteException;

    int postMessage(ICustomTabsCallback iCustomTabsCallback, String str, Bundle bundle) throws RemoteException;

    boolean receiveFile(ICustomTabsCallback iCustomTabsCallback, Uri uri, int i10, Bundle bundle) throws RemoteException;

    boolean requestPostMessageChannel(ICustomTabsCallback iCustomTabsCallback, Uri uri) throws RemoteException;

    boolean requestPostMessageChannelWithExtras(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle) throws RemoteException;

    boolean setEngagementSignalsCallback(ICustomTabsCallback iCustomTabsCallback, IBinder iBinder, Bundle bundle) throws RemoteException;

    boolean updateVisuals(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) throws RemoteException;

    boolean validateRelationship(ICustomTabsCallback iCustomTabsCallback, int i10, Uri uri, Bundle bundle) throws RemoteException;

    boolean warmup(long j10) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ICustomTabsService {
        static final int TRANSACTION_extraCommand = 5;
        static final int TRANSACTION_isEngagementSignalsApiAvailable = 13;
        static final int TRANSACTION_mayLaunchUrl = 4;
        static final int TRANSACTION_newSession = 3;
        static final int TRANSACTION_newSessionWithExtras = 10;
        static final int TRANSACTION_postMessage = 8;
        static final int TRANSACTION_receiveFile = 12;
        static final int TRANSACTION_requestPostMessageChannel = 7;
        static final int TRANSACTION_requestPostMessageChannelWithExtras = 11;
        static final int TRANSACTION_setEngagementSignalsCallback = 14;
        static final int TRANSACTION_updateVisuals = 6;
        static final int TRANSACTION_validateRelationship = 9;
        static final int TRANSACTION_warmup = 2;

        /* loaded from: classes.dex */
        private static class a implements ICustomTabsService {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f716a;

            a(IBinder iBinder) {
                this.f716a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f716a;
            }

            @Override // android.support.customtabs.ICustomTabsService
            public Bundle extraCommand(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsService.f715u8);
                    obtain.writeString(str);
                    a.f(obtain, bundle, 0);
                    this.f716a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return (Bundle) a.d(obtain2, Bundle.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean isEngagementSignalsApiAvailable(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsService.f715u8);
                    obtain.writeStrongInterface(iCustomTabsCallback);
                    boolean z10 = false;
                    a.f(obtain, bundle, 0);
                    this.f716a.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean mayLaunchUrl(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle, List<Bundle> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsService.f715u8);
                    obtain.writeStrongInterface(iCustomTabsCallback);
                    boolean z10 = false;
                    a.f(obtain, uri, 0);
                    a.f(obtain, bundle, 0);
                    a.e(obtain, list, 0);
                    this.f716a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean newSession(ICustomTabsCallback iCustomTabsCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsService.f715u8);
                    obtain.writeStrongInterface(iCustomTabsCallback);
                    boolean z10 = false;
                    this.f716a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean newSessionWithExtras(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsService.f715u8);
                    obtain.writeStrongInterface(iCustomTabsCallback);
                    boolean z10 = false;
                    a.f(obtain, bundle, 0);
                    this.f716a.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public int postMessage(ICustomTabsCallback iCustomTabsCallback, String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsService.f715u8);
                    obtain.writeStrongInterface(iCustomTabsCallback);
                    obtain.writeString(str);
                    a.f(obtain, bundle, 0);
                    this.f716a.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean receiveFile(ICustomTabsCallback iCustomTabsCallback, Uri uri, int i10, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsService.f715u8);
                    obtain.writeStrongInterface(iCustomTabsCallback);
                    boolean z10 = false;
                    a.f(obtain, uri, 0);
                    obtain.writeInt(i10);
                    a.f(obtain, bundle, 0);
                    this.f716a.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean requestPostMessageChannel(ICustomTabsCallback iCustomTabsCallback, Uri uri) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsService.f715u8);
                    obtain.writeStrongInterface(iCustomTabsCallback);
                    boolean z10 = false;
                    a.f(obtain, uri, 0);
                    this.f716a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean requestPostMessageChannelWithExtras(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsService.f715u8);
                    obtain.writeStrongInterface(iCustomTabsCallback);
                    boolean z10 = false;
                    a.f(obtain, uri, 0);
                    a.f(obtain, bundle, 0);
                    this.f716a.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean setEngagementSignalsCallback(ICustomTabsCallback iCustomTabsCallback, IBinder iBinder, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsService.f715u8);
                    obtain.writeStrongInterface(iCustomTabsCallback);
                    obtain.writeStrongBinder(iBinder);
                    boolean z10 = false;
                    a.f(obtain, bundle, 0);
                    this.f716a.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean updateVisuals(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsService.f715u8);
                    obtain.writeStrongInterface(iCustomTabsCallback);
                    boolean z10 = false;
                    a.f(obtain, bundle, 0);
                    this.f716a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean validateRelationship(ICustomTabsCallback iCustomTabsCallback, int i10, Uri uri, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsService.f715u8);
                    obtain.writeStrongInterface(iCustomTabsCallback);
                    obtain.writeInt(i10);
                    boolean z10 = false;
                    a.f(obtain, uri, 0);
                    a.f(obtain, bundle, 0);
                    this.f716a.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean warmup(long j10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsService.f715u8);
                    obtain.writeLong(j10);
                    boolean z10 = false;
                    this.f716a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ICustomTabsService.f715u8);
        }

        public static ICustomTabsService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ICustomTabsService.f715u8);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ICustomTabsService)) {
                return (ICustomTabsService) queryLocalInterface;
            }
            return new a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            String str = ICustomTabsService.f715u8;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            switch (i10) {
                case 2:
                    boolean warmup = warmup(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(warmup ? 1 : 0);
                    break;
                case 3:
                    boolean newSession = newSession(ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(newSession ? 1 : 0);
                    break;
                case 4:
                    Parcelable.Creator creator = Bundle.CREATOR;
                    boolean mayLaunchUrl = mayLaunchUrl(ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder()), (Uri) a.d(parcel, Uri.CREATOR), (Bundle) a.d(parcel, creator), parcel.createTypedArrayList(creator));
                    parcel2.writeNoException();
                    parcel2.writeInt(mayLaunchUrl ? 1 : 0);
                    break;
                case 5:
                    Bundle extraCommand = extraCommand(parcel.readString(), (Bundle) a.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    a.f(parcel2, extraCommand, 1);
                    break;
                case 6:
                    boolean updateVisuals = updateVisuals(ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder()), (Bundle) a.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(updateVisuals ? 1 : 0);
                    break;
                case 7:
                    boolean requestPostMessageChannel = requestPostMessageChannel(ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder()), (Uri) a.d(parcel, Uri.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(requestPostMessageChannel ? 1 : 0);
                    break;
                case 8:
                    int postMessage = postMessage(ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), (Bundle) a.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(postMessage);
                    break;
                case 9:
                    boolean validateRelationship = validateRelationship(ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), (Uri) a.d(parcel, Uri.CREATOR), (Bundle) a.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(validateRelationship ? 1 : 0);
                    break;
                case 10:
                    boolean newSessionWithExtras = newSessionWithExtras(ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder()), (Bundle) a.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(newSessionWithExtras ? 1 : 0);
                    break;
                case 11:
                    boolean requestPostMessageChannelWithExtras = requestPostMessageChannelWithExtras(ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder()), (Uri) a.d(parcel, Uri.CREATOR), (Bundle) a.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(requestPostMessageChannelWithExtras ? 1 : 0);
                    break;
                case 12:
                    boolean receiveFile = receiveFile(ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder()), (Uri) a.d(parcel, Uri.CREATOR), parcel.readInt(), (Bundle) a.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(receiveFile ? 1 : 0);
                    break;
                case 13:
                    boolean isEngagementSignalsApiAvailable = isEngagementSignalsApiAvailable(ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder()), (Bundle) a.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(isEngagementSignalsApiAvailable ? 1 : 0);
                    break;
                case 14:
                    boolean engagementSignalsCallback = setEngagementSignalsCallback(ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readStrongBinder(), (Bundle) a.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(engagementSignalsCallback ? 1 : 0);
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
}
