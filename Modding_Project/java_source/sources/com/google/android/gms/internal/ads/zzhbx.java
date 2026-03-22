package com.google.android.gms.internal.ads;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzhbx {
    private static volatile int zza = 100;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Object zza(Object obj);

    abstract Object zzb();

    abstract Object zzc(Object obj);

    abstract void zzd(Object obj, int i10, int i11);

    abstract void zze(Object obj, int i10, long j10);

    abstract void zzf(Object obj, int i10, Object obj2);

    abstract void zzg(Object obj, int i10, zzgxz zzgxzVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzh(Object obj, int i10, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzi(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzj(Object obj, Object obj2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzk(Object obj, zzhbf zzhbfVar, int i10) throws IOException {
        int zzd = zzhbfVar.zzd();
        int i11 = zzd >>> 3;
        int i12 = zzd & 7;
        if (i12 != 0) {
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 != 3) {
                        if (i12 != 4) {
                            if (i12 == 5) {
                                zzd(obj, i11, zzhbfVar.zzf());
                                return true;
                            }
                            throw new zzgzv("Protocol message tag had invalid wire type.");
                        } else if (i10 != 0) {
                            return false;
                        } else {
                            throw new zzgzw("Protocol message end-group tag did not match expected tag.");
                        }
                    }
                    Object zzb = zzb();
                    int i13 = i11 << 3;
                    int i14 = i10 + 1;
                    if (i14 < zza) {
                        while (zzhbfVar.zzc() != Integer.MAX_VALUE && zzk(zzb, zzhbfVar, i14)) {
                        }
                        if ((i13 | 4) == zzhbfVar.zzd()) {
                            zzf(obj, i11, zzc(zzb));
                            return true;
                        }
                        throw new zzgzw("Protocol message end-group tag did not match expected tag.");
                    }
                    throw new zzgzw("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
                }
                zzg(obj, i11, zzhbfVar.zzp());
                return true;
            }
            zze(obj, i11, zzhbfVar.zzk());
            return true;
        }
        zzh(obj, i11, zzhbfVar.zzl());
        return true;
    }
}
