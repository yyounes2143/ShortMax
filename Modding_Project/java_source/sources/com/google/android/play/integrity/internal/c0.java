package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class c0 extends a implements e0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.integrity.protocol.IExpressIntegrityService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.e0
    public final void b(Bundle bundle, n0 n0Var) throws RemoteException {
        Parcel i10 = i();
        y.c(i10, bundle);
        i10.writeStrongBinder(n0Var);
        j(6, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.e0
    public final void d(Bundle bundle, g0 g0Var) throws RemoteException {
        Parcel i10 = i();
        y.c(i10, bundle);
        i10.writeStrongBinder(g0Var);
        j(2, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.e0
    public final void e(Bundle bundle, g0 g0Var) throws RemoteException {
        Parcel i10 = i();
        y.c(i10, bundle);
        i10.writeStrongBinder(g0Var);
        j(3, i10);
    }
}
