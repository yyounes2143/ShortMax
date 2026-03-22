package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbbg implements Runnable {
    final /* synthetic */ zzbbk zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbbg(zzbbk zzbbkVar) {
        Objects.requireNonNull(zzbbkVar);
        this.zza = zzbbkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbbk.zzh(this.zza);
    }
}
