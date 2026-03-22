package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzhbq implements Iterator {
    final /* synthetic */ zzhbt zza;
    private int zzb;
    private boolean zzc;
    private Iterator zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzhbq(zzhbt zzhbtVar, zzhbs zzhbsVar) {
        Objects.requireNonNull(zzhbtVar);
        this.zza = zzhbtVar;
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
        zzhbt zzhbtVar = this.zza;
        i10 = zzhbtVar.zzb;
        if (i11 >= i10) {
            map = zzhbtVar.zzc;
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
        zzhbt zzhbtVar = this.zza;
        i10 = zzhbtVar.zzb;
        if (i11 < i10) {
            objArr = zzhbtVar.zza;
            return (zzhbp) objArr[i11];
        }
        return (Map.Entry) zza().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i10;
        if (this.zzc) {
            this.zzc = false;
            zzhbt zzhbtVar = this.zza;
            zzhbtVar.zzo();
            int i11 = this.zzb;
            i10 = zzhbtVar.zzb;
            if (i11 < i10) {
                this.zzb = i11 - 1;
                zzhbtVar.zzm(i11);
                return;
            }
            zza().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
