package com.google.android.recaptcha.internal;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public abstract class zzpl {
    private static volatile int zza = 100;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Object zza(Object obj);

    abstract Object zzb();

    abstract Object zzc(Object obj);

    abstract void zzd(Object obj, int i10, int i11);

    abstract void zze(Object obj, int i10, long j10);

    abstract void zzf(Object obj, int i10, Object obj2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzg(Object obj, int i10, zzle zzleVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzh(Object obj, int i10, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzi(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzj(Object obj, Object obj2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzk(Object obj, zzov zzovVar, int i10) throws IOException {
        int zzd = zzovVar.zzd();
        int i11 = zzd >>> 3;
        int i12 = zzd & 7;
        if (i12 != 0) {
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 != 3) {
                        if (i12 != 4) {
                            if (i12 == 5) {
                                zzd(obj, i11, zzovVar.zzf());
                                return true;
                            }
                            throw new zznm("Protocol message tag had invalid wire type.");
                        }
                        return false;
                    }
                    Object zzb = zzb();
                    int i13 = i11 << 3;
                    int i14 = i10 + 1;
                    if (i14 < zza) {
                        while (zzovVar.zzc() != Integer.MAX_VALUE && zzk(zzb, zzovVar, i14)) {
                        }
                        if ((i13 | 4) == zzovVar.zzd()) {
                            zzf(obj, i11, zzc(zzb));
                            return true;
                        }
                        throw new zznn("Protocol message end-group tag did not match expected tag.");
                    }
                    throw new zznn("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
                }
                zzg(obj, i11, zzovVar.zzp());
                return true;
            }
            zze(obj, i11, zzovVar.zzk());
            return true;
        }
        zzh(obj, i11, zzovVar.zzl());
        return true;
    }
}
