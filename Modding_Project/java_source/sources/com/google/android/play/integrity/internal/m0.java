package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public abstract class m0 extends u implements n0 {
    public m0() {
        super("com.google.android.play.core.integrity.protocol.IRequestDialogCallback");
    }

    @Override // com.google.android.play.integrity.internal.u
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 2) {
            y.b(parcel);
            b((Bundle) y.a(parcel, Bundle.CREATOR));
            return true;
        }
        return false;
    }
}
