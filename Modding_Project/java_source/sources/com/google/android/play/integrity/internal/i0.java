package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public abstract class i0 extends u implements j0 {
    public static j0 i(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.integrity.protocol.IIntegrityService");
        if (queryLocalInterface instanceof j0) {
            return (j0) queryLocalInterface;
        }
        return new h0(iBinder);
    }
}
