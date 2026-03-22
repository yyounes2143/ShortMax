package com.google.android.gms.internal.fido;

import java.util.NoSuchElementException;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
final class zzcq extends zzcs {
    final /* synthetic */ zzcz zza;
    private int zzb = 0;
    private final int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcq(zzcz zzczVar) {
        this.zza = zzczVar;
        this.zzc = zzczVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zzb < this.zzc) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.fido.zzcu
    public final byte zza() {
        int i10 = this.zzb;
        if (i10 < this.zzc) {
            this.zzb = i10 + 1;
            return this.zza.zzb(i10);
        }
        throw new NoSuchElementException();
    }
}
