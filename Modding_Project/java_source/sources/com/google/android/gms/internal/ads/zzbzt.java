package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.AdActivity;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbzt {
    @VisibleForTesting
    final String zzf;
    private final com.google.android.gms.ads.internal.util.zzg zzk;
    @VisibleForTesting
    long zza = -1;
    @VisibleForTesting
    long zzb = -1;
    @VisibleForTesting
    int zzc = -1;
    @VisibleForTesting
    int zzd = -1;
    @VisibleForTesting
    long zze = 0;
    private final Object zzj = new Object();
    @VisibleForTesting
    int zzg = 0;
    @VisibleForTesting
    int zzh = 0;
    @VisibleForTesting
    int zzi = 0;

    public zzbzt(String str, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.zzf = str;
        this.zzk = zzgVar;
    }

    private final void zzi() {
        if (((Boolean) zzbfl.zza.zze()).booleanValue()) {
            synchronized (this.zzj) {
                this.zzc--;
                this.zzd--;
            }
        }
    }

    public final int zza() {
        int i10;
        synchronized (this.zzj) {
            i10 = this.zzi;
        }
        return i10;
    }

    public final Bundle zzb(Context context, String str) {
        Bundle bundle;
        synchronized (this.zzj) {
            try {
                bundle = new Bundle();
                if (!this.zzk.zzN()) {
                    bundle.putString("session_id", this.zzf);
                }
                bundle.putLong("basets", this.zzb);
                bundle.putLong("currts", this.zza);
                bundle.putString("seq_num", str);
                bundle.putInt("preqs", this.zzc);
                bundle.putInt("preqs_in_session", this.zzd);
                bundle.putLong("time_in_session", this.zze);
                bundle.putInt("pclick", this.zzg);
                bundle.putInt("pimp", this.zzh);
                Context zza = zzbwa.zza(context);
                int identifier = zza.getResources().getIdentifier("Theme.Translucent", TtmlNode.TAG_STYLE, "android");
                boolean z10 = false;
                if (identifier == 0) {
                    int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                } else {
                    try {
                        if (identifier == zza.getPackageManager().getActivityInfo(new ComponentName(zza.getPackageName(), AdActivity.CLASS_NAME), 0).theme) {
                            z10 = true;
                        } else {
                            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzi("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                        int i12 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Fail to fetch AdActivity theme");
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                    }
                }
                bundle.putBoolean("support_transparent_background", z10);
                bundle.putInt("consent_form_action_identifier", zza());
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bundle;
    }

    public final void zzc() {
        synchronized (this.zzj) {
            this.zzg++;
        }
    }

    public final void zzd() {
        synchronized (this.zzj) {
            this.zzh++;
        }
    }

    public final void zze() {
        zzi();
    }

    public final void zzf() {
        zzi();
    }

    public final void zzg(com.google.android.gms.ads.internal.client.zzm zzmVar, long j10) {
        Bundle bundle;
        synchronized (this.zzj) {
            try {
                com.google.android.gms.ads.internal.util.zzg zzgVar = this.zzk;
                long zzd = zzgVar.zzd();
                long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
                if (this.zzb == -1) {
                    if (currentTimeMillis - zzd > ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbh)).longValue()) {
                        this.zzd = -1;
                    } else {
                        this.zzd = zzgVar.zzc();
                    }
                    this.zzb = j10;
                    this.zza = j10;
                } else {
                    this.zza = j10;
                }
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdS)).booleanValue() && (bundle = zzmVar.zzc) != null && bundle.getInt("gw", 2) == 1) {
                    return;
                }
                this.zzc++;
                int i10 = this.zzd + 1;
                this.zzd = i10;
                if (i10 == 0) {
                    this.zze = 0L;
                    zzgVar.zzz(currentTimeMillis);
                } else {
                    this.zze = currentTimeMillis - zzgVar.zze();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zzh() {
        synchronized (this.zzj) {
            this.zzi++;
        }
    }
}
