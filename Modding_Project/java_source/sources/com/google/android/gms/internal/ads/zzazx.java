package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzazx {
    private final Object zza = new Object();
    private zzazv zzb = null;
    private boolean zzc = false;

    @Nullable
    public final Activity zza() {
        synchronized (this.zza) {
            try {
                zzazv zzazvVar = this.zzb;
                if (zzazvVar != null) {
                    return zzazvVar.zza();
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    public final Context zzb() {
        synchronized (this.zza) {
            try {
                zzazv zzazvVar = this.zzb;
                if (zzazvVar != null) {
                    return zzazvVar.zzb();
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zzc(zzazw zzazwVar) {
        synchronized (this.zza) {
            try {
                if (this.zzb == null) {
                    this.zzb = new zzazv();
                }
                this.zzb.zzf(zzazwVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zzd(Context context) {
        Application application;
        synchronized (this.zza) {
            try {
                if (!this.zzc) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext == null) {
                        applicationContext = context;
                    }
                    if (applicationContext instanceof Application) {
                        application = (Application) applicationContext;
                    } else {
                        application = null;
                    }
                    if (application == null) {
                        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Can not cast Context to Application");
                        return;
                    }
                    if (this.zzb == null) {
                        this.zzb = new zzazv();
                    }
                    this.zzb.zzg(application, context);
                    this.zzc = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zze(zzazw zzazwVar) {
        synchronized (this.zza) {
            try {
                zzazv zzazvVar = this.zzb;
                if (zzazvVar == null) {
                    return;
                }
                zzazvVar.zzh(zzazwVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
