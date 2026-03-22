package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzazb extends BroadcastReceiver {
    final /* synthetic */ zzaze zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzazb(zzaze zzazeVar) {
        Objects.requireNonNull(zzazeVar);
        this.zza = zzazeVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zza.zzj(3);
    }
}
