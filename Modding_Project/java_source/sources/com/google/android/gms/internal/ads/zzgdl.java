package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgdl {
    private final boolean zza;
    private final zzfyq zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgdl(boolean z10, zzfyq zzfyqVar, zzgdm zzgdmVar) {
        this.zza = z10;
        this.zzb = zzfyqVar;
    }

    public final com.google.common.util.concurrent.e zza(Callable callable, Executor executor) {
        return new zzgda(this.zzb, this.zza, executor, callable);
    }
}
