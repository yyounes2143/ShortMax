package com.bytedance.sdk.openadsdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3.dex */
public interface IDislikeClosedListener extends IInterface {
    void onItemClickClosed() throws RemoteException;

    /* loaded from: classes3.dex */
    public static class Default implements IDislikeClosedListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.IDislikeClosedListener
        public void onItemClickClosed() throws RemoteException {
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements IDislikeClosedListener {

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static class oJ implements IDislikeClosedListener {
            public static IDislikeClosedListener oJ;
            private IBinder ZYk;

            oJ(IBinder iBinder) {
                this.ZYk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.ZYk;
            }

            @Override // com.bytedance.sdk.openadsdk.IDislikeClosedListener
            public void onItemClickClosed() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.IDislikeClosedListener");
                    if (!this.ZYk.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onItemClickClosed();
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
            attachInterface(this, "com.bytedance.sdk.openadsdk.IDislikeClosedListener");
        }

        public static IDislikeClosedListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.IDislikeClosedListener");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IDislikeClosedListener)) {
                return (IDislikeClosedListener) queryLocalInterface;
            }
            return new oJ(iBinder);
        }

        public static IDislikeClosedListener getDefaultImpl() {
            return oJ.oJ;
        }

        public static boolean setDefaultImpl(IDislikeClosedListener iDislikeClosedListener) {
            if (oJ.oJ == null) {
                if (iDislikeClosedListener != null) {
                    oJ.oJ = iDislikeClosedListener;
                    return true;
                }
                return false;
            }
            throw new IllegalStateException("setDefaultImpl() called twice");
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 != 1) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString("com.bytedance.sdk.openadsdk.IDislikeClosedListener");
                return true;
            }
            parcel.enforceInterface("com.bytedance.sdk.openadsdk.IDislikeClosedListener");
            onItemClickClosed();
            parcel2.writeNoException();
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }
}
