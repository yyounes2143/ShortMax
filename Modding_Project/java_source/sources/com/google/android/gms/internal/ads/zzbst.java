package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbst extends zzbsu implements zzbkf {
    DisplayMetrics zza;
    int zzb;
    int zzc;
    int zzd;
    int zze;
    int zzf;
    int zzg;
    private final zzcfg zzh;
    private final Context zzi;
    private final WindowManager zzj;
    private final zzbcm zzk;
    private float zzl;
    private int zzm;

    public zzbst(zzcfg zzcfgVar, Context context, zzbcm zzbcmVar) {
        super(zzcfgVar, "");
        this.zzb = -1;
        this.zzc = -1;
        this.zzd = -1;
        this.zze = -1;
        this.zzf = -1;
        this.zzg = -1;
        this.zzh = zzcfgVar;
        this.zzi = context;
        this.zzk = zzbcmVar;
        this.zzj = (WindowManager) context.getSystemService("window");
    }

    @Override // com.google.android.gms.internal.ads.zzbkf
    public final /* synthetic */ void zza(Object obj, Map map) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        JSONObject jSONObject;
        zzcfg zzcfgVar = (zzcfg) obj;
        this.zza = new DisplayMetrics();
        Display defaultDisplay = this.zzj.getDefaultDisplay();
        defaultDisplay.getMetrics(this.zza);
        this.zzl = this.zza.density;
        this.zzm = defaultDisplay.getRotation();
        com.google.android.gms.ads.internal.client.zzbb.zzb();
        DisplayMetrics displayMetrics = this.zza;
        this.zzb = com.google.android.gms.ads.internal.util.client.zzf.zzA(displayMetrics, displayMetrics.widthPixels);
        com.google.android.gms.ads.internal.client.zzbb.zzb();
        DisplayMetrics displayMetrics2 = this.zza;
        this.zzc = com.google.android.gms.ads.internal.util.client.zzf.zzA(displayMetrics2, displayMetrics2.heightPixels);
        zzcfg zzcfgVar2 = this.zzh;
        Activity zzi = zzcfgVar2.zzi();
        if (zzi != null && zzi.getWindow() != null) {
            com.google.android.gms.ads.internal.zzv.zzr();
            int[] zzR = com.google.android.gms.ads.internal.util.zzs.zzR(zzi);
            com.google.android.gms.ads.internal.client.zzbb.zzb();
            this.zzd = com.google.android.gms.ads.internal.util.client.zzf.zzA(this.zza, zzR[0]);
            com.google.android.gms.ads.internal.client.zzbb.zzb();
            this.zze = com.google.android.gms.ads.internal.util.client.zzf.zzA(this.zza, zzR[1]);
        } else {
            this.zzd = this.zzb;
            this.zze = this.zzc;
        }
        if (zzcfgVar2.zzO().zzi()) {
            this.zzf = this.zzb;
            this.zzg = this.zzc;
        } else {
            zzcfgVar2.measure(0, 0);
        }
        zzj(this.zzb, this.zzc, this.zzd, this.zze, this.zzl, this.zzm);
        zzbss zzbssVar = new zzbss();
        zzbcm zzbcmVar = this.zzk;
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        zzbssVar.zze(zzbcmVar.zza(intent));
        Intent intent2 = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
        intent2.setData(Uri.parse("sms:"));
        zzbssVar.zzc(zzbcmVar.zza(intent2));
        zzbssVar.zza(zzbcmVar.zzb());
        zzbssVar.zzd(zzbcmVar.zzc());
        zzbssVar.zzb(true);
        z10 = zzbssVar.zza;
        z11 = zzbssVar.zzb;
        z12 = zzbssVar.zzc;
        z13 = zzbssVar.zzd;
        z14 = zzbssVar.zze;
        try {
            jSONObject = new JSONObject().put("sms", z10).put("tel", z11).put("calendar", z12).put("storePicture", z13).put("inlineVideo", z14);
        } catch (JSONException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error occurred while obtaining the MRAID capabilities.", e10);
            jSONObject = null;
        }
        zzcfgVar2.zze("onDeviceFeaturesReceived", jSONObject);
        int[] iArr = new int[2];
        zzcfgVar2.getLocationOnScreen(iArr);
        Context context = this.zzi;
        zzb(com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, iArr[0]), com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, iArr[1]));
        if (com.google.android.gms.ads.internal.util.client.zzo.zzm(2)) {
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Dispatching Ready Event.");
        }
        zzi(zzcfgVar2.zzm().afmaVersion);
    }

    public final void zzb(int i10, int i11) {
        int i12;
        Context context = this.zzi;
        int i13 = 0;
        if (context instanceof Activity) {
            com.google.android.gms.ads.internal.zzv.zzr();
            i12 = com.google.android.gms.ads.internal.util.zzs.zzS((Activity) context)[0];
        } else {
            i12 = 0;
        }
        zzcfg zzcfgVar = this.zzh;
        if (zzcfgVar.zzO() == null || !zzcfgVar.zzO().zzi()) {
            int width = zzcfgVar.getWidth();
            int height = zzcfgVar.getHeight();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzai)).booleanValue()) {
                if (width == 0) {
                    if (zzcfgVar.zzO() != null) {
                        width = zzcfgVar.zzO().zzb;
                    } else {
                        width = 0;
                    }
                }
                if (height == 0) {
                    if (zzcfgVar.zzO() != null) {
                        i13 = zzcfgVar.zzO().zza;
                    }
                    this.zzf = com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, width);
                    this.zzg = com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, i13);
                }
            }
            i13 = height;
            this.zzf = com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, width);
            this.zzg = com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, i13);
        }
        zzg(i10, i11 - i12, this.zzf, this.zzg);
        zzcfgVar.zzN().zzE(i10, i11);
    }
}
