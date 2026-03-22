package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzxk {
    public static final zzxk zza = new zzxk(new zzbm[0]);
    public final int zzb;
    private final zzfyq zzc;
    private int zzd;

    static {
        String str = zzex.zza;
        Integer.toString(0, 36);
    }

    public zzxk(zzbm... zzbmVarArr) {
        this.zzc = zzfyq.zzm(zzbmVarArr);
        this.zzb = zzbmVarArr.length;
        int i10 = 0;
        while (i10 < this.zzc.size()) {
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < this.zzc.size(); i12++) {
                if (((zzbm) this.zzc.get(i10)).equals(this.zzc.get(i12))) {
                    zzea.zzd("TrackGroupArray", "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i10 = i11;
        }
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzxk.class == obj.getClass()) {
            zzxk zzxkVar = (zzxk) obj;
            if (this.zzb == zzxkVar.zzb && this.zzc.equals(zzxkVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.zzd;
        if (i10 == 0) {
            int hashCode = this.zzc.hashCode();
            this.zzd = hashCode;
            return hashCode;
        }
        return i10;
    }

    public final String toString() {
        return this.zzc.toString();
    }

    public final int zza(zzbm zzbmVar) {
        int indexOf = this.zzc.indexOf(zzbmVar);
        if (indexOf >= 0) {
            return indexOf;
        }
        return -1;
    }

    public final zzbm zzb(int i10) {
        return (zzbm) this.zzc.get(i10);
    }

    public final zzfyq zzc() {
        return zzfyq.zzl(zzfzg.zzc(this.zzc, new zzfve() { // from class: com.google.android.gms.internal.ads.zzxj
            @Override // com.google.android.gms.internal.ads.zzfve
            public final Object apply(Object obj) {
                zzxk zzxkVar = zzxk.zza;
                return Integer.valueOf(((zzbm) obj).zzc);
            }
        }));
    }
}
