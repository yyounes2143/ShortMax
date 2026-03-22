package com.google.android.gms.internal.play_billing;

import java.util.NoSuchElementException;
import java.util.Objects;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
final class zzea extends zzeb {
    final /* synthetic */ zzei zza;
    private int zzb;
    private final int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzea(zzei zzeiVar) {
        Objects.requireNonNull(zzeiVar);
        this.zza = zzeiVar;
        this.zzb = 0;
        this.zzc = zzeiVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zzb < this.zzc) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.play_billing.zzed
    public final byte zza() {
        int i10 = this.zzb;
        if (i10 < this.zzc) {
            this.zzb = i10 + 1;
            return this.zza.zzb(i10);
        }
        throw new NoSuchElementException();
    }
}
