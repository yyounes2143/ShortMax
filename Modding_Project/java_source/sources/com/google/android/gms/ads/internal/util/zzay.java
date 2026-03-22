package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzdvh;
import com.google.android.gms.internal.ads.zzdvi;
import com.google.common.util.concurrent.e;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.Command;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzay {
    private zzdvi zzg;
    private final Object zzb = new Object();
    private String zzc = "";
    private String zzd = "";
    private boolean zze = false;
    private boolean zzf = false;
    @VisibleForTesting
    protected String zza = "";

    @Nullable
    @VisibleForTesting
    protected static final String zzo(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put(Command.HTTP_HEADER_USER_AGENT, com.google.android.gms.ads.internal.zzv.zzr().zzc(context, str2));
        e zzb = new zzbo(context).zzb(0, str, hashMap, null);
        try {
            return (String) zzb.get(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfl)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            String valueOf = String.valueOf(str);
            int i10 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Interrupted while retrieving a response from: ".concat(valueOf), e10);
            zzb.cancel(true);
            return null;
        } catch (TimeoutException e11) {
            String valueOf2 = String.valueOf(str);
            int i11 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Timeout while retrieving a response from: ".concat(valueOf2), e11);
            zzb.cancel(true);
            return null;
        } catch (Exception e12) {
            String valueOf3 = String.valueOf(str);
            int i12 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error retrieving a response from: ".concat(valueOf3), e12);
            return null;
        }
    }

    private final Uri zzp(Context context, String str, String str2, String str3) {
        String str4;
        String str5;
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        synchronized (this.zzb) {
            if (TextUtils.isEmpty(this.zzc)) {
                com.google.android.gms.ads.internal.zzv.zzr();
                try {
                    str5 = new String(IOUtils.readInputStreamFully(context.openFileInput("debug_signals_id.txt"), true), "UTF-8");
                } catch (IOException unused) {
                    int i10 = zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zze("Error reading from internal storage.");
                    str5 = "";
                }
                this.zzc = str5;
                if (TextUtils.isEmpty(str5)) {
                    com.google.android.gms.ads.internal.zzv.zzr();
                    this.zzc = UUID.randomUUID().toString();
                    com.google.android.gms.ads.internal.zzv.zzr();
                    String str6 = this.zzc;
                    try {
                        FileOutputStream openFileOutput = context.openFileOutput("debug_signals_id.txt", 0);
                        openFileOutput.write(str6.getBytes("UTF-8"));
                        openFileOutput.close();
                    } catch (Exception e10) {
                        int i11 = zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzh("Error writing to file in internal storage.", e10);
                    }
                }
            }
            str4 = this.zzc;
        }
        buildUpon.appendQueryParameter("linkedDeviceId", str4);
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }

    public final zzdvi zza() {
        return this.zzg;
    }

    public final String zzb() {
        String str;
        synchronized (this.zzb) {
            str = this.zzd;
        }
        return str;
    }

    public final void zzc(Context context) {
        zzdvi zzdviVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjE)).booleanValue() && (zzdviVar = this.zzg) != null) {
            zzdviVar.zzh(new zzav(this, context), zzdvh.DEBUG_MENU);
        }
    }

    public final void zzd(Context context, String str, String str2) {
        com.google.android.gms.ads.internal.zzv.zzr();
        zzs.zzV(context, zzp(context, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfh), str, str2));
    }

    public final void zze(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = zzp(context, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfk), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        com.google.android.gms.ads.internal.zzv.zzr();
        zzs.zzM(context, str, buildUpon.build().toString());
    }

    public final void zzf(boolean z10) {
        synchronized (this.zzb) {
            try {
                this.zzf = z10;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjE)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzv.zzp().zzi().zzx(z10);
                    zzdvi zzdviVar = this.zzg;
                    if (zzdviVar != null) {
                        zzdviVar.zzl(z10);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zzg(zzdvi zzdviVar) {
        this.zzg = zzdviVar;
    }

    public final void zzh(boolean z10) {
        synchronized (this.zzb) {
            this.zze = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    public final void zzi(Context context, String str, boolean z10, boolean z11) {
        if (!(context instanceof Activity)) {
            int i10 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Can not create dialog without Activity Context");
            return;
        }
        zzs.zza.post(new zzax(this, context, str, z10, z11));
    }

    public final boolean zzj(Context context, String str, String str2) {
        String zzo = zzo(context, zzp(context, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfj), str, str2).toString(), str2);
        if (TextUtils.isEmpty(zzo)) {
            int i10 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Not linked for debug signals.");
            return false;
        }
        try {
            boolean equals = "1".equals(new JSONObject(zzo.trim()).optString("debug_mode"));
            zzf(equals);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjE)).booleanValue()) {
                zzg zzi = com.google.android.gms.ads.internal.zzv.zzp().zzi();
                if (true != equals) {
                    str = "";
                }
                zzi.zzw(str);
            }
            return equals;
        } catch (JSONException e10) {
            int i11 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Fail to get debug mode response json.", e10);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final boolean zzk(Context context, String str, String str2) {
        boolean z10;
        String zzo = zzo(context, zzp(context, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfi), str, str2).toString(), str2);
        if (TextUtils.isEmpty(zzo)) {
            int i10 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Not linked for in app preview.");
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(zzo.trim());
            String optString = jSONObject.optString("gct");
            this.zza = jSONObject.optString("status");
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjE)).booleanValue()) {
                if (MBridgeConstans.ENDCARD_URL_TYPE_PL.equals(this.zza) || "2".equals(this.zza)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                zzf(z10);
                zzg zzi = com.google.android.gms.ads.internal.zzv.zzp().zzi();
                if (!z10) {
                    str = "";
                }
                zzi.zzw(str);
            }
            synchronized (this.zzb) {
                this.zzd = optString;
            }
            return true;
        } catch (JSONException e10) {
            int i11 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Fail to get in app preview response json.", e10);
            return false;
        }
    }

    public final boolean zzl() {
        boolean z10;
        synchronized (this.zzb) {
            z10 = this.zzf;
        }
        return z10;
    }

    public final boolean zzm() {
        boolean z10;
        synchronized (this.zzb) {
            z10 = this.zze;
        }
        return z10;
    }

    public final boolean zzn(Context context, String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str2) && zzm()) {
            int i10 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Sending troubleshooting signals to the server.");
            zze(context, str, str2, str3);
            return true;
        }
        return false;
    }
}
