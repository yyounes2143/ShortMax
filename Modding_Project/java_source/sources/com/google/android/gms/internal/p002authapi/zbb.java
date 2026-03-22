package com.google.android.gms.internal.p002authapi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbb  reason: invalid package */
/* loaded from: classes4.dex */
public class zbb extends Binder implements IInterface {
    /* JADX INFO: Access modifiers changed from: protected */
    public zbb(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 > 16777215) {
            if (super.onTransact(i10, parcel, parcel2, i11)) {
                return true;
            }
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
        }
        return zba(i10, parcel, parcel2, i11);
    }

    protected boolean zba(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        throw null;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
