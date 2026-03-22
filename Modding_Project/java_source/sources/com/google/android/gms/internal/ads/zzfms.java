package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.IntentFilter;
import java.lang.ref.WeakReference;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfms {
    @SuppressLint({"StaticFieldLeak"})
    private static final zzfms zza = new zzfms();
    private WeakReference zzb;
    private boolean zzc = false;
    private boolean zzd = false;

    public static zzfms zza() {
        return zza;
    }

    public final void zzc() {
        KeyguardManager keyguardManager;
        Context context = (Context) this.zzb.get();
        if (context != null && (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) != null) {
            boolean isDeviceLocked = keyguardManager.isDeviceLocked();
            zzd(this.zzc, isDeviceLocked);
            this.zzd = isDeviceLocked;
        }
    }

    public final void zzd(boolean z10, boolean z11) {
        boolean z12;
        boolean z13;
        boolean z14;
        if (z11 || z10) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (this.zzd || this.zzc) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (z12 != z13) {
            for (zzflp zzflpVar : zzfmi.zza().zzc()) {
                zzfmy zzg = zzflpVar.zzg();
                if (z11 || z10) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                zzg.zzm(z14);
            }
        }
    }

    public final void zze(Context context) {
        if (context == null) {
            return;
        }
        this.zzb = new WeakReference(context);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        context.registerReceiver(new zzfmr(this), intentFilter);
    }
}
