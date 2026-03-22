package com.google.android.recaptcha.internal;

import gt.g;
import gt.g0;
import java.util.TimerTask;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzai extends TimerTask {
    final /* synthetic */ zzan zza;

    public zzai(zzan zzanVar) {
        this.zza = zzanVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        g0 g0Var;
        zzan zzanVar = this.zza;
        g0Var = zzanVar.zzb;
        g.d(g0Var, null, null, new zzaj(zzanVar, null), 3, null);
    }
}
