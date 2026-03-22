package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
/* loaded from: classes5.dex */
final class zzar implements Iterator {
    final /* synthetic */ zzas zza;
    private int zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzar(zzas zzasVar) {
        Objects.requireNonNull(zzasVar);
        this.zza = zzasVar;
        this.zzb = 0;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zzb < this.zza.zzb().length()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        zzas zzasVar = this.zza;
        String zzb = zzasVar.zzb();
        int i10 = this.zzb;
        if (i10 < zzb.length()) {
            this.zzb = i10 + 1;
            return new zzas(String.valueOf(zzasVar.zzb().charAt(i10)));
        }
        throw new NoSuchElementException();
    }
}
