package com.google.android.gms.common.util;

import android.app.Application;
import android.os.Build;
import android.os.Process;
import android.os.StrictMode;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.common.zzi;
import com.google.android.gms.internal.common.zzj;
import com.google.android.gms.internal.common.zzx;
import com.google.android.gms.internal.common.zzy;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
@KeepForSdk
/* loaded from: classes4.dex */
public class ProcessUtils {
    private static String zza;
    private static int zzb;
    private static Boolean zzc;

    private ProcessUtils() {
    }

    @Nullable
    @KeepForSdk
    public static String getMyProcessName() {
        BufferedReader bufferedReader;
        String processName;
        if (zza == null) {
            if (Build.VERSION.SDK_INT >= 28) {
                processName = Application.getProcessName();
                zza = processName;
            } else {
                int i10 = zzb;
                if (i10 == 0) {
                    i10 = Process.myPid();
                    zzb = i10;
                }
                String str = null;
                str = null;
                str = null;
                BufferedReader bufferedReader2 = null;
                if (i10 > 0) {
                    try {
                        StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 14);
                        sb2.append("/proc/");
                        sb2.append(i10);
                        sb2.append("/cmdline");
                        String sb3 = sb2.toString();
                        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        bufferedReader = new BufferedReader(new FileReader(sb3));
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                    } catch (IOException unused) {
                        bufferedReader = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    try {
                        String readLine = bufferedReader.readLine();
                        Preconditions.checkNotNull(readLine);
                        str = readLine.trim();
                    } catch (IOException unused2) {
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReader2 = bufferedReader;
                        IOUtils.closeQuietly(bufferedReader2);
                        throw th;
                    }
                    IOUtils.closeQuietly(bufferedReader);
                }
                zza = str;
            }
        }
        return zza;
    }

    public static boolean zza() {
        boolean isIsolated;
        Boolean bool = zzc;
        if (bool == null) {
            if (PlatformVersion.isAtLeastP()) {
                isIsolated = Process.isIsolated();
                bool = Boolean.valueOf(isIsolated);
            } else {
                try {
                    Object zza2 = zzj.zza(Process.class, "isIsolated", new zzi[0]);
                    Object[] objArr = new Object[0];
                    if (zza2 != null) {
                        bool = (Boolean) zza2;
                    } else {
                        throw new zzy(zzx.zza("expected a non-null reference", objArr));
                    }
                } catch (ReflectiveOperationException unused) {
                    bool = Boolean.FALSE;
                }
            }
            zzc = bool;
        }
        return bool.booleanValue();
    }
}
