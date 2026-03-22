package com.huawei.hms.core.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
/* compiled from: IAIDLCallback.java */
/* loaded from: classes5.dex */
public interface c extends IInterface {

    /* compiled from: IAIDLCallback.java */
    /* loaded from: classes5.dex */
    public static class b {
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

    void call(DataBuffer dataBuffer) throws RemoteException;

    /* compiled from: IAIDLCallback.java */
    /* loaded from: classes5.dex */
    public static abstract class a extends Binder implements c {
        static final int TRANSACTION_call = 1;

        /* compiled from: IAIDLCallback.java */
        /* renamed from: com.huawei.hms.core.aidl.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        private static class C0316a implements c {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f22109a;

            C0316a(IBinder iBinder) {
                this.f22109a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f22109a;
            }

            @Override // com.huawei.hms.core.aidl.c
            public void call(DataBuffer dataBuffer) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.huawei.hms.core.aidl.IAIDLCallback");
                    b.d(obtain, dataBuffer, 0);
                    this.f22109a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "com.huawei.hms.core.aidl.IAIDLCallback");
        }

        public static c asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.core.aidl.IAIDLCallback");
            if (queryLocalInterface != null && (queryLocalInterface instanceof c)) {
                return (c) queryLocalInterface;
            }
            return new C0316a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface("com.huawei.hms.core.aidl.IAIDLCallback");
            }
            if (i10 != 1598968902) {
                if (i10 != 1) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                call((DataBuffer) b.c(parcel, DataBuffer.CREATOR));
                return true;
            }
            parcel2.writeString("com.huawei.hms.core.aidl.IAIDLCallback");
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }
}
