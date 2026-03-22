package com.google.android.gms.internal.ads;

import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzgcq extends zzgco {
    private zzgcq() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgco
    public final int zza(zzgcs zzgcsVar) {
        int i10;
        synchronized (zzgcsVar) {
            i10 = zzgcsVar.remainingField - 1;
            zzgcsVar.remainingField = i10;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgco
    public final void zzb(zzgcs zzgcsVar, Set set, Set set2) {
        synchronized (zzgcsVar) {
            try {
                if (zzgcsVar.seenExceptionsField == null) {
                    zzgcsVar.seenExceptionsField = set2;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgcq(zzgcr zzgcrVar) {
        super(null);
    }
}
