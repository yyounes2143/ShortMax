package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfkx implements Runnable {
    final /* synthetic */ zzfld zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfkx(zzfld zzfldVar) {
        Objects.requireNonNull(zzfldVar);
        this.zza = zzfldVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzw();
    }
}
