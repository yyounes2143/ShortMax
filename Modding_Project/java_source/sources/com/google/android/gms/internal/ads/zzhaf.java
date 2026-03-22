package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzhaf {
    public static final List zza(Object obj, long j10) {
        int i10;
        zzgzt zzgztVar = (zzgzt) zzhce.zzh(obj, j10);
        if (!zzgztVar.zzc()) {
            int size = zzgztVar.size();
            if (size == 0) {
                i10 = 10;
            } else {
                i10 = size + size;
            }
            zzgzt zzf = zzgztVar.zzf(i10);
            zzhce.zzv(obj, j10, zzf);
            return zzf;
        }
        return zzgztVar;
    }
}
