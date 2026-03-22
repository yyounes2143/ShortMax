package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgda extends zzgcn {
    private zzgcz zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgda(zzfyl zzfylVar, boolean z10, Executor executor, Callable callable) {
        super(zzfylVar, z10, false);
        this.zza = new zzgcy(this, callable, executor);
        zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzgcn
    final void zzA(int i10) {
        super.zzA(i10);
        if (i10 == 1) {
            this.zza = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    protected final void zzk() {
        zzgcz zzgczVar = this.zza;
        if (zzgczVar != null) {
            zzgczVar.zzh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcn
    final void zzy() {
        zzgcz zzgczVar = this.zza;
        if (zzgczVar != null) {
            zzgczVar.zzf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcn
    final void zzx(int i10, Object obj) {
    }
}
