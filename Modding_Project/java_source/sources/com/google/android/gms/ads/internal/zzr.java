package com.google.android.gms.ads.internal;

import android.os.AsyncTask;
import com.google.android.gms.internal.ads.zzavu;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzr extends AsyncTask {
    final /* synthetic */ zzu zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzr(zzu zzuVar, zzt zztVar) {
        Objects.requireNonNull(zzuVar);
        this.zza = zzuVar;
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        zzu zzuVar = this.zza;
        String str = (String) obj;
        if (zzu.zzf(zzuVar) != null && str != null) {
            zzu.zzf(zzuVar).loadUrl(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: zza */
    public final String doInBackground(Void... voidArr) {
        try {
            zzu zzuVar = this.zza;
            zzu.zzw(zzuVar, (zzavu) zzu.zzv(zzuVar).get(1000L, TimeUnit.MILLISECONDS));
        } catch (InterruptedException e10) {
            e = e10;
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("", e);
        } catch (ExecutionException e11) {
            e = e11;
            int i102 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("", e);
        } catch (TimeoutException e12) {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("", e12);
        }
        return this.zza.zzq();
    }
}
