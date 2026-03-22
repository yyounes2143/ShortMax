package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzazs {
    private final int zza;
    private final int zzb;
    private final int zzc;
    private final boolean zzd;
    private final zzbah zze;
    private final zzbap zzf;
    private int zzn;
    private final Object zzg = new Object();
    private final ArrayList zzh = new ArrayList();
    private final ArrayList zzi = new ArrayList();
    private final ArrayList zzj = new ArrayList();
    private int zzk = 0;
    private int zzl = 0;
    private int zzm = 0;
    private String zzo = "";
    private String zzp = "";
    private String zzq = "";

    public zzazs(int i10, int i11, int i12, int i13, int i14, int i15, int i16, boolean z10) {
        this.zza = i10;
        this.zzb = i11;
        this.zzc = i12;
        this.zzd = z10;
        this.zze = new zzbah(i13);
        this.zzf = new zzbap(i14, i15, i16);
    }

    private final void zzm(@Nullable String str, boolean z10, float f10, float f11, float f12, float f13) {
        ArrayList arrayList;
        if (str != null) {
            if (str.length() >= this.zzc) {
                synchronized (this.zzg) {
                    try {
                        this.zzh.add(str);
                        this.zzk += str.length();
                        if (z10) {
                            this.zzi.add(str);
                            this.zzj.add(new zzbad(f10, f11, f12, f13, arrayList.size() - 1));
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    private static final String zzn(ArrayList arrayList, int i10) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            sb2.append((String) arrayList.get(i11));
            sb2.append(' ');
            i11++;
            if (sb2.length() > 100) {
                break;
            }
        }
        sb2.deleteCharAt(sb2.length() - 1);
        String sb3 = sb2.toString();
        if (sb3.length() < 100) {
            return sb3;
        }
        return sb3.substring(0, 100);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzazs)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        String str = ((zzazs) obj).zzo;
        if (str == null || !str.equals(this.zzo)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.zzo.hashCode();
    }

    public final String toString() {
        ArrayList arrayList = this.zzh;
        int i10 = this.zzl;
        int i11 = this.zzn;
        int i12 = this.zzk;
        String zzn = zzn(arrayList, 100);
        String zzn2 = zzn(this.zzi, 100);
        String str = this.zzo;
        String str2 = this.zzp;
        String str3 = this.zzq;
        return "ActivityContent fetchId: " + i10 + " score:" + i11 + " total_length:" + i12 + "\n text: " + zzn + "\n viewableText" + zzn2 + "\n signture: " + str + "\n viewableSignture: " + str2 + "\n viewableSignatureForVertical: " + str3;
    }

    @VisibleForTesting
    final int zza(int i10, int i11) {
        if (this.zzd) {
            return this.zzb;
        }
        return (i10 * this.zza) + (i11 * this.zzb);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final int zzb() {
        return this.zzk;
    }

    public final String zzc() {
        return this.zzo;
    }

    public final String zzd() {
        return this.zzq;
    }

    public final void zze() {
        synchronized (this.zzg) {
            this.zzm--;
        }
    }

    public final void zzf() {
        synchronized (this.zzg) {
            this.zzm++;
        }
    }

    public final void zzg(int i10) {
        this.zzl = i10;
    }

    public final void zzh(String str, boolean z10, float f10, float f11, float f12, float f13) {
        zzm(str, z10, f10, f11, f12, f13);
    }

    public final void zzi(String str, boolean z10, float f10, float f11, float f12, float f13) {
        zzm(str, z10, f10, f11, f12, f13);
        synchronized (this.zzg) {
            try {
                if (this.zzm < 0) {
                    int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zze("ActivityContent: negative number of WebViews.");
                }
                zzj();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zzj() {
        synchronized (this.zzg) {
            try {
                int zza = zza(this.zzk, this.zzl);
                if (zza > this.zzn) {
                    this.zzn = zza;
                    if (!com.google.android.gms.ads.internal.zzv.zzp().zzi().zzK()) {
                        zzbah zzbahVar = this.zze;
                        this.zzo = zzbahVar.zza(this.zzh);
                        this.zzp = zzbahVar.zza(this.zzi);
                    }
                    if (!com.google.android.gms.ads.internal.zzv.zzp().zzi().zzL()) {
                        this.zzq = this.zzf.zza(this.zzi, this.zzj);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zzk() {
        synchronized (this.zzg) {
            try {
                int zza = zza(this.zzk, this.zzl);
                if (zza > this.zzn) {
                    this.zzn = zza;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean zzl() {
        boolean z10;
        synchronized (this.zzg) {
            if (this.zzm == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }
}
