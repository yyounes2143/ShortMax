package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzhbg extends zzgxs {
    final zzhbi zza;
    zzgxu zzb;
    final /* synthetic */ zzhbk zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhbg(zzhbk zzhbkVar) {
        Objects.requireNonNull(zzhbkVar);
        this.zzc = zzhbkVar;
        this.zza = new zzhbi(zzhbkVar, null);
        this.zzb = zzb();
    }

    private final zzgxu zzb() {
        zzhbi zzhbiVar = this.zza;
        if (zzhbiVar.hasNext()) {
            return zzhbiVar.next().iterator();
        }
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zzb != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgxu
    public final byte zza() {
        zzgxu zzgxuVar = this.zzb;
        if (zzgxuVar != null) {
            byte zza = zzgxuVar.zza();
            if (!this.zzb.hasNext()) {
                this.zzb = zzb();
            }
            return zza;
        }
        throw new NoSuchElementException();
    }
}
