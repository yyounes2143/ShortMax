package com.tencent.wcdb;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: BulkCursorNative.java */
/* loaded from: classes7.dex */
final class BulkCursorProxy implements IBulkCursor {
    private Bundle mExtras = null;
    private IBinder mRemote;

    public BulkCursorProxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.mRemote;
    }

    @Override // com.tencent.wcdb.IBulkCursor
    public void close() throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IBulkCursor.descriptor);
            this.mRemote.transact(7, obtain, obtain2, 0);
            DatabaseUtils.readExceptionFromParcel(obtain2);
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // com.tencent.wcdb.IBulkCursor
    public void deactivate() throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IBulkCursor.descriptor);
            this.mRemote.transact(2, obtain, obtain2, 0);
            DatabaseUtils.readExceptionFromParcel(obtain2);
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // com.tencent.wcdb.IBulkCursor
    public Bundle getExtras() throws RemoteException {
        if (this.mExtras == null) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken(IBulkCursor.descriptor);
                this.mRemote.transact(5, obtain, obtain2, 0);
                DatabaseUtils.readExceptionFromParcel(obtain2);
                this.mExtras = obtain2.readBundle(BulkCursorProxy.class.getClassLoader());
            } finally {
                obtain.recycle();
                obtain2.recycle();
            }
        }
        return this.mExtras;
    }

    @Override // com.tencent.wcdb.IBulkCursor
    public CursorWindow getWindow(int i10) throws RemoteException {
        CursorWindow cursorWindow;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IBulkCursor.descriptor);
            obtain.writeInt(i10);
            this.mRemote.transact(1, obtain, obtain2, 0);
            DatabaseUtils.readExceptionFromParcel(obtain2);
            if (obtain2.readInt() == 1) {
                cursorWindow = CursorWindow.newFromParcel(obtain2);
            } else {
                cursorWindow = null;
            }
            return cursorWindow;
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // com.tencent.wcdb.IBulkCursor
    public void onMove(int i10) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IBulkCursor.descriptor);
            obtain.writeInt(i10);
            this.mRemote.transact(4, obtain, obtain2, 0);
            DatabaseUtils.readExceptionFromParcel(obtain2);
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // com.tencent.wcdb.IBulkCursor
    public int requery(IContentObserver iContentObserver) throws RemoteException {
        int readInt;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IBulkCursor.descriptor);
            obtain.writeStrongInterface(iContentObserver);
            boolean transact = this.mRemote.transact(3, obtain, obtain2, 0);
            DatabaseUtils.readExceptionFromParcel(obtain2);
            if (!transact) {
                readInt = -1;
            } else {
                readInt = obtain2.readInt();
                this.mExtras = obtain2.readBundle(BulkCursorProxy.class.getClassLoader());
            }
            return readInt;
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // com.tencent.wcdb.IBulkCursor
    public Bundle respond(Bundle bundle) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IBulkCursor.descriptor);
            obtain.writeBundle(bundle);
            this.mRemote.transact(6, obtain, obtain2, 0);
            DatabaseUtils.readExceptionFromParcel(obtain2);
            return obtain2.readBundle(BulkCursorProxy.class.getClassLoader());
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }
}
