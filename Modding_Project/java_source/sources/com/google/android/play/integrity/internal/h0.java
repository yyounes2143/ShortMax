package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class h0 extends a implements j0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.integrity.protocol.IIntegrityService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.j0
    public final void b(Bundle bundle, n0 n0Var) throws RemoteException {
        Parcel i10 = i();
        y.c(i10, bundle);
        i10.writeStrongBinder(n0Var);
        j(3, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.j0
    public final void f(Bundle bundle, l0 l0Var) throws RemoteException {
        Parcel i10 = i();
        y.c(i10, bundle);
        i10.writeStrongBinder(l0Var);
        j(2, i10);
    }
}
