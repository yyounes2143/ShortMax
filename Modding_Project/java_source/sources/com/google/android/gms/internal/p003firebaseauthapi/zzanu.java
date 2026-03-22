package com.google.android.gms.internal.p003firebaseauthapi;

import java.io.IOException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzanu  reason: invalid package */
/* loaded from: classes4.dex */
abstract class zzanu<T, B> {
    private static volatile int zza = 100;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int zza(T t10);

    abstract B zza();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T zza(T t10, T t11);

    abstract void zza(B b10, int i10, int i11);

    abstract void zza(B b10, int i10, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(B b10, int i10, zzajv zzajvVar);

    abstract void zza(B b10, int i10, T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(T t10, zzaol zzaolVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean zza(zzanc zzancVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zza(B b10, zzanc zzancVar, int i10) throws IOException {
        int zzd = zzancVar.zzd();
        int i11 = zzd >>> 3;
        int i12 = zzd & 7;
        if (i12 == 0) {
            zzb(b10, i11, zzancVar.zzl());
            return true;
        } else if (i12 == 1) {
            zza((zzanu<T, B>) b10, i11, zzancVar.zzk());
            return true;
        } else if (i12 == 2) {
            zza((zzanu<T, B>) b10, i11, zzancVar.zzp());
            return true;
        } else if (i12 != 3) {
            if (i12 == 4) {
                if (i10 != 0) {
                    return false;
                }
                throw zzall.zzb();
            } else if (i12 == 5) {
                zza((zzanu<T, B>) b10, i11, zzancVar.zzf());
                return true;
            } else {
                throw zzall.zza();
            }
        } else {
            B zza2 = zza();
            int i13 = 4 | (i11 << 3);
            int i14 = i10 + 1;
            if (i14 < zza) {
                while (zzancVar.zzc() != Integer.MAX_VALUE && zza((zzanu<T, B>) zza2, zzancVar, i14)) {
                }
                if (i13 == zzancVar.zzd()) {
                    zza((zzanu<T, B>) b10, i11, (int) zze(zza2));
                    return true;
                }
                throw zzall.zzb();
            }
            throw zzall.zzh();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int zzb(T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzb(B b10, int i10, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzb(T t10, zzaol zzaolVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzb(Object obj, B b10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract B zzc(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzc(Object obj, T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T zzd(Object obj);

    abstract T zze(B b10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzf(Object obj);
}
