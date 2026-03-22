package com.google.android.gms.internal.ads;

import java.util.ListIterator;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfze extends zzgav {
    final /* synthetic */ zzfzf zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfze(zzfzf zzfzfVar, ListIterator listIterator) {
        super(listIterator);
        Objects.requireNonNull(zzfzfVar);
        this.zza = zzfzfVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgau
    public final Object zza(Object obj) {
        return this.zza.zzb.apply(obj);
    }
}
