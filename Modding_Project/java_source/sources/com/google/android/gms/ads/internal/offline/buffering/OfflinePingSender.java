package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzbpm;
import com.google.android.gms.internal.ads.zzbtj;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
@KeepForSdk
/* loaded from: classes4.dex */
public class OfflinePingSender extends Worker {
    private final zzbtj zza;

    public OfflinePingSender(@NonNull Context context, @NonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.zza = zzbb.zza().zzo(context, new zzbpm());
    }

    @Override // androidx.work.Worker
    @NonNull
    public final ListenableWorker.Result doWork() {
        try {
            this.zza.zzh();
            return ListenableWorker.Result.success();
        } catch (RemoteException unused) {
            return ListenableWorker.Result.failure();
        }
    }
}
