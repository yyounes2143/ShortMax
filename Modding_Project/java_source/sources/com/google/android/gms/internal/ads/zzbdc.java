package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.ConditionVariable;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbdc implements SharedPreferences.OnSharedPreferenceChangeListener {
    private Context zzg;
    private final Object zzb = new Object();
    private final ConditionVariable zzc = new ConditionVariable();
    private volatile boolean zzd = false;
    @VisibleForTesting
    volatile boolean zza = false;
    @Nullable
    private SharedPreferences zze = null;
    private Bundle zzf = new Bundle();
    private JSONObject zzh = new JSONObject();
    private boolean zzi = false;
    private boolean zzj = false;

    private final void zzg(final SharedPreferences sharedPreferences) {
        if (sharedPreferences != null) {
            try {
                this.zzh = new JSONObject((String) zzbdg.zza(new zzfwh() { // from class: com.google.android.gms.internal.ads.zzbcz
                    @Override // com.google.android.gms.internal.ads.zzfwh
                    public final Object zza() {
                        return sharedPreferences.getString("flag_configuration", JsonUtils.EMPTY_JSON);
                    }
                }));
            } catch (JSONException unused) {
            }
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            zzg(sharedPreferences);
        }
    }

    public final Object zzb(final zzbcv zzbcvVar) {
        if (!this.zzc.block(5000L)) {
            synchronized (this.zzb) {
                try {
                    if (!this.zza) {
                        throw new IllegalStateException("Flags.initialize() was not called!");
                    }
                } finally {
                }
            }
        }
        if (!this.zzd || this.zze == null || this.zzj) {
            synchronized (this.zzb) {
                if (this.zzd && this.zze != null && !this.zzj) {
                }
                return zzbcvVar.zzl();
            }
        }
        if (zzbcvVar.zze() == 2) {
            Bundle bundle = this.zzf;
            if (bundle == null) {
                return zzbcvVar.zzl();
            }
            return zzbcvVar.zzb(bundle);
        } else if (zzbcvVar.zze() == 1 && this.zzh.has(zzbcvVar.zzm())) {
            return zzbcvVar.zza(this.zzh);
        } else {
            return zzbdg.zza(new zzfwh() { // from class: com.google.android.gms.internal.ads.zzbda
                @Override // com.google.android.gms.internal.ads.zzfwh
                public final Object zza() {
                    Object zzc;
                    zzc = zzbcvVar.zzc(zzbdc.this.zze);
                    return zzc;
                }
            });
        }
    }

    public final Object zzc(zzbcv zzbcvVar) {
        if (!this.zzd && !this.zza) {
            return zzbcvVar.zzl();
        }
        return zzb(zzbcvVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x011a, code lost:
        if (new org.json.JSONObject((java.lang.String) com.google.android.gms.internal.ads.zzbdg.zza(new com.google.android.gms.internal.ads.zzbcy(r3))).optBoolean("local_flags_enabled") != false) goto L54;
     */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0120 A[Catch: all -> 0x000e, TRY_ENTER, TryCatch #2 {all -> 0x000e, blocks: (B:7:0x0008, B:9:0x000c, B:13:0x0011, B:15:0x0016, B:16:0x0018, B:18:0x002a, B:19:0x002e, B:20:0x0030, B:42:0x009e, B:43:0x00a5, B:52:0x00d4, B:53:0x00db, B:67:0x0120, B:68:0x0127, B:76:0x014e, B:77:0x0155, B:22:0x0045, B:25:0x004f, B:31:0x005c, B:34:0x0067, B:35:0x006f, B:37:0x0075, B:39:0x0085, B:41:0x009a, B:45:0x00a7, B:47:0x00ab, B:49:0x00bb, B:51:0x00d0, B:55:0x00dd, B:65:0x011c, B:70:0x0129, B:72:0x0140, B:74:0x0144, B:75:0x0147, B:58:0x00ee, B:60:0x00fc, B:62:0x0104, B:63:0x010f), top: B:87:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0129 A[Catch: all -> 0x0057, TRY_ENTER, TryCatch #2 {all -> 0x000e, blocks: (B:7:0x0008, B:9:0x000c, B:13:0x0011, B:15:0x0016, B:16:0x0018, B:18:0x002a, B:19:0x002e, B:20:0x0030, B:42:0x009e, B:43:0x00a5, B:52:0x00d4, B:53:0x00db, B:67:0x0120, B:68:0x0127, B:76:0x014e, B:77:0x0155, B:22:0x0045, B:25:0x004f, B:31:0x005c, B:34:0x0067, B:35:0x006f, B:37:0x0075, B:39:0x0085, B:41:0x009a, B:45:0x00a7, B:47:0x00ab, B:49:0x00bb, B:51:0x00d0, B:55:0x00dd, B:65:0x011c, B:70:0x0129, B:72:0x0140, B:74:0x0144, B:75:0x0147, B:58:0x00ee, B:60:0x00fc, B:62:0x0104, B:63:0x010f), top: B:87:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(android.content.Context r11) {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbdc.zzd(android.content.Context):void");
    }

    public final boolean zze() {
        return this.zzj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzf() {
        return this.zzi;
    }
}
