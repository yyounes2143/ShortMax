package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfwb implements Iterable {
    final /* synthetic */ CharSequence zza;
    final /* synthetic */ zzfwe zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfwb(zzfwe zzfweVar, CharSequence charSequence) {
        this.zza = charSequence;
        Objects.requireNonNull(zzfweVar);
        this.zzb = zzfweVar;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Iterator zzg;
        zzg = this.zzb.zzg(this.zza);
        return zzg;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        zzfvh.zzb(sb2, this, ", ");
        sb2.append(']');
        return sb2.toString();
    }
}
