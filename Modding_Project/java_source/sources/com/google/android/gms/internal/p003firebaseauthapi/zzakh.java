package com.google.android.gms.internal.p003firebaseauthapi;

import java.io.IOException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzakh  reason: invalid package */
/* loaded from: classes4.dex */
public abstract class zzakh {
    private static volatile int zzd = 100;
    int zza;
    int zzb;
    zzakl zzc;
    private int zze;
    private int zzf;

    public static int zza(int i10) {
        return (-(i10 & 1)) ^ (i10 >>> 1);
    }

    public abstract double zza() throws IOException;

    public abstract float zzb() throws IOException;

    public abstract int zzb(int i10) throws zzall;

    public abstract int zzc();

    public abstract void zzc(int i10) throws zzall;

    public abstract int zzd() throws IOException;

    public abstract void zzd(int i10);

    public abstract int zze() throws IOException;

    public abstract boolean zze(int i10) throws IOException;

    public abstract int zzf() throws IOException;

    public abstract int zzg() throws IOException;

    public abstract int zzh() throws IOException;

    public abstract int zzi() throws IOException;

    public abstract int zzj() throws IOException;

    public abstract long zzk() throws IOException;

    public abstract long zzl() throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract long zzm() throws IOException;

    public abstract long zzn() throws IOException;

    public abstract long zzo() throws IOException;

    public abstract long zzp() throws IOException;

    public abstract zzajv zzq() throws IOException;

    public abstract String zzr() throws IOException;

    public abstract String zzs() throws IOException;

    public final void zzt() throws zzall {
        if (this.zza + this.zze < this.zzf) {
            return;
        }
        throw zzall.zzh();
    }

    public final void zzu() throws zzall {
        if (this.zze == 0) {
            zzc(0);
        }
    }

    public final void zzv() throws IOException {
        int zzi;
        do {
            zzi = zzi();
            if (zzi == 0) {
                return;
            }
            zzt();
            this.zze++;
            this.zze--;
        } while (zze(zzi));
    }

    public abstract boolean zzw() throws IOException;

    public abstract boolean zzx() throws IOException;

    private zzakh() {
        this.zzf = zzd;
        this.zzb = Integer.MAX_VALUE;
    }

    public static long zza(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzakh zza(byte[] bArr, int i10, int i11, boolean z10) {
        zzakk zzakkVar = new zzakk(bArr, i10, i11, z10);
        try {
            zzakkVar.zzb(i11);
            return zzakkVar;
        } catch (zzall e10) {
            throw new IllegalArgumentException(e10);
        }
    }
}
