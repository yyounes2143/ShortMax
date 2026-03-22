package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import java.security.MessageDigest;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
/* loaded from: classes4.dex */
public final class zzo {
    @VisibleForTesting(otherwise = 2)
    static volatile com.google.android.gms.common.internal.zzad zzg;
    public static final /* synthetic */ int zzh = 0;
    @Nullable
    private static Context zzj;
    static final zzm zza = new zzd(zzj.zzf("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u007f¢fú§p\u0085xb±"));
    static final zzm zzb = new zze(zzj.zzf("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014QÕÛ\u0004÷XçB\u0086<"));
    static final zzm zzc = new zzf(zzj.zzf("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));
    static final zzm zzd = new zzg(zzj.zzf("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));
    static final zzm zze = new zzh(zzj.zzf("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"));
    static final zzm zzf = new zzi(zzj.zzf("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"));
    private static final Object zzi = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void zza(Context context) {
        synchronized (zzo.class) {
            if (zzj == null) {
                if (context != null) {
                    zzj = context.getApplicationContext();
                    return;
                }
                return;
            }
            Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting(otherwise = 2)
    public static void zzb() throws DynamiteModule.LoadingException {
        if (zzg != null) {
            return;
        }
        Preconditions.checkNotNull(zzj);
        synchronized (zzi) {
            try {
                if (zzg == null) {
                    zzg = com.google.android.gms.common.internal.zzac.zzb(DynamiteModule.load(zzj, DynamiteModule.PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING, "com.google.android.gms.googlecertificates").instantiate("com.google.android.gms.common.GoogleCertificatesImpl"));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzy zzc(zzw zzwVar) {
        zzy zzd2;
        zzr zzh2;
        PackageManager.NameNotFoundException nameNotFoundException;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            Preconditions.checkNotNull(zzj);
            try {
                zzb();
                Preconditions.checkNotNull(zzj);
                zzp zzb2 = zzwVar.zzb(zzj);
                try {
                    if (zzwVar.zza()) {
                        zzh2 = zzg.zzf(zzb2);
                    } else {
                        zzh2 = zzg.zzh(zzb2);
                    }
                    if (zzh2.zza()) {
                        zzd2 = zzy.zzf(zzh2.zze(), zzh2.zzc());
                    } else {
                        String zzb3 = zzh2.zzb();
                        if (zzh2.zzd() == 4) {
                            nameNotFoundException = new PackageManager.NameNotFoundException();
                        } else {
                            nameNotFoundException = null;
                        }
                        if (zzb3 == null) {
                            zzb3 = "error checking package certificate";
                        }
                        zzd2 = zzy.zzg(zzh2.zze(), zzh2.zzd(), zzb3, nameNotFoundException);
                    }
                } catch (RemoteException e10) {
                    Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
                    zzd2 = zzy.zzd("module call", e10);
                }
            } catch (DynamiteModule.LoadingException e11) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e11);
                zzd2 = zzy.zzd("module init: ".concat(String.valueOf(e11.getMessage())), e11);
            }
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return zzd2;
        } catch (Throwable th2) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static zzy zzd(String str, zzj zzjVar, boolean z10, boolean z11) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return zzf(str, zzjVar, z10, z11);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String zze(boolean z10, String str, zzj zzjVar) {
        String str2;
        if (!z10 && zzf(str, zzjVar, true, false).zza) {
            str2 = "debug cert rejected";
        } else {
            str2 = "not allowed";
        }
        MessageDigest zza2 = AndroidUtilsLight.zza("SHA-256");
        Preconditions.checkNotNull(zza2);
        return String.format("%s: pkg=%s, sha256=%s, atk=%s, ver=%s", str2, str, Hex.bytesToStringLowercase(zza2.digest(zzjVar.zzc())), Boolean.valueOf(z10), "12451000.false");
    }

    @Deprecated
    private static zzy zzf(final String str, final zzj zzjVar, final boolean z10, boolean z11) {
        try {
            zzb();
            Preconditions.checkNotNull(zzj);
            try {
                if (zzg.zze(new zzt(str, zzjVar, z10, z11), ObjectWrapper.wrap(zzj.getPackageManager()))) {
                    return zzy.zzb();
                }
                return new zzx(new Callable() { // from class: com.google.android.gms.common.zzl
                    @Override // java.util.concurrent.Callable
                    public final /* synthetic */ Object call() {
                        return zzo.zze(z10, str, zzjVar);
                    }
                }, null);
            } catch (RemoteException e10) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
                return zzy.zzd("module call", e10);
            }
        } catch (DynamiteModule.LoadingException e11) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e11);
            return zzy.zzd("module init: ".concat(String.valueOf(e11.getMessage())), e11);
        }
    }
}
