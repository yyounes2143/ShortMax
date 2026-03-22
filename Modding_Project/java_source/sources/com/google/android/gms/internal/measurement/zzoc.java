package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-measurement-base@@23.0.0 */
/* loaded from: classes5.dex */
final class zzoc implements Iterator {
    final /* synthetic */ zzoe zza;
    private int zzb;
    private boolean zzc;
    private Iterator zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzoc(zzoe zzoeVar, byte[] bArr) {
        Objects.requireNonNull(zzoeVar);
        this.zza = zzoeVar;
        this.zzb = -1;
    }

    private final Iterator zza() {
        if (this.zzd == null) {
            this.zzd = this.zza.zzk().entrySet().iterator();
        }
        return this.zzd;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i10 = this.zzb + 1;
        zzoe zzoeVar = this.zza;
        if (i10 < zzoeVar.zzj()) {
            return true;
        }
        if (!zzoeVar.zzk().isEmpty() && zza().hasNext()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        this.zzc = true;
        int i10 = this.zzb + 1;
        this.zzb = i10;
        zzoe zzoeVar = this.zza;
        if (i10 < zzoeVar.zzj()) {
            return (zzob) zzoeVar.zzi()[i10];
        }
        return (Map.Entry) zza().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.zzc) {
            this.zzc = false;
            zzoe zzoeVar = this.zza;
            zzoeVar.zzh();
            int i10 = this.zzb;
            if (i10 < zzoeVar.zzj()) {
                this.zzb = i10 - 1;
                zzoeVar.zzg(i10);
                return;
            }
            zza().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
