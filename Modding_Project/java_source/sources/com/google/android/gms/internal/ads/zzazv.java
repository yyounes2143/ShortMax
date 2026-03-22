package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.MobileAds;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzazv implements Application.ActivityLifecycleCallbacks {
    @Nullable
    private Activity zza;
    private Context zzb;
    private Runnable zzh;
    private long zzj;
    private final Object zzc = new Object();
    private boolean zzd = true;
    private boolean zze = false;
    private final List zzf = new ArrayList();
    private final List zzg = new ArrayList();
    private boolean zzi = false;

    private final void zzk(Activity activity) {
        synchronized (this.zzc) {
            try {
                if (!activity.getClass().getName().startsWith(MobileAds.ERROR_DOMAIN)) {
                    this.zza = activity;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.zzc) {
            try {
                Activity activity2 = this.zza;
                if (activity2 == null) {
                    return;
                }
                if (activity2.equals(activity)) {
                    this.zza = null;
                }
                Iterator it = this.zzg.iterator();
                while (it.hasNext()) {
                    try {
                        if (((zzbak) it.next()).zza()) {
                            it.remove();
                        }
                    } catch (Exception e10) {
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zzk(activity);
        synchronized (this.zzc) {
            for (zzbak zzbakVar : this.zzg) {
                try {
                    zzbakVar.zzb();
                } catch (Exception e10) {
                    com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "AppActivityTracker.ActivityListener.onActivityPaused");
                    int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
                }
            }
        }
        this.zze = true;
        Runnable runnable = this.zzh;
        if (runnable != null) {
            com.google.android.gms.ads.internal.util.zzs.zza.removeCallbacks(runnable);
        }
        zzfrw zzfrwVar = com.google.android.gms.ads.internal.util.zzs.zza;
        zzazu zzazuVar = new zzazu(this);
        this.zzh = zzazuVar;
        zzfrwVar.postDelayed(zzazuVar, this.zzj);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zzk(activity);
        this.zze = false;
        boolean z10 = this.zzd;
        this.zzd = true;
        Runnable runnable = this.zzh;
        if (runnable != null) {
            com.google.android.gms.ads.internal.util.zzs.zza.removeCallbacks(runnable);
        }
        synchronized (this.zzc) {
            for (zzbak zzbakVar : this.zzg) {
                try {
                    zzbakVar.zzc();
                } catch (Exception e10) {
                    com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "AppActivityTracker.ActivityListener.onActivityResumed");
                    int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
                }
            }
            if (!z10) {
                for (zzazw zzazwVar : this.zzf) {
                    try {
                        zzazwVar.zza(true);
                    } catch (Exception e11) {
                        int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzh("", e11);
                    }
                }
            } else {
                int i12 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zze("App is still foreground.");
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zzk(activity);
    }

    @Nullable
    public final Activity zza() {
        return this.zza;
    }

    @Nullable
    public final Context zzb() {
        return this.zzb;
    }

    public final void zzf(zzazw zzazwVar) {
        synchronized (this.zzc) {
            this.zzf.add(zzazwVar);
        }
    }

    public final void zzg(Application application, Context context) {
        if (!this.zzi) {
            application.registerActivityLifecycleCallbacks(this);
            if (context instanceof Activity) {
                zzk((Activity) context);
            }
            this.zzb = application;
            this.zzj = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbg)).longValue();
            this.zzi = true;
        }
    }

    public final void zzh(zzazw zzazwVar) {
        synchronized (this.zzc) {
            this.zzf.remove(zzazwVar);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
