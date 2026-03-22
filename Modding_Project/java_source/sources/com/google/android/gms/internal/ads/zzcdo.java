package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcdo implements zzbkf {
    @Nullable
    private static final Integer zzb(Map map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt((String) map.get(str)));
        } catch (NumberFormatException unused) {
            String str2 = "Precache invalid numeric parameter '" + str + "': " + ((String) map.get(str));
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj(str2);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkf
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcdn zzcdnVar;
        zzcdf zza;
        zzccb zzccbVar = (zzccb) obj;
        if (com.google.android.gms.ads.internal.util.client.zzo.zzm(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            com.google.android.gms.ads.internal.util.client.zzo.zze("Precache GMSG: ".concat(jSONObject.toString()));
        }
        zzcdg zzA = com.google.android.gms.ads.internal.zzv.zzA();
        if (map.containsKey("abort")) {
            if (!zzA.zzd(zzccbVar)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Precache abort but no precache task running.");
                return;
            }
            return;
        }
        String str = (String) map.get("src");
        Integer zzb = zzb(map, "periodicReportIntervalMs");
        Integer zzb2 = zzb(map, "exoPlayerRenderingIntervalMs");
        Integer zzb3 = zzb(map, "exoPlayerIdleIntervalMs");
        zzcca zzccaVar = new zzcca((String) map.get("flags"));
        boolean z10 = zzccaVar.zzk;
        if (str != null) {
            String[] strArr = {str};
            String str2 = (String) map.get("demuxed");
            if (str2 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str2);
                    String[] strArr2 = new String[jSONArray.length()];
                    for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                        strArr2[i10] = jSONArray.getString(i10);
                    }
                    strArr = strArr2;
                } catch (JSONException unused) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Malformed demuxed URL list for precache: ".concat(str2));
                    strArr = null;
                }
            }
            if (strArr == null) {
                strArr = new String[]{str};
            }
            if (z10) {
                Iterator it = zzA.iterator();
                while (true) {
                    if (it.hasNext()) {
                        zzcdf zzcdfVar = (zzcdf) it.next();
                        if (zzcdfVar.zza == zzccbVar && str.equals(zzcdfVar.zze())) {
                            zza = zzcdfVar;
                            break;
                        }
                    } else {
                        zza = null;
                        break;
                    }
                }
            } else {
                zza = zzA.zza(zzccbVar);
            }
            if (zza != null) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Precache task is already running.");
                return;
            } else if (zzccbVar.zzj() == null) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Precache requires a dependency provider.");
                return;
            } else {
                Integer zzb4 = zzb(map, "player");
                if (zzb4 == null) {
                    zzb4 = 0;
                }
                if (zzb != null) {
                    zzccbVar.zzA(zzb.intValue());
                }
                if (zzb2 != null) {
                    zzccbVar.zzy(zzb2.intValue());
                }
                if (zzb3 != null) {
                    zzccbVar.zzx(zzb3.intValue());
                }
                int intValue = zzb4.intValue();
                zzccy zzccyVar = zzccbVar.zzj().zzb;
                if (intValue > 0) {
                    int i11 = zzccaVar.zzg;
                    int zzu = zzcbs.zzu();
                    if (zzu < i11) {
                        zzcdnVar = new zzcdw(zzccbVar, zzccaVar);
                    } else {
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzp)).booleanValue()) {
                            zzu = zzcdt.zzi();
                        }
                        if (zzu < zzccaVar.zzb) {
                            zzcdnVar = new zzcdt(zzccbVar, zzccaVar);
                        } else {
                            zzcdnVar = new zzcdr(zzccbVar);
                        }
                    }
                } else {
                    zzcdnVar = new zzcdq(zzccbVar);
                }
                new zzcdf(zzccbVar, zzcdnVar, str, strArr).zzb();
            }
        } else {
            zzcdf zza2 = zzA.zza(zzccbVar);
            if (zza2 != null) {
                zzcdnVar = zza2.zzb;
            } else {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Precache must specify a source.");
                return;
            }
        }
        Integer zzb5 = zzb(map, "minBufferMs");
        if (zzb5 != null) {
            zzcdnVar.zzs(zzb5.intValue());
        }
        Integer zzb6 = zzb(map, "maxBufferMs");
        if (zzb6 != null) {
            zzcdnVar.zzr(zzb6.intValue());
        }
        Integer zzb7 = zzb(map, "bufferForPlaybackMs");
        if (zzb7 != null) {
            zzcdnVar.zzp(zzb7.intValue());
        }
        Integer zzb8 = zzb(map, "bufferForPlaybackAfterRebufferMs");
        if (zzb8 != null) {
            zzcdnVar.zzq(zzb8.intValue());
        }
    }
}
