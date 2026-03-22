package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.TimeoutException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzboi {
    private final Context zzb;
    private final String zzc;
    private final VersionInfoParcel zzd;
    @Nullable
    private final zzfhx zze;
    private final com.google.android.gms.ads.internal.util.zzbd zzf;
    private final com.google.android.gms.ads.internal.util.zzbd zzg;
    @Nullable
    private zzboh zzh;
    private final Object zza = new Object();
    private int zzi = 1;

    public zzboi(Context context, VersionInfoParcel versionInfoParcel, String str, com.google.android.gms.ads.internal.util.zzbd zzbdVar, com.google.android.gms.ads.internal.util.zzbd zzbdVar2, @Nullable zzfhx zzfhxVar) {
        this.zzc = str;
        this.zzb = context.getApplicationContext();
        this.zzd = versionInfoParcel;
        this.zze = zzfhxVar;
        this.zzf = zzbdVar;
        this.zzg = zzbdVar2;
    }

    public static /* synthetic */ void zzg(zzboi zzboiVar, zzbnd zzbndVar) {
        if (zzbndVar.zzi()) {
            zzboiVar.zzi = 1;
        }
    }

    public static /* synthetic */ void zzh(zzboi zzboiVar, zzavu zzavuVar, zzboh zzbohVar) {
        long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        try {
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before createJavascriptEngine");
            zzbnl zzbnlVar = new zzbnl(zzboiVar.zzb, zzboiVar.zzd, null, null);
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > After createJavascriptEngine");
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before setting new engine loaded listener");
            zzbnlVar.zzk(new zzbno(zzboiVar, arrayList, currentTimeMillis, zzbohVar, zzbnlVar));
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before registering GmsgHandler for /jsLoaded");
            zzbnlVar.zzq("/jsLoaded", new zzbnt(zzboiVar, currentTimeMillis, zzbohVar, zzbnlVar));
            com.google.android.gms.ads.internal.util.zzby zzbyVar = new com.google.android.gms.ads.internal.util.zzby();
            zzbnu zzbnuVar = new zzbnu(zzboiVar, null, zzbnlVar, zzbyVar);
            zzbyVar.zzb(zzbnuVar);
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before registering GmsgHandler for /requestReload");
            zzbnlVar.zzq("/requestReload", zzbnuVar);
            String str = zzboiVar.zzc;
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > javascriptPath: ".concat(String.valueOf(str)));
            if (str.endsWith(".js")) {
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before newEngine.loadJavascript");
                zzbnlVar.zzh(str);
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > After newEngine.loadJavascript");
            } else if (str.startsWith("<html>")) {
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before newEngine.loadHtml");
                zzbnlVar.zzf(str);
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > After newEngine.loadHtml");
            } else {
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before newEngine.loadHtmlWrapper");
                zzbnlVar.zzg(str);
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > After newEngine.loadHtmlWrapper");
            }
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before calling ADMOB_UI_HANDLER.postDelayed");
            com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new zzbnw(zzboiVar, zzbohVar, zzbnlVar, arrayList, currentTimeMillis), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzd)).intValue());
        } catch (Throwable th2) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error creating webview.", th2);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhZ)).booleanValue()) {
                zzbohVar.zzh(th2, "SdkJavascriptFactory.loadJavascriptEngine.createJavascriptEngine");
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzib)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzp().zzv(th2, "SdkJavascriptFactory.loadJavascriptEngine");
                zzbohVar.zzg();
                return;
            }
            com.google.android.gms.ads.internal.zzv.zzp().zzw(th2, "SdkJavascriptFactory.loadJavascriptEngine");
            zzbohVar.zzg();
        }
    }

    public static /* synthetic */ void zzi(zzboi zzboiVar, zzboh zzbohVar, final zzbnd zzbndVar, ArrayList arrayList, long j10) {
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Trying to acquire lock");
        synchronized (zzboiVar.zza) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock acquired");
                if (zzbohVar.zze() != -1 && zzbohVar.zze() != 1) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhZ)).booleanValue()) {
                        zzbohVar.zzh(new TimeoutException("Unable to receive /jsLoaded GMSG."), "SdkJavascriptFactory.loadJavascriptEngine.setLoadedListener");
                    } else {
                        zzbohVar.zzg();
                    }
                    zzgdy zzgdyVar = zzcaf.zzf;
                    Objects.requireNonNull(zzbndVar);
                    zzgdyVar.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbnn
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzbnd.this.zzc();
                        }
                    });
                    String valueOf = String.valueOf(com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzc));
                    int zze = zzbohVar.zze();
                    int i10 = zzboiVar.zzi;
                    String valueOf2 = String.valueOf(arrayList.get(0));
                    long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - j10;
                    com.google.android.gms.ads.internal.util.zze.zza("Could not receive /jsLoaded in " + valueOf + " ms. JS engine session reference status(onEngLoadedTimeout) is " + zze + ". Update status(onEngLoadedTimeout) is " + i10 + ". LoadNewJavascriptEngine(onEngLoadedTimeout) latency is " + valueOf2 + " ms. Total latency(onEngLoadedTimeout) is " + currentTimeMillis + " ms. Rejecting.");
                    com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock released");
                    return;
                }
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock released, the promise is already settled");
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final zzboc zzb(@Nullable zzavu zzavuVar) {
        com.google.android.gms.ads.internal.util.zze.zza("getEngine: Trying to acquire lock");
        Object obj = this.zza;
        synchronized (obj) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza("getEngine: Lock acquired");
                com.google.android.gms.ads.internal.util.zze.zza("refreshIfDestroyed: Trying to acquire lock");
                synchronized (obj) {
                    com.google.android.gms.ads.internal.util.zze.zza("refreshIfDestroyed: Lock acquired");
                    zzboh zzbohVar = this.zzh;
                    if (zzbohVar != null && this.zzi == 0) {
                        zzbohVar.zzj(new zzcao() { // from class: com.google.android.gms.internal.ads.zzbnq
                            @Override // com.google.android.gms.internal.ads.zzcao
                            public final void zza(Object obj2) {
                                zzboi.zzg(zzboi.this, (zzbnd) obj2);
                            }
                        }, new zzcam() { // from class: com.google.android.gms.internal.ads.zzbnr
                            @Override // com.google.android.gms.internal.ads.zzcam
                            public final void zza() {
                            }
                        });
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        com.google.android.gms.ads.internal.util.zze.zza("refreshIfDestroyed: Lock released");
        zzboh zzbohVar2 = this.zzh;
        if (zzbohVar2 != null && zzbohVar2.zze() != -1) {
            int i10 = this.zzi;
            if (i10 == 0) {
                com.google.android.gms.ads.internal.util.zze.zza("getEngine (NO_UPDATE): Lock released");
                return this.zzh.zza();
            } else if (i10 == 1) {
                this.zzi = 2;
                zzd(null);
                com.google.android.gms.ads.internal.util.zze.zza("getEngine (PENDING_UPDATE): Lock released");
                return this.zzh.zza();
            } else {
                com.google.android.gms.ads.internal.util.zze.zza("getEngine (UPDATING): Lock released");
                return this.zzh.zza();
            }
        }
        this.zzi = 2;
        this.zzh = zzd(null);
        com.google.android.gms.ads.internal.util.zze.zza("getEngine (NULL or REJECTED): Lock released");
        return this.zzh.zza();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzboh zzd(@Nullable zzavu zzavuVar) {
        zzfhj zza = zzfhi.zza(this.zzb, 6);
        zza.zzi();
        final zzboh zzbohVar = new zzboh(this.zzg);
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before UI_THREAD_EXECUTOR");
        zzcaf.zzf.execute(new Runnable(null, zzbohVar) { // from class: com.google.android.gms.internal.ads.zzbns
            public final /* synthetic */ zzboh zzb;

            {
                this.zzb = zzbohVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzboi.zzh(zzboi.this, null, this.zzb);
            }
        });
        com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine: Promise created");
        zzbohVar.zzj(new zzbnx(this, zzbohVar, zza), new zzbny(this, zzbohVar, zza));
        return zzbohVar;
    }
}
