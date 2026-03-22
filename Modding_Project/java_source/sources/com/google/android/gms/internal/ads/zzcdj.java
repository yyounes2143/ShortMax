package com.google.android.gms.internal.ads;

import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.MBridgeConstans;
import java.util.HashMap;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcdj implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ int zzc;
    final /* synthetic */ int zzd;
    final /* synthetic */ long zze;
    final /* synthetic */ long zzf;
    final /* synthetic */ boolean zzg;
    final /* synthetic */ int zzh;
    final /* synthetic */ int zzi;
    final /* synthetic */ zzcdn zzj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcdj(zzcdn zzcdnVar, String str, String str2, int i10, int i11, long j10, long j11, boolean z10, int i12, int i13) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = i10;
        this.zzd = i11;
        this.zze = j10;
        this.zzf = j11;
        this.zzg = z10;
        this.zzh = i12;
        this.zzi = i13;
        Objects.requireNonNull(zzcdnVar);
        this.zzj = zzcdnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put(NotificationCompat.CATEGORY_EVENT, "precacheProgress");
        hashMap.put("src", this.zza);
        hashMap.put("cachedSrc", this.zzb);
        hashMap.put("bytesLoaded", Integer.toString(this.zzc));
        hashMap.put("totalBytes", Integer.toString(this.zzd));
        hashMap.put("bufferedDuration", Long.toString(this.zze));
        hashMap.put("totalDuration", Long.toString(this.zzf));
        if (true != this.zzg) {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        } else {
            str = "1";
        }
        hashMap.put("cacheReady", str);
        hashMap.put("playerCount", Integer.toString(this.zzh));
        hashMap.put("playerPreparedCount", Integer.toString(this.zzi));
        zzcdn.zze(this.zzj, "onPrecacheEvent", hashMap);
    }
}
