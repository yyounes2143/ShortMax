package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import java.util.Objects;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbyn implements ThreadFactory {
    private final AtomicInteger zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbyn(zzbyo zzbyoVar) {
        Objects.requireNonNull(zzbyoVar);
        this.zza = new AtomicInteger(1);
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(@NonNull Runnable runnable) {
        int andIncrement = this.zza.getAndIncrement();
        return new Thread(runnable, "AdWorker(SCION_TASK_EXECUTOR) #" + andIncrement);
    }
}
