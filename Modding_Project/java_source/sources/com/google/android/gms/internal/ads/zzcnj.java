package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcnj implements zzbop {
    private final Context zza;
    private final zzayz zzb;
    private final PowerManager zzc;

    public zzcnj(Context context, zzayz zzayzVar) {
        this.zza = context;
        this.zzb = zzayzVar;
        this.zzc = (PowerManager) context.getSystemService("power");
    }

    @Override // com.google.android.gms.internal.ads.zzbop
    /* renamed from: zza */
    public final JSONObject zzb(zzcnm zzcnmVar) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        zzazc zzazcVar = zzcnmVar.zzf;
        if (zzazcVar == null) {
            jSONObject = new JSONObject();
        } else {
            zzayz zzayzVar = this.zzb;
            if (zzayzVar.zzd() != null) {
                boolean z10 = zzazcVar.zza;
                JSONObject jSONObject3 = new JSONObject();
                JSONObject put = jSONObject3.put("afmaVersion", zzayzVar.zzb()).put("activeViewJSON", zzayzVar.zzd()).put("timestamp", zzcnmVar.zzd).put("adFormat", zzayzVar.zza()).put("hashCode", zzayzVar.zzc()).put("isMraid", false).put("isStopped", false).put("isPaused", zzcnmVar.zzb).put("isNative", zzayzVar.zze()).put("isScreenOn", this.zzc.isInteractive()).put("appMuted", com.google.android.gms.ads.internal.zzv.zzt().zze()).put("appVolume", com.google.android.gms.ads.internal.zzv.zzt().zza());
                Context context = this.zza;
                put.put("deviceVolume", com.google.android.gms.ads.internal.util.zzab.zzb(context.getApplicationContext()));
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                JSONObject put2 = jSONObject3.put("windowVisibility", zzazcVar.zzb).put("isAttachedToWindow", z10);
                JSONObject jSONObject4 = new JSONObject();
                Rect rect = zzazcVar.zzc;
                JSONObject put3 = put2.put("viewBox", jSONObject4.put("top", rect.top).put("bottom", rect.bottom).put(TtmlNode.LEFT, rect.left).put(TtmlNode.RIGHT, rect.right));
                JSONObject jSONObject5 = new JSONObject();
                Rect rect2 = zzazcVar.zzd;
                JSONObject put4 = put3.put("adBox", jSONObject5.put("top", rect2.top).put("bottom", rect2.bottom).put(TtmlNode.LEFT, rect2.left).put(TtmlNode.RIGHT, rect2.right));
                JSONObject jSONObject6 = new JSONObject();
                Rect rect3 = zzazcVar.zze;
                JSONObject put5 = put4.put("globalVisibleBox", jSONObject6.put("top", rect3.top).put("bottom", rect3.bottom).put(TtmlNode.LEFT, rect3.left).put(TtmlNode.RIGHT, rect3.right)).put("globalVisibleBoxVisible", zzazcVar.zzf);
                JSONObject jSONObject7 = new JSONObject();
                Rect rect4 = zzazcVar.zzg;
                JSONObject put6 = put5.put("localVisibleBox", jSONObject7.put("top", rect4.top).put("bottom", rect4.bottom).put(TtmlNode.LEFT, rect4.left).put(TtmlNode.RIGHT, rect4.right)).put("localVisibleBoxVisible", zzazcVar.zzh);
                JSONObject jSONObject8 = new JSONObject();
                Rect rect5 = zzazcVar.zzi;
                put6.put("hitBox", jSONObject8.put("top", rect5.top).put("bottom", rect5.bottom).put(TtmlNode.LEFT, rect5.left).put(TtmlNode.RIGHT, rect5.right)).put("screenDensity", displayMetrics.density);
                jSONObject3.put("isVisible", zzcnmVar.zza);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbC)).booleanValue()) {
                    JSONArray jSONArray2 = new JSONArray();
                    List<Rect> list = zzazcVar.zzk;
                    if (list != null) {
                        for (Rect rect6 : list) {
                            jSONArray2.put(new JSONObject().put("top", rect6.top).put("bottom", rect6.bottom).put(TtmlNode.LEFT, rect6.left).put(TtmlNode.RIGHT, rect6.right));
                        }
                    }
                    jSONObject3.put("scrollableContainerBoxes", jSONArray2);
                }
                if (!TextUtils.isEmpty(zzcnmVar.zze)) {
                    jSONObject3.put("doneReasonCode", "u");
                }
                jSONObject = jSONObject3;
            } else {
                throw new JSONException("Active view Info cannot be null.");
            }
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
