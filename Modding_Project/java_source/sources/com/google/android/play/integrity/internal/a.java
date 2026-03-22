package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f19971a;

    /* renamed from: b  reason: collision with root package name */
    private final String f19972b;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(IBinder iBinder, String str) {
        this.f19971a = iBinder;
        this.f19972b = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f19971a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel i() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f19972b);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void j(int i10, Parcel parcel) throws RemoteException {
        try {
            this.f19971a.transact(i10, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
