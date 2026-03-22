package com.google.android.gms.internal.ads;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
abstract class zzfxu implements Iterator {
    int zzb;
    int zzc;
    int zzd;
    final /* synthetic */ zzfxz zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfxu(zzfxz zzfxzVar, zzfxy zzfxyVar) {
        int i10;
        Objects.requireNonNull(zzfxzVar);
        this.zze = zzfxzVar;
        i10 = zzfxzVar.zzf;
        this.zzb = i10;
        this.zzc = zzfxzVar.zze();
        this.zzd = -1;
    }

    private final void zzb() {
        int i10;
        i10 = this.zze.zzf;
        if (i10 == this.zzb) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zzc >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        zzb();
        if (hasNext()) {
            int i10 = this.zzc;
            this.zzd = i10;
            Object zza = zza(i10);
            this.zzc = this.zze.zzf(this.zzc);
            return zza;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        boolean z10;
        zzb();
        if (this.zzd >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzfvp.zzm(z10, "no calls to next() since the last call to remove()");
        this.zzb += 32;
        int i10 = this.zzd;
        zzfxz zzfxzVar = this.zze;
        zzfxzVar.remove(zzfxz.zzg(zzfxzVar, i10));
        this.zzc--;
        this.zzd = -1;
    }

    abstract Object zza(int i10);
}
