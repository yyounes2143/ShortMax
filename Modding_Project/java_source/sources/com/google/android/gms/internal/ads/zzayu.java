package com.google.android.gms.internal.ads;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public class zzayu extends Binder implements IInterface {
    /* JADX INFO: Access modifiers changed from: protected */
    public zzayu(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.Binder
    public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 > 16777215) {
            if (super.onTransact(i10, parcel, parcel2, i11)) {
                return true;
            }
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
        }
        return zzde(i10, parcel, parcel2, i11);
    }

    protected boolean zzde(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        throw null;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }
}
