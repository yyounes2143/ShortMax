package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfsb {
    private static zzfsb zzb;
    final zzfsc zza;

    private zzfsb(Context context) {
        this.zza = zzfsc.zzb(context);
    }

    public static final zzfsb zza(Context context) {
        zzfsb zzfsbVar;
        synchronized (zzfsb.class) {
            try {
                if (zzb == null) {
                    zzb = new zzfsb(context);
                }
                zzfsbVar = zzb;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzfsbVar;
    }

    public final void zzb(boolean z10) throws IOException {
        synchronized (zzfsb.class) {
            this.zza.zzd("paidv2_user_option", Boolean.valueOf(z10));
        }
    }

    public final void zzc(boolean z10) throws IOException {
        synchronized (zzfsb.class) {
            try {
                zzfsc zzfscVar = this.zza;
                zzfscVar.zzd("paidv2_publisher_option", Boolean.valueOf(z10));
                if (!z10) {
                    zzfscVar.zze("paidv2_creation_time");
                    zzfscVar.zze("paidv2_id");
                    zzfscVar.zze("vendor_scoped_gpid_v2_id");
                    zzfscVar.zze("vendor_scoped_gpid_v2_creation_time");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean zzd() {
        boolean zzf;
        synchronized (zzfsb.class) {
            zzf = this.zza.zzf("paidv2_publisher_option", true);
        }
        return zzf;
    }

    public final boolean zze() {
        boolean zzf;
        synchronized (zzfsb.class) {
            zzf = this.zza.zzf("paidv2_user_option", true);
        }
        return zzf;
    }
}
