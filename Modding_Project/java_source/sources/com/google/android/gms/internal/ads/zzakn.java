package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzakn {
    public static void zza(zzako zzakoVar, zzaks zzaksVar, zzdn zzdnVar) {
        for (int i10 = 0; i10 < zzakoVar.zza(); i10++) {
            long zzb = zzakoVar.zzb(i10);
            List zzc = zzakoVar.zzc(zzb);
            if (!zzc.isEmpty()) {
                if (i10 != zzakoVar.zza() - 1) {
                    long zzb2 = zzakoVar.zzb(i10 + 1) - zzakoVar.zzb(i10);
                    if (zzb2 > 0) {
                        zzdnVar.zza(new zzakl(zzc, zzb, zzb2));
                    }
                } else {
                    throw new IllegalStateException();
                }
            }
        }
    }
}
