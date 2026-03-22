package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaxs extends zzayk {
    private static volatile Long zzh;
    private static final Object zzi = new Object();

    public zzaxs(zzawx zzawxVar, String str, String str2, zzast zzastVar, int i10, int i11) {
        super(zzawxVar, "2yqQbpMMcqKX38M442dN+dCyzykwnAxluzbiBDnzfSZwwykVdh1BxKbQaA6qVZBU", "1XIQFsxUhHfLRHhylour2btyczZCL08SFkmijCbkayQ=", zzastVar, i10, 22);
    }

    @Override // com.google.android.gms.internal.ads.zzayk
    protected final void zza() throws IllegalAccessException, InvocationTargetException {
        if (zzh == null) {
            synchronized (zzi) {
                try {
                    if (zzh == null) {
                        zzh = (Long) this.zze.invoke(null, new Object[0]);
                    }
                } finally {
                }
            }
        }
        zzast zzastVar = this.zzd;
        synchronized (zzastVar) {
            zzastVar.zzw(zzh.longValue());
        }
    }
}
