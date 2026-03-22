package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgxr extends zzgxs {
    final /* synthetic */ zzgxz zza;
    private int zzb;
    private final int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgxr(zzgxz zzgxzVar) {
        Objects.requireNonNull(zzgxzVar);
        this.zza = zzgxzVar;
        this.zzb = 0;
        this.zzc = zzgxzVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zzb < this.zzc) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgxu
    public final byte zza() {
        int i10 = this.zzb;
        if (i10 < this.zzc) {
            this.zzb = i10 + 1;
            return this.zza.zzb(i10);
        }
        throw new NoSuchElementException();
    }
}
