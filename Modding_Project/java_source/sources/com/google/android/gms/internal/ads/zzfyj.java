package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
class zzfyj extends zzfyk {
    Object[] zza;
    int zzb;
    boolean zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfyj(int i10) {
        zzfxn.zza(i10, "initialCapacity");
        this.zza = new Object[i10];
        this.zzb = 0;
    }

    private final void zzf(int i10) {
        int length = this.zza.length;
        int zze = zzfyk.zze(length, this.zzb + i10);
        if (zze <= length && !this.zzc) {
            return;
        }
        this.zza = Arrays.copyOf(this.zza, zze);
        this.zzc = false;
    }

    public final zzfyj zza(Object obj) {
        obj.getClass();
        zzf(1);
        Object[] objArr = this.zza;
        int i10 = this.zzb;
        this.zzb = i10 + 1;
        objArr[i10] = obj;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfyk
    public /* bridge */ /* synthetic */ zzfyk zzb(Object obj) {
        throw null;
    }

    public final zzfyk zzc(Iterable iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            zzf(collection.size());
            if (collection instanceof zzfyl) {
                this.zzb = ((zzfyl) collection).zza(this.zza, this.zzb);
                return this;
            }
        }
        for (Object obj : iterable) {
            zzb(obj);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzd(Object[] objArr, int i10) {
        zzgaa.zzb(objArr, 2);
        zzf(2);
        System.arraycopy(objArr, 0, this.zza, this.zzb, 2);
        this.zzb += 2;
    }
}
