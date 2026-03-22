package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.Objects;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzaps implements Executor {
    final /* synthetic */ Handler zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaps(zzapu zzapuVar, Handler handler) {
        this.zza = handler;
        Objects.requireNonNull(zzapuVar);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.zza.post(runnable);
    }
}
