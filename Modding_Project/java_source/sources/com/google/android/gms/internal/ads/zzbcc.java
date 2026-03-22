package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.util.Base64;
import com.google.android.gms.internal.ads.zzbcj;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbcc {
    private final zzbci zza;
    private final zzbcj.zzt.zza zzb;
    private final boolean zzc;

    private zzbcc() {
        this.zzb = zzbcj.zzt.zzj();
        this.zzc = false;
        this.zza = new zzbci();
    }

    public static zzbcc zza() {
        return new zzbcc();
    }

    private final synchronized String zzd(int i10) {
        zzbcj.zzt.zza zzaVar;
        zzaVar = this.zzb;
        return String.format("id=%s,timestamp=%s,event=%s,data=%s\n", zzaVar.zzah(), Long.valueOf(com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime()), Integer.valueOf(i10 - 1), Base64.encodeToString(zzaVar.zzbr().zzaV(), 3));
    }

    private final synchronized void zze(int i10) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(zzfqt.zza(zzfqs.zza(), externalStorageDirectory, "clearcut_events.txt")), true);
            try {
                try {
                    fileOutputStream.write(zzd(i10).getBytes());
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused) {
                        com.google.android.gms.ads.internal.util.zze.zza("Could not close Clearcut output stream.");
                    }
                } catch (IOException unused2) {
                    com.google.android.gms.ads.internal.util.zze.zza("Could not write Clearcut to file.");
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused3) {
                        com.google.android.gms.ads.internal.util.zze.zza("Could not close Clearcut output stream.");
                    }
                }
            } catch (Throwable th2) {
                try {
                    fileOutputStream.close();
                } catch (IOException unused4) {
                    com.google.android.gms.ads.internal.util.zze.zza("Could not close Clearcut output stream.");
                }
                throw th2;
            }
        } catch (FileNotFoundException unused5) {
            com.google.android.gms.ads.internal.util.zze.zza("Could not find file for Clearcut");
        }
    }

    private final synchronized void zzf(int i10) {
        zzbcj.zzt.zza zzaVar = this.zzb;
        zzaVar.zzq();
        zzaVar.zzj(com.google.android.gms.ads.internal.util.zzs.zzd());
        zzbcg zzbcgVar = new zzbcg(this.zza, zzaVar.zzbr().zzaV(), null);
        int i11 = i10 - 1;
        zzbcgVar.zza(i11);
        zzbcgVar.zzc();
        com.google.android.gms.ads.internal.util.zze.zza("Logging Event with event code : ".concat(String.valueOf(Integer.toString(i11, 10))));
    }

    public final synchronized void zzb(zzbcb zzbcbVar) {
        if (this.zzc) {
            try {
                zzbcbVar.zza(this.zzb);
            } catch (NullPointerException e10) {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "AdMobClearcutLogger.modify");
            }
        }
    }

    public final synchronized void zzc(int i10) {
        if (!this.zzc) {
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfu)).booleanValue()) {
            zze(i10);
        } else {
            zzf(i10);
        }
    }

    public zzbcc(zzbci zzbciVar) {
        this.zzb = zzbcj.zzt.zzj();
        this.zza = zzbciVar;
        this.zzc = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzft)).booleanValue();
    }
}
