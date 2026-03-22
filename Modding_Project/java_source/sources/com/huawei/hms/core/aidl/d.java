package com.huawei.hms.core.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
/* compiled from: IAIDLInvoke.java */
/* loaded from: classes5.dex */
public interface d extends IInterface {

    /* compiled from: IAIDLInvoke.java */
    /* loaded from: classes5.dex */
    public static abstract class a extends Binder implements d {

        /* compiled from: IAIDLInvoke.java */
        /* renamed from: com.huawei.hms.core.aidl.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        private static class C0317a implements d {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f22110a;

            C0317a(IBinder iBinder) {
                this.f22110a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f22110a;
            }

            @Override // com.huawei.hms.core.aidl.d
            public void c(DataBuffer dataBuffer, c cVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.huawei.hms.core.aidl.IAIDLInvoke");
                    b.b(obtain, dataBuffer, 0);
                    obtain.writeStrongInterface(cVar);
                    this.f22110a.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static d i(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.core.aidl.IAIDLInvoke");
            if (queryLocalInterface != null && (queryLocalInterface instanceof d)) {
                return (d) queryLocalInterface;
            }
            return new C0317a(iBinder);
        }
    }

    /* compiled from: IAIDLInvoke.java */
    /* loaded from: classes5.dex */
    public static class b {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void b(Parcel parcel, T t10, int i10) {
            if (t10 != null) {
                parcel.writeInt(1);
                t10.writeToParcel(parcel, i10);
                return;
            }
            parcel.writeInt(0);
        }
    }

    void c(DataBuffer dataBuffer, c cVar) throws RemoteException;
}
