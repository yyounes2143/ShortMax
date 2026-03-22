package com.google.android.gms.internal.ads;

import android.util.Base64;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzow implements zzpf {
    public static final zzfwh zza = new zzfwh() { // from class: com.google.android.gms.internal.ads.zzou
        @Override // com.google.android.gms.internal.ads.zzfwh
        public final Object zza() {
            String zzn;
            zzn = zzow.zzn();
            return zzn;
        }
    };
    private static final Random zzb = new Random();
    private final zzbk zzc;
    private final zzbj zzd;
    private final HashMap zze;
    private zzpe zzf;
    private zzbl zzg;
    @Nullable
    private String zzh;
    private long zzi;

    public zzow() {
        throw null;
    }

    public final long zzl() {
        long j10;
        long j11;
        zzov zzovVar = (zzov) this.zze.get(this.zzh);
        if (zzovVar != null) {
            j10 = zzovVar.zzd;
            if (j10 != -1) {
                j11 = zzovVar.zzd;
                return j11;
            }
        }
        return this.zzi + 1;
    }

    private final zzov zzm(int i10, @Nullable zzvh zzvhVar) {
        long j10;
        int i11;
        zzvh zzvhVar2;
        zzvh zzvhVar3;
        HashMap hashMap = this.zze;
        long j11 = Long.MAX_VALUE;
        zzov zzovVar = null;
        for (zzov zzovVar2 : hashMap.values()) {
            zzovVar2.zzg(i10, zzvhVar);
            if (zzovVar2.zzj(i10, zzvhVar)) {
                j10 = zzovVar2.zzd;
                if (j10 != -1 && j10 >= j11) {
                    if (i11 == 0) {
                        String str = zzex.zza;
                        zzvhVar2 = zzovVar.zze;
                        if (zzvhVar2 != null) {
                            zzvhVar3 = zzovVar2.zze;
                            if (zzvhVar3 != null) {
                                zzovVar = zzovVar2;
                            }
                        }
                    }
                } else {
                    zzovVar = zzovVar2;
                    j11 = j10;
                }
            }
        }
        if (zzovVar == null) {
            String zzn = zzn();
            zzov zzovVar3 = new zzov(this, zzn, i10, zzvhVar);
            hashMap.put(zzn, zzovVar3);
            return zzovVar3;
        }
        return zzovVar;
    }

    public static String zzn() {
        byte[] bArr = new byte[12];
        zzb.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    private final void zzo(zzov zzovVar) {
        long j10;
        long j11;
        j10 = zzovVar.zzd;
        if (j10 != -1) {
            j11 = zzovVar.zzd;
            this.zzi = j11;
        }
        this.zzh = null;
    }

    private final void zzp(zzmp zzmpVar) {
        String str;
        long j10;
        zzvh zzvhVar;
        zzvh zzvhVar2;
        zzvh zzvhVar3;
        String unused;
        String unused2;
        if (zzmpVar.zzb.zzo()) {
            String str2 = this.zzh;
            if (str2 != null) {
                zzov zzovVar = (zzov) this.zze.get(str2);
                zzovVar.getClass();
                zzo(zzovVar);
                return;
            }
            return;
        }
        zzov zzovVar2 = (zzov) this.zze.get(this.zzh);
        int i10 = zzmpVar.zzc;
        zzvh zzvhVar4 = zzmpVar.zzd;
        zzov zzm = zzm(i10, zzvhVar4);
        str = zzm.zzb;
        this.zzh = str;
        zzi(zzmpVar);
        if (zzvhVar4 != null && zzvhVar4.zzb()) {
            if (zzovVar2 != null) {
                long j11 = zzvhVar4.zzd;
                j10 = zzovVar2.zzd;
                if (j10 == j11) {
                    zzvhVar = zzovVar2.zze;
                    if (zzvhVar != null) {
                        zzvhVar2 = zzovVar2.zze;
                        if (zzvhVar2.zzb == zzvhVar4.zzb) {
                            zzvhVar3 = zzovVar2.zze;
                            if (zzvhVar3.zzc == zzvhVar4.zzc) {
                                return;
                            }
                        }
                    }
                }
            }
            unused = zzm(i10, new zzvh(zzvhVar4.zza, zzvhVar4.zzd)).zzb;
            unused2 = zzm.zzb;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    @Nullable
    public final synchronized String zze() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    public final synchronized String zzf(zzbl zzblVar, zzvh zzvhVar) {
        String str;
        str = zzm(zzblVar.zzn(zzvhVar.zza, this.zzd).zzc, zzvhVar).zzb;
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    public final synchronized void zzg(zzmp zzmpVar) {
        boolean z10;
        zzpe zzpeVar;
        String str;
        try {
            String str2 = this.zzh;
            if (str2 != null) {
                zzov zzovVar = (zzov) this.zze.get(str2);
                if (zzovVar != null) {
                    zzo(zzovVar);
                } else {
                    throw null;
                }
            }
            Iterator it = this.zze.values().iterator();
            while (it.hasNext()) {
                zzov zzovVar2 = (zzov) it.next();
                it.remove();
                z10 = zzovVar2.zzf;
                if (z10 && (zzpeVar = this.zzf) != null) {
                    str = zzovVar2.zzb;
                    zzpeVar.zzv(zzmpVar, str, false);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    public final void zzh(zzpe zzpeVar) {
        this.zzf = zzpeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    public final synchronized void zzi(zzmp zzmpVar) {
        boolean z10;
        String str;
        boolean z11;
        String str2;
        boolean z12;
        String str3;
        long j10;
        int i10;
        String unused;
        String unused2;
        try {
            if (this.zzf != null) {
                zzbl zzblVar = zzmpVar.zzb;
                if (!zzblVar.zzo()) {
                    zzvh zzvhVar = zzmpVar.zzd;
                    if (zzvhVar != null) {
                        if (zzvhVar.zzd >= zzl()) {
                            zzov zzovVar = (zzov) this.zze.get(this.zzh);
                            if (zzovVar != null) {
                                j10 = zzovVar.zzd;
                                if (j10 == -1) {
                                    i10 = zzovVar.zzc;
                                    if (i10 == zzmpVar.zzc) {
                                    }
                                }
                            }
                        }
                    }
                    int i11 = zzmpVar.zzc;
                    zzov zzm = zzm(i11, zzvhVar);
                    if (this.zzh == null) {
                        str3 = zzm.zzb;
                        this.zzh = str3;
                    }
                    if (zzvhVar != null && zzvhVar.zzb()) {
                        Object obj = zzvhVar.zza;
                        long j11 = zzvhVar.zzd;
                        int i12 = zzvhVar.zzb;
                        zzov zzm2 = zzm(i11, new zzvh(obj, j11, i12));
                        z12 = zzm2.zzf;
                        if (!z12) {
                            zzm2.zzf = true;
                            zzbj zzbjVar = this.zzd;
                            zzblVar.zzn(obj, zzbjVar);
                            zzbjVar.zzg(i12);
                            Math.max(0L, zzex.zzv(0L) + zzex.zzv(0L));
                            unused = zzm2.zzb;
                        }
                    }
                    z10 = zzm.zzf;
                    if (!z10) {
                        zzm.zzf = true;
                        unused2 = zzm.zzb;
                    }
                    str = zzm.zzb;
                    if (str.equals(this.zzh)) {
                        z11 = zzm.zzg;
                        if (!z11) {
                            zzm.zzg = true;
                            zzpe zzpeVar = this.zzf;
                            str2 = zzm.zzb;
                            zzpeVar.zzu(zzmpVar, str2);
                            return;
                        }
                    }
                }
                return;
            }
            throw null;
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    public final synchronized void zzj(zzmp zzmpVar, int i10) {
        boolean z10;
        String str;
        String str2;
        boolean z11;
        try {
            if (this.zzf != null) {
                Iterator it = this.zze.values().iterator();
                while (it.hasNext()) {
                    zzov zzovVar = (zzov) it.next();
                    if (zzovVar.zzk(zzmpVar)) {
                        it.remove();
                        z10 = zzovVar.zzf;
                        if (z10) {
                            str = zzovVar.zzb;
                            boolean equals = str.equals(this.zzh);
                            boolean z12 = false;
                            if (i10 == 0 && equals) {
                                z11 = zzovVar.zzg;
                                if (z11) {
                                    z12 = true;
                                }
                            }
                            if (equals) {
                                zzo(zzovVar);
                            }
                            zzpe zzpeVar = this.zzf;
                            str2 = zzovVar.zzb;
                            zzpeVar.zzv(zzmpVar, str2, z12);
                        }
                    }
                }
                zzp(zzmpVar);
            } else {
                throw null;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    public final synchronized void zzk(zzmp zzmpVar) {
        boolean z10;
        String str;
        String str2;
        try {
            if (this.zzf != null) {
                zzbl zzblVar = this.zzg;
                this.zzg = zzmpVar.zzb;
                Iterator it = this.zze.values().iterator();
                while (it.hasNext()) {
                    zzov zzovVar = (zzov) it.next();
                    if (zzovVar.zzl(zzblVar, this.zzg) && !zzovVar.zzk(zzmpVar)) {
                    }
                    it.remove();
                    z10 = zzovVar.zzf;
                    if (z10) {
                        str = zzovVar.zzb;
                        if (str.equals(this.zzh)) {
                            zzo(zzovVar);
                        }
                        zzpe zzpeVar = this.zzf;
                        str2 = zzovVar.zzb;
                        zzpeVar.zzv(zzmpVar, str2, false);
                    }
                }
                zzp(zzmpVar);
            } else {
                throw null;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public zzow(zzfwh zzfwhVar) {
        this.zzc = new zzbk();
        this.zzd = new zzbj();
        this.zze = new HashMap();
        this.zzg = zzbl.zza;
        this.zzi = -1L;
    }
}
