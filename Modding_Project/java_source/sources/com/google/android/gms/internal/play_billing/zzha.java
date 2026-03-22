package com.google.android.gms.internal.play_billing;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
final class zzha implements Iterator {
    final /* synthetic */ zzhd zza;
    private int zzb;
    private boolean zzc;
    private Iterator zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzha(zzhd zzhdVar, zzhc zzhcVar) {
        Objects.requireNonNull(zzhdVar);
        this.zza = zzhdVar;
        this.zzb = -1;
    }

    private final Iterator zza() {
        Map map;
        if (this.zzd == null) {
            map = this.zza.zzc;
            this.zzd = map.entrySet().iterator();
        }
        return this.zzd;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i10;
        Map map;
        int i11 = this.zzb + 1;
        zzhd zzhdVar = this.zza;
        i10 = zzhdVar.zzb;
        if (i11 >= i10) {
            map = zzhdVar.zzc;
            if (!map.isEmpty() && zza().hasNext()) {
                return true;
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        int i10;
        Object[] objArr;
        this.zzc = true;
        int i11 = this.zzb + 1;
        this.zzb = i11;
        zzhd zzhdVar = this.zza;
        i10 = zzhdVar.zzb;
        if (i11 < i10) {
            objArr = zzhdVar.zza;
            return (zzgz) objArr[i11];
        }
        return (Map.Entry) zza().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i10;
        if (this.zzc) {
            this.zzc = false;
            zzhd zzhdVar = this.zza;
            zzhdVar.zzo();
            int i11 = this.zzb;
            i10 = zzhdVar.zzb;
            if (i11 < i10) {
                this.zzb = i11 - 1;
                zzhdVar.zzm(i11);
                return;
            }
            zza().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
