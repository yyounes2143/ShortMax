package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.ss.texturerender.TextureRenderKeys;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@Deprecated
/* loaded from: classes4.dex */
public final class zzbdj {
    @VisibleForTesting
    String zzd;
    @VisibleForTesting
    Context zze;
    @VisibleForTesting
    String zzf;
    private AtomicBoolean zzh;
    private File zzi;
    @VisibleForTesting
    final BlockingQueue zza = new ArrayBlockingQueue(100);
    @VisibleForTesting
    final LinkedHashMap zzb = new LinkedHashMap();
    @VisibleForTesting
    final Map zzc = new HashMap();
    private final HashSet zzg = new HashSet(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));

    public static /* synthetic */ void zzc(zzbdj zzbdjVar) {
        while (true) {
            try {
                zzbdt zzbdtVar = (zzbdt) zzbdjVar.zza.take();
                zzbds zza = zzbdtVar.zza();
                if (!TextUtils.isEmpty(zza.zzb())) {
                    zzbdjVar.zzg(zzbdjVar.zzb(zzbdjVar.zzb, zzbdtVar.zzb()), zza);
                }
            } catch (InterruptedException e10) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzk("CsiReporter:reporter interrupted", e10);
                return;
            }
        }
    }

    private final void zzg(Map map, zzbds zzbdsVar) {
        FileOutputStream fileOutputStream;
        Uri.Builder buildUpon = Uri.parse(this.zzd).buildUpon();
        for (Map.Entry entry : map.entrySet()) {
            buildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        String uri = buildUpon.build().toString();
        if (zzbdsVar != null) {
            StringBuilder sb2 = new StringBuilder(uri);
            if (!TextUtils.isEmpty(zzbdsVar.zzb())) {
                sb2.append("&it=");
                sb2.append(zzbdsVar.zzb());
            }
            if (!TextUtils.isEmpty(zzbdsVar.zza())) {
                sb2.append("&blat=");
                sb2.append(zzbdsVar.zza());
            }
            uri = sb2.toString();
        }
        if (this.zzh.get()) {
            File file = this.zzi;
            if (file != null) {
                FileOutputStream fileOutputStream2 = null;
                try {
                    try {
                        fileOutputStream = new FileOutputStream(file, true);
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (IOException e10) {
                    e = e10;
                }
                try {
                    fileOutputStream.write(uri.getBytes());
                    fileOutputStream.write(10);
                    try {
                        fileOutputStream.close();
                        return;
                    } catch (IOException e11) {
                        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzk("CsiReporter: Cannot close file: sdk_csi_data.txt.", e11);
                        return;
                    }
                } catch (IOException e12) {
                    e = e12;
                    fileOutputStream2 = fileOutputStream;
                    int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzk("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                            return;
                        } catch (IOException e13) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzk("CsiReporter: Cannot close file: sdk_csi_data.txt.", e13);
                            return;
                        }
                    }
                    return;
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e14) {
                            int i12 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzk("CsiReporter: Cannot close file: sdk_csi_data.txt.", e14);
                        }
                    }
                    throw th;
                }
            }
            int i13 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("CsiReporter: File doesn't exist. Cannot write CSI data to file.");
            return;
        }
        com.google.android.gms.ads.internal.zzv.zzr();
        com.google.android.gms.ads.internal.util.zzs.zzM(this.zze, this.zzf, uri);
    }

    public final zzbdp zza(String str) {
        zzbdp zzbdpVar = (zzbdp) this.zzc.get(str);
        if (zzbdpVar != null) {
            return zzbdpVar;
        }
        return zzbdp.zza;
    }

    final Map zzb(Map map, @Nullable Map map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry entry : map2.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) linkedHashMap.get(str);
            linkedHashMap.put(str, zza(str).zza(str2, (String) entry.getValue()));
        }
        return linkedHashMap;
    }

    public final void zzd(Context context, String str, String str2, Map map) {
        File externalStorageDirectory;
        this.zze = context;
        this.zzf = str;
        this.zzd = str2;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.zzh = atomicBoolean;
        atomicBoolean.set(((Boolean) zzbez.zzc.zze()).booleanValue());
        if (this.zzh.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.zzi = new File(zzfqt.zza(zzfqs.zza(), externalStorageDirectory, "sdk_csi_data.txt"));
        }
        for (Map.Entry entry : map.entrySet()) {
            this.zzb.put((String) entry.getKey(), (String) entry.getValue());
        }
        zzcaf.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbdi
            @Override // java.lang.Runnable
            public final void run() {
                zzbdj.zzc(zzbdj.this);
            }
        });
        Map map2 = this.zzc;
        zzbdp zzbdpVar = zzbdp.zzb;
        map2.put(TextureRenderKeys.KEY_IS_ACTION, zzbdpVar);
        map2.put("ad_format", zzbdpVar);
        map2.put("e", zzbdp.zzc);
    }

    public final void zze(String str) {
        if (this.zzg.contains(str)) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("sdkVersion", this.zzf);
        linkedHashMap.put("ue", str);
        zzg(zzb(this.zzb, linkedHashMap), null);
    }

    public final boolean zzf(zzbdt zzbdtVar) {
        return this.zza.offer(zzbdtVar);
    }
}
