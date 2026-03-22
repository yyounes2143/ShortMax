package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaxr extends zzayk {
    private final Map zzh;
    private final View zzi;
    private final Context zzj;

    public zzaxr(zzawx zzawxVar, String str, String str2, zzast zzastVar, int i10, int i11, Map map, View view, Context context) {
        super(zzawxVar, "q8irn8XqClynUBOsRuq73Jawzwc3gJeVDnk3iDYtMcevrbEAuNWFzcNhN+feXrfp", "dam+Wb9GR7yMSr36KIsK6PGM3yrtzGfNR9lAtk4lliE=", zzastVar, i10, 85);
        this.zzh = map;
        this.zzi = view;
        this.zzj = context;
    }

    private final long zzb(int i10) {
        Map map = this.zzh;
        Integer valueOf = Integer.valueOf(i10);
        if (map.containsKey(valueOf)) {
            return ((Long) map.get(valueOf)).longValue();
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzayk
    protected final void zza() throws IllegalAccessException, InvocationTargetException {
        long[] jArr = {zzb(1), zzb(2)};
        Context context = this.zzj;
        if (context == null) {
            context = this.zza.zzb();
        }
        long[] jArr2 = (long[]) this.zze.invoke(null, jArr, context, this.zzi);
        long j10 = jArr2[0];
        Map map = this.zzh;
        map.put(1, Long.valueOf(jArr2[1]));
        long j11 = jArr2[2];
        map.put(2, Long.valueOf(jArr2[3]));
        zzast zzastVar = this.zzd;
        synchronized (zzastVar) {
            zzastVar.zzt(j10);
            zzastVar.zzs(j11);
        }
    }
}
