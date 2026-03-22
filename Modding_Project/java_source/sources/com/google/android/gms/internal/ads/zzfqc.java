package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Hex;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.File;
import java.util.HashSet;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfqc {
    private static final Object zza = new Object();
    private final Context zzb;
    private final SharedPreferences zzc;
    private final String zzd;
    private final zzfpj zze;
    private boolean zzf;

    public zzfqc(@NonNull Context context, @NonNull int i10, @NonNull zzfpj zzfpjVar, boolean z10) {
        this.zzf = false;
        this.zzb = context;
        this.zzd = Integer.toString(i10 - 1);
        this.zzc = context.getSharedPreferences("pcvmspf", 0);
        this.zze = zzfpjVar;
        this.zzf = z10;
    }

    private final File zze(@NonNull String str) {
        return new File(new File(this.zzb.getDir("pccache", 0), this.zzd), str);
    }

    private static String zzf(@NonNull zzayp zzaypVar) {
        zzayq zzd = zzays.zzd();
        zzd.zze(zzaypVar.zzc().zzk());
        zzd.zza(zzaypVar.zzc().zzj());
        zzd.zzb(zzaypVar.zzc().zza());
        zzd.zzd(zzaypVar.zzc().zzc());
        zzd.zzc(zzaypVar.zzc().zzb());
        return Hex.bytesToStringLowercase(((zzays) zzd.zzbr()).zzaV());
    }

    private final String zzg() {
        return "FBAMTD".concat(String.valueOf(this.zzd));
    }

    private final String zzh() {
        return "LATMTD".concat(String.valueOf(this.zzd));
    }

    private final void zzi(int i10, long j10) {
        this.zze.zza(i10, j10);
    }

    private final void zzj(int i10, long j10, String str) {
        this.zze.zzb(i10, j10, str);
    }

    @Nullable
    private final zzays zzk(int i10) {
        String string;
        zzgyr zzb;
        if (i10 == 1) {
            string = this.zzc.getString(zzh(), null);
        } else {
            string = this.zzc.getString(zzg(), null);
        }
        if (string == null) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        try {
            byte[] stringToBytes = Hex.stringToBytes(string);
            zzgxz zzgxzVar = zzgxz.zzb;
            zzgxz zzv = zzgxz.zzv(stringToBytes, 0, stringToBytes.length);
            if (this.zzf) {
                zzb = zzgyr.zza();
            } else {
                zzb = zzgyr.zzb();
            }
            return zzays.zzi(zzv, zzb);
        } catch (zzgzw unused) {
            return null;
        } catch (NullPointerException unused2) {
            zzi(DataLoaderHelper.DATALOADER_KEY_STRING_PRECISE_PRELOAD_CONFIG, currentTimeMillis);
            return null;
        } catch (RuntimeException unused3) {
            zzi(DataLoaderHelper.DATALOADER_KEY_INT_PRELOAD_INFO_RECORD_MAX_COUNT, currentTimeMillis);
            return null;
        }
    }

    public final boolean zza(@NonNull zzayp zzaypVar) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            try {
                if (!zzfpw.zze(new File(zze(zzaypVar.zzc().zzk()), "pcbc"), zzaypVar.zzd().zzA())) {
                    zzi(TTVideoEngineInterface.PLAYER_OPTION_VC2_STACKSIZE_OPT, currentTimeMillis);
                    return false;
                }
                String zzf = zzf(zzaypVar);
                SharedPreferences.Editor edit = this.zzc.edit();
                edit.putString(zzh(), zzf);
                boolean commit = edit.commit();
                if (commit) {
                    zzi(5015, currentTimeMillis);
                } else {
                    zzi(TTVideoEngineInterface.PLAYER_OPTION_VC2_STACKSIZE_VALUE, currentTimeMillis);
                }
                return commit;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean zzb(@NonNull zzayp zzaypVar, @Nullable zzfqb zzfqbVar) {
        File[] listFiles;
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            try {
                zzays zzk = zzk(1);
                String zzk2 = zzaypVar.zzc().zzk();
                if (zzk != null && zzk.zzk().equals(zzk2)) {
                    zzi(TTVideoEngineInterface.PLAYER_OPTION_VC2_LOWER_RENDER_CAPACITY, currentTimeMillis);
                    return false;
                }
                long currentTimeMillis2 = System.currentTimeMillis();
                File zze = zze(zzk2);
                if (zze.exists()) {
                    String str = "1";
                    if (true != zze.isDirectory()) {
                        str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                    }
                    String str2 = "1";
                    if (true != zze.isFile()) {
                        str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                    }
                    zzj(TTVideoEngineInterface.PLAYER_OPTION_LOWER_AUDIOMEM_CAPACITY, currentTimeMillis2, "d:" + str + ",f:" + str2);
                    zzi(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_VC2_THREAD_PRIORITY_LITE, currentTimeMillis2);
                } else if (!zze.mkdirs()) {
                    String str3 = "1";
                    if (true != zze.canWrite()) {
                        str3 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                    }
                    zzj(TTVideoEngineInterface.PLAYER_OPTION_VC2_THREAD_NUM, currentTimeMillis2, "cw:".concat(str3));
                    zzi(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_VC2_THREAD_PRIORITY_LITE, currentTimeMillis2);
                    return false;
                }
                File zze2 = zze(zzk2);
                File file = new File(zze2, "pcam.jar");
                File file2 = new File(zze2, "pcbc");
                if (!zzfpw.zze(file, zzaypVar.zzf().zzA())) {
                    zzi(TTVideoEngineInterface.PLAYER_OPTION_VC2_LOWER_RENDER_CAPACITY_NO_SR, currentTimeMillis);
                    return false;
                } else if (!zzfpw.zze(file2, zzaypVar.zzd().zzA())) {
                    zzi(TTVideoEngineInterface.PLAYER_OPTION_VC2_DECODE_LOW_LATENCY, currentTimeMillis);
                    return false;
                } else if (zzfqbVar != null && !zzfqbVar.zza(file)) {
                    zzi(TTVideoEngineInterface.PLAYER_OPTION_VC2_WPP_MODE, currentTimeMillis);
                    zzfpw.zzd(zze2);
                    return false;
                } else {
                    String zzf = zzf(zzaypVar);
                    long currentTimeMillis3 = System.currentTimeMillis();
                    SharedPreferences sharedPreferences = this.zzc;
                    String string = sharedPreferences.getString(zzh(), null);
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putString(zzh(), zzf);
                    if (string != null) {
                        edit.putString(zzg(), string);
                    }
                    if (!edit.commit()) {
                        zzi(TTVideoEngineInterface.PLAYER_OPTION_VC2_DYNAMIC_CONTROL, currentTimeMillis3);
                        return false;
                    }
                    HashSet hashSet = new HashSet();
                    zzays zzk3 = zzk(1);
                    if (zzk3 != null) {
                        hashSet.add(zzk3.zzk());
                    }
                    zzays zzk4 = zzk(2);
                    if (zzk4 != null) {
                        hashSet.add(zzk4.zzk());
                    }
                    for (File file3 : new File(this.zzb.getDir("pccache", 0), this.zzd).listFiles()) {
                        if (!hashSet.contains(file3.getName())) {
                            zzfpw.zzd(file3);
                        }
                    }
                    zzi(5014, currentTimeMillis);
                    return true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    public final zzfpu zzc(int i10) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            try {
                zzays zzk = zzk(1);
                if (zzk == null) {
                    zzi(TTVideoEngineInterface.PLAYER_OPTION_OSPLAYER_IGNORE_HEADERS, currentTimeMillis);
                    return null;
                }
                File zze = zze(zzk.zzk());
                File file = new File(zze, "pcam.jar");
                if (!file.exists()) {
                    file = new File(zze, "pcam");
                }
                File file2 = new File(zze, "pcbc");
                File file3 = new File(zze, "pcopt");
                zzi(5016, currentTimeMillis);
                return new zzfpu(zzk, file, file2, file3);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean zzd(int i10) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            try {
                zzays zzk = zzk(1);
                if (zzk == null) {
                    zzi(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_SURFACE_HASHMAP_JUDGEMENT, currentTimeMillis);
                    return false;
                }
                File zze = zze(zzk.zzk());
                if (!new File(zze, "pcam.jar").exists()) {
                    zzi(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_SELECT_USE_OBJECT, currentTimeMillis);
                    return false;
                } else if (!new File(zze, "pcbc").exists()) {
                    zzi(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_SELECT_BITRATE_STRING_MAP, currentTimeMillis);
                    return false;
                } else {
                    zzi(5019, currentTimeMillis);
                    return true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
