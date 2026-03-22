package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public abstract class d0 extends u implements e0 {
    public static e0 i(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.integrity.protocol.IExpressIntegrityService");
        if (queryLocalInterface instanceof e0) {
            return (e0) queryLocalInterface;
        }
        return new c0(iBinder);
    }
}
