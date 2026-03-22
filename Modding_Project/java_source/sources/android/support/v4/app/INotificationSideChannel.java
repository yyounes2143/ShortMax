package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public interface INotificationSideChannel extends IInterface {

    /* renamed from: z8  reason: collision with root package name */
    public static final String f725z8 = "android$support$v4$app$INotificationSideChannel".replace('$', '.');

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

    void cancel(String str, int i10, String str2) throws RemoteException;

    void cancelAll(String str) throws RemoteException;

    void notify(String str, int i10, String str2, Notification notification) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements INotificationSideChannel {
        static final int TRANSACTION_cancel = 2;
        static final int TRANSACTION_cancelAll = 3;
        static final int TRANSACTION_notify = 1;

        /* loaded from: classes.dex */
        private static class a implements INotificationSideChannel {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f726a;

            a(IBinder iBinder) {
                this.f726a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f726a;
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public void cancel(String str, int i10, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(INotificationSideChannel.f725z8);
                    obtain.writeString(str);
                    obtain.writeInt(i10);
                    obtain.writeString(str2);
                    this.f726a.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public void cancelAll(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(INotificationSideChannel.f725z8);
                    obtain.writeString(str);
                    this.f726a.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public void notify(String str, int i10, String str2, Notification notification) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(INotificationSideChannel.f725z8);
                    obtain.writeString(str);
                    obtain.writeInt(i10);
                    obtain.writeString(str2);
                    a.d(obtain, notification, 0);
                    this.f726a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, INotificationSideChannel.f725z8);
        }

        public static INotificationSideChannel asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(INotificationSideChannel.f725z8);
            if (queryLocalInterface != null && (queryLocalInterface instanceof INotificationSideChannel)) {
                return (INotificationSideChannel) queryLocalInterface;
            }
            return new a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            String str = INotificationSideChannel.f725z8;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return super.onTransact(i10, parcel, parcel2, i11);
                    }
                    cancelAll(parcel.readString());
                } else {
                    cancel(parcel.readString(), parcel.readInt(), parcel.readString());
                }
            } else {
                notify(parcel.readString(), parcel.readInt(), parcel.readString(), (Notification) a.c(parcel, Notification.CREATOR));
            }
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static class Default implements INotificationSideChannel {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void cancelAll(String str) throws RemoteException {
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void cancel(String str, int i10, String str2) throws RemoteException {
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void notify(String str, int i10, String str2, Notification notification) throws RemoteException {
        }
    }
}
