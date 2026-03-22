package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbzs {
    private final Object zza = new Object();
    private final com.google.android.gms.ads.internal.util.zzj zzb;
    private final zzbzw zzc;
    private boolean zzd;
    private Context zze;
    private VersionInfoParcel zzf;
    private String zzg;
    @Nullable
    private zzbdj zzh;
    @Nullable
    private Boolean zzi;
    private final AtomicInteger zzj;
    private final AtomicInteger zzk;
    private final zzbzq zzl;
    private final Object zzm;
    @GuardedBy("grantedPermissionLock")
    private com.google.common.util.concurrent.e zzn;
    private final AtomicBoolean zzo;

    public zzbzs() {
        com.google.android.gms.ads.internal.util.zzj zzjVar = new com.google.android.gms.ads.internal.util.zzj();
        this.zzb = zzjVar;
        this.zzc = new zzbzw(com.google.android.gms.ads.internal.client.zzbb.zzd(), zzjVar);
        this.zzd = false;
        this.zzh = null;
        this.zzi = null;
        this.zzj = new AtomicInteger(0);
        this.zzk = new AtomicInteger(0);
        this.zzl = new zzbzq(null);
        this.zzm = new Object();
        this.zzo = new AtomicBoolean();
    }

    public static /* synthetic */ ArrayList zzo(zzbzs zzbzsVar) {
        Context zza = zzbwa.zza(zzbzsVar.zze);
        ArrayList arrayList = new ArrayList();
        try {
            PackageInfo packageInfo = Wrappers.packageManager(zza).getPackageInfo(zza.getApplicationInfo().packageName, 4096);
            if (packageInfo.requestedPermissions != null && packageInfo.requestedPermissionsFlags != null) {
                int i10 = 0;
                while (true) {
                    String[] strArr = packageInfo.requestedPermissions;
                    if (i10 >= strArr.length) {
                        break;
                    }
                    if ((packageInfo.requestedPermissionsFlags[i10] & 2) != 0) {
                        arrayList.add(strArr[i10]);
                    }
                    i10++;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return arrayList;
    }

    public final boolean zzA(Context context) {
        if (PlatformVersion.isAtLeastO()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zziN)).booleanValue()) {
                return this.zzo.get();
            }
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        return false;
    }

    public final int zza() {
        return this.zzk.get();
    }

    public final int zzb() {
        return this.zzj.get();
    }

    @Nullable
    public final Context zzd() {
        return this.zze;
    }

    @Nullable
    public final Resources zze() {
        if (this.zzf.isClientJar) {
            return this.zze.getResources();
        }
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzlp)).booleanValue()) {
                return com.google.android.gms.ads.internal.util.client.zzs.zza(this.zze).getResources();
            }
            com.google.android.gms.ads.internal.util.client.zzs.zza(this.zze).getResources();
            return null;
        } catch (com.google.android.gms.ads.internal.util.client.zzr e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Cannot load resource from dynamite apk or local jar", e10);
            return null;
        }
    }

    @Nullable
    public final zzbdj zzg() {
        zzbdj zzbdjVar;
        synchronized (this.zza) {
            zzbdjVar = this.zzh;
        }
        return zzbdjVar;
    }

    public final zzbzw zzh() {
        return this.zzc;
    }

    public final com.google.android.gms.ads.internal.util.zzg zzi() {
        com.google.android.gms.ads.internal.util.zzj zzjVar;
        synchronized (this.zza) {
            zzjVar = this.zzb;
        }
        return zzjVar;
    }

    public final com.google.common.util.concurrent.e zzk() {
        if (this.zze != null) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdg)).booleanValue()) {
                synchronized (this.zzm) {
                    try {
                        com.google.common.util.concurrent.e eVar = this.zzn;
                        if (eVar != null) {
                            return eVar;
                        }
                        com.google.common.util.concurrent.e zzb = zzcaf.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzbzn
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                return zzbzs.zzo(zzbzs.this);
                            }
                        });
                        this.zzn = zzb;
                        return zzb;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
        return zzgdn.zzh(new ArrayList());
    }

    public final Boolean zzl() {
        Boolean bool;
        synchronized (this.zza) {
            bool = this.zzi;
        }
        return bool;
    }

    public final String zzn() {
        return this.zzg;
    }

    public final void zzq() {
        this.zzl.zza();
    }

    public final void zzr() {
        this.zzj.decrementAndGet();
    }

    public final void zzs() {
        this.zzk.incrementAndGet();
    }

    public final void zzt() {
        this.zzj.incrementAndGet();
    }

    @TargetApi(23)
    public final void zzu(Context context, VersionInfoParcel versionInfoParcel) {
        zzbdj zzbdjVar;
        synchronized (this.zza) {
            try {
                if (!this.zzd) {
                    this.zze = context.getApplicationContext();
                    this.zzf = versionInfoParcel;
                    com.google.android.gms.ads.internal.zzv.zzb().zzc(this.zzc);
                    this.zzb.zzp(this.zze);
                    zzbun.zzb(this.zze, this.zzf);
                    com.google.android.gms.ads.internal.zzv.zze();
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcj)).booleanValue()) {
                        com.google.android.gms.ads.internal.util.zze.zza("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                        zzbdjVar = null;
                    } else {
                        zzbdjVar = new zzbdj();
                    }
                    this.zzh = zzbdjVar;
                    if (zzbdjVar != null) {
                        zzcai.zza(new zzbzo(this).zzb(), "AppState.registerCsiReporter");
                    }
                    Context context2 = this.zze;
                    if (PlatformVersion.isAtLeastO()) {
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zziN)).booleanValue()) {
                            try {
                                ((ConnectivityManager) context2.getSystemService("connectivity")).registerDefaultNetworkCallback(new zzbzp(this));
                            } catch (RuntimeException e10) {
                                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to register network callback", e10);
                                this.zzo.set(true);
                            }
                        }
                    }
                    this.zzd = true;
                    zzk();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        com.google.android.gms.ads.internal.zzv.zzr().zzc(context, versionInfoParcel.afmaVersion);
    }

    public final void zzv(Throwable th2, String str) {
        zzbun.zzb(this.zze, this.zzf).zzi(th2, str, ((Double) zzbfn.zzf.zze()).floatValue());
    }

    public final void zzw(Throwable th2, String str) {
        zzbun.zzb(this.zze, this.zzf).zzh(th2, str);
    }

    public final void zzx(Throwable th2, String str) {
        zzbun.zzd(this.zze, this.zzf).zzh(th2, str);
    }

    public final void zzy(Boolean bool) {
        synchronized (this.zza) {
            this.zzi = bool;
        }
    }

    public final void zzz(String str) {
        this.zzg = str;
    }
}
