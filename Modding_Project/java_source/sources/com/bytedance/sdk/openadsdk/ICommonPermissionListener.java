package com.bytedance.sdk.openadsdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3.dex */
public interface ICommonPermissionListener extends IInterface {
    void onDenied(String str) throws RemoteException;

    void onGranted() throws RemoteException;

    /* loaded from: classes3.dex */
    public static class Default implements ICommonPermissionListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.ICommonPermissionListener
        public void onGranted() throws RemoteException {
        }

        @Override // com.bytedance.sdk.openadsdk.ICommonPermissionListener
        public void onDenied(String str) throws RemoteException {
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements ICommonPermissionListener {

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static class oJ implements ICommonPermissionListener {
            public static ICommonPermissionListener oJ;
            private IBinder ZYk;

            oJ(IBinder iBinder) {
                this.ZYk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.ZYk;
            }

            @Override // com.bytedance.sdk.openadsdk.ICommonPermissionListener
            public void onDenied(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.ICommonPermissionListener");
                    obtain.writeString(str);
                    if (!this.ZYk.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onDenied(str);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.ICommonPermissionListener
            public void onGranted() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.ICommonPermissionListener");
                    if (!this.ZYk.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onGranted();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.ICommonPermissionListener");
        }

        public static ICommonPermissionListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.ICommonPermissionListener");
            if (queryLocalInterface != null && (queryLocalInterface instanceof ICommonPermissionListener)) {
                return (ICommonPermissionListener) queryLocalInterface;
            }
            return new oJ(iBinder);
        }

        public static ICommonPermissionListener getDefaultImpl() {
            return oJ.oJ;
        }

        public static boolean setDefaultImpl(ICommonPermissionListener iCommonPermissionListener) {
            if (oJ.oJ == null) {
                if (iCommonPermissionListener != null) {
                    oJ.oJ = iCommonPermissionListener;
                    return true;
                }
                return false;
            }
            throw new IllegalStateException("setDefaultImpl() called twice");
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 1598968902) {
                        return super.onTransact(i10, parcel, parcel2, i11);
                    }
                    parcel2.writeString("com.bytedance.sdk.openadsdk.ICommonPermissionListener");
                    return true;
                }
                parcel.enforceInterface("com.bytedance.sdk.openadsdk.ICommonPermissionListener");
                onDenied(parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            parcel.enforceInterface("com.bytedance.sdk.openadsdk.ICommonPermissionListener");
            onGranted();
            parcel2.writeNoException();
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }
}
