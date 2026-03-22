package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzfsm extends zzayu implements zzfsn {
    public static zzfsn zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.lmd.protocol.ILmdOverlayService");
        if (queryLocalInterface instanceof zzfsn) {
            return (zzfsn) queryLocalInterface;
        }
        return new zzfsl(iBinder);
    }
}
