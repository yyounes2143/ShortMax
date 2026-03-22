package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzgcp extends zzgco {
    private static final AtomicReferenceFieldUpdater zza = AtomicReferenceFieldUpdater.newUpdater(zzgcs.class, Set.class, "seenExceptionsField");
    private static final AtomicIntegerFieldUpdater zzb = AtomicIntegerFieldUpdater.newUpdater(zzgcs.class, "remainingField");

    private zzgcp() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgco
    public final int zza(zzgcs zzgcsVar) {
        return zzb.decrementAndGet(zzgcsVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgco
    public final void zzb(zzgcs zzgcsVar, Set set, Set set2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = zza;
        while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, zzgcsVar, null, set2) && atomicReferenceFieldUpdater.get(zzgcsVar) == null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgcp(zzgcr zzgcrVar) {
        super(null);
    }
}
