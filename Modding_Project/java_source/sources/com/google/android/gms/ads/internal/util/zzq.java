package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzq extends BroadcastReceiver {
    final /* synthetic */ zzs zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzq(zzs zzsVar, zzr zzrVar) {
        Objects.requireNonNull(zzsVar);
        this.zza = zzsVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (Objects.equals(intent.getAction(), "android.intent.action.USER_PRESENT")) {
            zzs.zzf(this.zza, true);
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            zzs.zzf(this.zza, false);
        }
    }
}
