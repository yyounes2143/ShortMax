package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzayk implements Callable {
    protected final zzawx zza;
    protected final String zzb;
    protected final String zzc;
    protected final zzast zzd;
    protected Method zze;
    protected final int zzf;
    protected final int zzg;

    public zzayk(zzawx zzawxVar, String str, String str2, zzast zzastVar, int i10, int i11) {
        this.zza = zzawxVar;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = zzastVar;
        this.zzf = i10;
        this.zzg = i11;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        int i10;
        try {
            long nanoTime = System.nanoTime();
            zzawx zzawxVar = this.zza;
            Method zzi = zzawxVar.zzi(this.zzb, this.zzc);
            this.zze = zzi;
            if (zzi != null) {
                zza();
                zzavo zzd = zzawxVar.zzd();
                if (zzd != null && (i10 = this.zzf) != Integer.MIN_VALUE) {
                    zzd.zzc(this.zzg, i10, (System.nanoTime() - nanoTime) / 1000, null, null);
                    return null;
                }
                return null;
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    protected abstract void zza() throws IllegalAccessException, InvocationTargetException;
}
