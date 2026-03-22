package com.google.android.recaptcha.internal;

import gt.g;
import gt.g0;
import java.util.TimerTask;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzep extends TimerTask {
    final /* synthetic */ zzes zza;

    public zzep(zzes zzesVar) {
        this.zza = zzesVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        g0 g0Var;
        zzes zzesVar = this.zza;
        g0Var = zzesVar.zzd;
        g.d(g0Var, null, null, new zzeq(zzesVar, null), 3, null);
    }
}
