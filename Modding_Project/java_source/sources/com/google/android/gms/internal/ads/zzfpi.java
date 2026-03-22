package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.ss.ttvideoengine.DataLoaderHelper;
import java.util.Arrays;
import java.util.HashSet;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfpi {
    public static boolean zza(int i10) {
        int i11 = i10 - 1;
        if (i11 != 2 && i11 != 4 && i11 != 5 && i11 != 6 && i11 != 7) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0132  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int zzb(android.content.Context r14, com.google.android.gms.internal.ads.zzfoi r15) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfpi.zzb(android.content.Context, com.google.android.gms.internal.ads.zzfoi):int");
    }

    private static final String zzc(Context context, zzfoi zzfoiVar) {
        HashSet hashSet = new HashSet(Arrays.asList("i686", "armv71"));
        String zza = zzfwf.OS_ARCH.zza();
        if (!TextUtils.isEmpty(zza) && hashSet.contains(zza)) {
            return zza;
        }
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null && strArr.length > 0) {
                return strArr[0];
            }
        } catch (IllegalAccessException e10) {
            zzfoiVar.zzc(DataLoaderHelper.DATALOADER_KEY_INT_NET_LOG_MAX_SIZE, 0L, e10);
        } catch (NoSuchFieldException e11) {
            zzfoiVar.zzc(DataLoaderHelper.DATALOADER_KEY_INT_NET_LOG_MAX_SIZE, 0L, e11);
        }
        String str = Build.CPU_ABI;
        if (str != null) {
            return str;
        }
        return Build.CPU_ABI2;
    }

    private static final void zzd(byte[] bArr, String str, Context context, zzfoi zzfoiVar) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("os.arch:");
        sb2.append(zzfwf.OS_ARCH.zza());
        sb2.append(";");
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null) {
                sb2.append("supported_abis:");
                sb2.append(Arrays.toString(strArr));
                sb2.append(";");
            }
        } catch (IllegalAccessException | NoSuchFieldException unused) {
        }
        sb2.append("CPU_ABI:");
        sb2.append(Build.CPU_ABI);
        sb2.append(";CPU_ABI2:");
        sb2.append(Build.CPU_ABI2);
        sb2.append(";");
        if (bArr != null) {
            sb2.append("ELF:");
            sb2.append(Arrays.toString(bArr));
            sb2.append(";");
        }
        if (str != null) {
            sb2.append("dbg:");
            sb2.append(str);
            sb2.append(";");
        }
        zzfoiVar.zzb(4007, sb2.toString());
    }
}
