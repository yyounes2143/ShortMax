package com.google.android.recaptcha.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.Set;
import kotlin.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzen {
    @Nullable
    private static zzqk zza;
    @NotNull
    private final String zzb;
    @NotNull
    private final String zzc;
    @NotNull
    private final String zzd;
    @Nullable
    private final String zze;
    @NotNull
    private final zzeo zzf;
    @NotNull
    private final Context zzg;
    @Nullable
    private final Integer zzh;
    @NotNull
    private final String zzi = zzqb.zzc(zzqb.zzb(System.currentTimeMillis()));
    private final long zzj = System.currentTimeMillis();
    @NotNull
    private final int zzk;
    @NotNull
    private final int zzl;

    public zzen(@NotNull int i10, @NotNull String str, @NotNull int i11, @NotNull String str2, @NotNull String str3, @Nullable String str4, @Nullable String str5, @NotNull zzeo zzeoVar, @NotNull zzcc zzccVar, @NotNull Context context, @Nullable Integer num) {
        this.zzk = i10;
        this.zzb = str;
        this.zzl = i11;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = str4;
        this.zzf = zzeoVar;
        this.zzg = context;
        this.zzh = num;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x00e1 -> B:36:0x00e1). Please submit an issue!!! */
    private final void zzc(int i10, zzqq zzqqVar) {
        zzbl zzblVar;
        String str;
        String str2;
        long longVersionCode;
        PackageManager.PackageInfoFlags of2;
        PackageInfo packageInfo;
        long longVersionCode2;
        PackageManager.ApplicationInfoFlags of3;
        ApplicationInfo applicationInfo;
        String str3 = "";
        zzra zzi = zzrc.zzi();
        zzi.zzy(this.zzk);
        zzi.zzq(this.zzc);
        zzi.zzt(this.zzd);
        zzi.zzz(this.zzl);
        String str4 = this.zze;
        if (str4 != null) {
            zzi.zzx(str4);
        }
        Integer num = this.zzh;
        if (num != null) {
            zzi.zzv(num.intValue());
        }
        if (zzqqVar != null) {
            zzi.zzs(zzqqVar);
        }
        zzi.zzA(i10);
        zzi.zzw(this.zzi);
        zzi.zzr(System.currentTimeMillis() - this.zzj);
        int i11 = zzav.zza;
        for (zzax zzaxVar : ((zzaz) c.b(zzel.zza).getValue()).zza()) {
            zzi.zzf(0);
        }
        int i12 = zzbk.zza;
        int i13 = this.zzk;
        long zze = zzi.zze() * 1000;
        int i14 = i13 - 2;
        if (i14 != 4) {
            if (i14 != 5) {
                if (i14 != 6) {
                    if (i14 != 7) {
                        if (i14 != 14) {
                            zzblVar = zzbl.zza;
                        } else {
                            zzblVar = zzbl.zzf;
                        }
                    } else {
                        zzblVar = zzbl.zze;
                    }
                } else {
                    zzblVar = zzbl.zzd;
                }
            } else {
                zzblVar = zzbl.zzc;
            }
        } else {
            zzblVar = zzbl.zzb;
        }
        zzbk.zza(zzblVar.zza(), zze);
        zzbe zzbeVar = (zzbe) c.b(zzem.zza).getValue();
        Context context = this.zzg;
        Set zza2 = zzbe.zza(context);
        zzqk zzqkVar = zza;
        if (zzqkVar == null) {
            zzqh zzf = zzqk.zzf();
            int i15 = Build.VERSION.SDK_INT;
            zzf.zzf(i15);
            String str5 = "unknown";
            if (i15 >= 33) {
                PackageManager packageManager = context.getPackageManager();
                String packageName = context.getPackageName();
                of3 = PackageManager.ApplicationInfoFlags.of(128L);
                applicationInfo = packageManager.getApplicationInfo(packageName, of3);
                int i16 = applicationInfo.metaData.getInt("com.google.android.gms.version", -1);
                if (i16 != -1) {
                    str2 = String.valueOf(i16);
                }
                str2 = "unknown";
            } else {
                int i17 = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getInt("com.google.android.gms.version", -1);
                if (i17 == -1) {
                    str2 = "unknown";
                } else {
                    str2 = String.valueOf(i17);
                }
            }
            zzf.zzs(str2);
            zzf.zzu("18.6.1");
            zzf.zzr(Build.MODEL);
            zzf.zzt(Build.MANUFACTURER);
            try {
                int i18 = Build.VERSION.SDK_INT;
                if (i18 >= 33) {
                    PackageManager packageManager2 = context.getPackageManager();
                    String packageName2 = context.getPackageName();
                    of2 = PackageManager.PackageInfoFlags.of(0L);
                    packageInfo = packageManager2.getPackageInfo(packageName2, of2);
                    longVersionCode2 = packageInfo.getLongVersionCode();
                    str5 = String.valueOf(longVersionCode2);
                } else if (i18 >= 28) {
                    longVersionCode = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).getLongVersionCode();
                    str5 = String.valueOf(longVersionCode);
                } else {
                    str5 = String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            zzf.zzq(str5);
            zzqkVar = (zzqk) zzf.zzk();
        }
        zza = zzqkVar;
        zzqh zzqhVar = (zzqh) zzqkVar.zzr();
        zzqhVar.zze(zza2);
        zzqk zzqkVar2 = (zzqk) zzqhVar.zzk();
        try {
            str = Locale.getDefault().getISO3Language();
        } catch (MissingResourceException unused2) {
            str = "";
        }
        try {
            str3 = Locale.getDefault().getISO3Country();
        } catch (MissingResourceException unused3) {
        }
        String str6 = this.zzb;
        zzrm zzf2 = zzro.zzf();
        zzf2.zzr(str6);
        zzf2.zze(zzqkVar2);
        zzf2.zzq(str);
        zzf2.zzf(str3);
        zzi.zzu((zzro) zzf2.zzk());
        zztw zzi2 = zztx.zzi();
        zzi2.zze(zzi);
        this.zzf.zza((zztx) zzi2.zzk());
    }

    public final void zza() {
        zzc(3, null);
    }

    public final void zzb(@NotNull zzbd zzbdVar) {
        zzqo zzg = zzqq.zzg();
        zzg.zzr(String.valueOf(zzbdVar.zzb().zza()));
        zzg.zze(zzbdVar.zza().zza());
        zzg.zzq(zzbdVar.zzc().getErrorCode().getErrorCode());
        String zzd = zzbdVar.zzd();
        if (zzd != null) {
            zzg.zzf(zzd);
        }
        zzc(4, (zzqq) zzg.zzk());
    }
}
