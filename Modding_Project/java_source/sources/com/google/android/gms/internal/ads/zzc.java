package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.os.Build;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzc {
    public final AudioAttributes zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzc(zze zzeVar, zzd zzdVar) {
        AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(0).setFlags(0).setUsage(1);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            usage.setAllowedCapturePolicy(1);
        }
        if (i10 >= 32) {
            usage.setSpatializationBehavior(0);
        }
        this.zza = usage.build();
    }
}
