package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfmr extends BroadcastReceiver {
    final /* synthetic */ zzfms zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfmr(zzfms zzfmsVar) {
        Objects.requireNonNull(zzfmsVar);
        this.zza = zzfmsVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        boolean z10;
        boolean z11;
        if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
            zzfms zzfmsVar = this.zza;
            z11 = zzfmsVar.zzd;
            zzfmsVar.zzd(true, z11);
            zzfmsVar.zzc = true;
        } else if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
            zzfms zzfmsVar2 = this.zza;
            z10 = zzfmsVar2.zzd;
            zzfmsVar2.zzd(false, z10);
            zzfmsVar2.zzc = false;
        }
    }
}
