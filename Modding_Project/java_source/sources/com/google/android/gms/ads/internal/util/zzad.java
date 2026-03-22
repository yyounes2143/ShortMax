package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzfse;
import com.google.android.gms.internal.ads.zzfsf;
import com.google.android.gms.internal.ads.zzfsg;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzad {
    public static Bundle zza(Context context, String str, SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        if (TextUtils.isEmpty(str)) {
            return Bundle.EMPTY;
        }
        PreferenceManager.getDefaultSharedPreferences(context).registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
        return zzb(context, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x001f  */
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.os.Bundle zzb(android.content.Context r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzad.zzb(android.content.Context, java.lang.String):android.os.Bundle");
    }

    public static void zzc(Context context) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgv)).booleanValue() && context != null) {
            context.deleteDatabase("OfflineUpload.db");
        }
        try {
            zzfse zzj = zzfse.zzj(context);
            zzfsf zzi = zzfsf.zzi(context);
            zzfsg zza = zzfsg.zza(context);
            zzj.zzk();
            zzj.zzl();
            zzi.zzj();
            zza.zzb(null);
        } catch (IOException e10) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "clearStorageOnIdlessMode");
        }
        try {
            if (context.getSharedPreferences("query_info_shared_prefs", 0).edit().clear().commit()) {
                return;
            }
            throw new IOException("Failed to remove query_info_shared_prefs");
        } catch (IOException e11) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e11, "clearStorageOnIdlessMode_scar");
        }
    }
}
