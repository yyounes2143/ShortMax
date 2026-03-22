package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfnn implements Runnable {
    final /* synthetic */ zzfns zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfnn(zzfns zzfnsVar) {
        Objects.requireNonNull(zzfnsVar);
        this.zza = zzfnsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfnm zzfnmVar;
        zzfnmVar = this.zza.zzl;
        zzfnmVar.zzb();
    }
}
