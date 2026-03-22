package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfwu implements Iterator {
    final Iterator zza;
    Collection zzb;
    final /* synthetic */ zzfwv zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfwu(zzfwv zzfwvVar) {
        Objects.requireNonNull(zzfwvVar);
        this.zzc = zzfwvVar;
        this.zza = zzfwvVar.zza.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Map.Entry entry = (Map.Entry) this.zza.next();
        this.zzb = (Collection) entry.getValue();
        return this.zzc.zza(entry);
    }

    @Override // java.util.Iterator
    public final void remove() {
        boolean z10;
        int i10;
        if (this.zzb != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzfvp.zzm(z10, "no calls to next() since the last call to remove()");
        this.zza.remove();
        zzfxi zzfxiVar = this.zzc.zzb;
        i10 = zzfxiVar.zzb;
        zzfxiVar.zzb = i10 - this.zzb.size();
        this.zzb.clear();
        this.zzb = null;
    }
}
