package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public abstract class f0 extends u implements g0 {
    public f0() {
        super("com.google.android.play.core.integrity.protocol.IExpressIntegrityServiceCallback");
    }

    @Override // com.google.android.play.integrity.internal.u
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 5) {
                        return false;
                    }
                    y.b(parcel);
                    b((Bundle) y.a(parcel, Bundle.CREATOR));
                    return true;
                }
                y.b(parcel);
                d((Bundle) y.a(parcel, Bundle.CREATOR));
                return true;
            }
            y.b(parcel);
            c((Bundle) y.a(parcel, Bundle.CREATOR));
            return true;
        }
        y.b(parcel);
        e((Bundle) y.a(parcel, Bundle.CREATOR));
        return true;
    }
}
