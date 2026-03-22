package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdje {
    public static final zzdje zza = new zzdje(new zzdjc());
    @Nullable
    private final zzbhq zzb;
    @Nullable
    private final zzbhn zzc;
    @Nullable
    private final zzbid zzd;
    @Nullable
    private final zzbia zze;
    @Nullable
    private final zzbmy zzf;
    private final SimpleArrayMap zzg;
    private final SimpleArrayMap zzh;

    @Nullable
    public final zzbhn zza() {
        return this.zzc;
    }

    @Nullable
    public final zzbhq zzb() {
        return this.zzb;
    }

    @Nullable
    public final zzbht zzc(String str) {
        return (zzbht) this.zzh.get(str);
    }

    @Nullable
    public final zzbhw zzd(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return (zzbhw) this.zzg.get(str);
    }

    @Nullable
    public final zzbia zze() {
        return this.zze;
    }

    @Nullable
    public final zzbid zzf() {
        return this.zzd;
    }

    @Nullable
    public final zzbmy zzg() {
        return this.zzf;
    }

    public final ArrayList zzh() {
        SimpleArrayMap simpleArrayMap = this.zzg;
        ArrayList arrayList = new ArrayList(simpleArrayMap.size());
        for (int i10 = 0; i10 < simpleArrayMap.size(); i10++) {
            arrayList.add((String) simpleArrayMap.keyAt(i10));
        }
        return arrayList;
    }

    public final ArrayList zzi() {
        ArrayList arrayList = new ArrayList();
        if (this.zzd != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.zzb != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.zzc != null) {
            arrayList.add(Integer.toString(2));
        }
        if (!this.zzg.isEmpty()) {
            arrayList.add(Integer.toString(3));
        }
        if (this.zzf != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }

    private zzdje(zzdjc zzdjcVar) {
        this.zzb = zzdjcVar.zza;
        this.zzc = zzdjcVar.zzb;
        this.zzd = zzdjcVar.zzc;
        this.zzg = new SimpleArrayMap(zzdjcVar.zzf);
        this.zzh = new SimpleArrayMap(zzdjcVar.zzg);
        this.zze = zzdjcVar.zzd;
        this.zzf = zzdjcVar.zze;
    }
}
