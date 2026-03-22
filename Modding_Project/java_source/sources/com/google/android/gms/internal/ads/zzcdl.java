package com.google.android.gms.internal.ads;

import androidx.core.app.NotificationCompat;
import java.util.HashMap;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcdl implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ zzcdn zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcdl(zzcdn zzcdnVar, String str, String str2, long j10) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = j10;
        Objects.requireNonNull(zzcdnVar);
        this.zzd = zzcdnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put(NotificationCompat.CATEGORY_EVENT, "precacheComplete");
        hashMap.put("src", this.zza);
        hashMap.put("cachedSrc", this.zzb);
        hashMap.put("totalDuration", Long.toString(this.zzc));
        zzcdn.zze(this.zzd, "onPrecacheEvent", hashMap);
    }
}
