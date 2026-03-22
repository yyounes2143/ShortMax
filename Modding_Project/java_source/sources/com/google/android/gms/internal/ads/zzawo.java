package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzawo extends zzauk {
    public Long zza;
    public Boolean zzb;
    public Boolean zzc;

    public zzawo() {
    }

    @Override // com.google.android.gms.internal.ads.zzauk
    protected final HashMap zzb() {
        HashMap hashMap = new HashMap();
        hashMap.put(0, this.zza);
        hashMap.put(1, this.zzb);
        hashMap.put(2, this.zzc);
        return hashMap;
    }

    public zzawo(String str) {
        HashMap zza = zzauk.zza(str);
        if (zza != null) {
            this.zza = (Long) zza.get(0);
            this.zzb = (Boolean) zza.get(1);
            this.zzc = (Boolean) zza.get(2);
        }
    }
}
