package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzcaf;
import com.google.android.gms.internal.ads.zzcfg;
import com.google.android.gms.internal.ads.zzftc;
import com.google.android.gms.internal.ads.zzftd;
import com.google.android.gms.internal.ads.zzfte;
import com.google.android.gms.internal.ads.zzftf;
import com.google.android.gms.internal.ads.zzfty;
import com.google.android.gms.internal.ads.zzfua;
import com.google.android.gms.internal.ads.zzfub;
import com.google.android.gms.internal.ads.zzfuc;
import com.google.android.gms.internal.ads.zzfud;
import com.google.android.gms.internal.ads.zzfuq;
import com.ss.texturerender.TextureRenderKeys;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzz {
    private zzfub zzf;
    @Nullable
    private zzcfg zzc = null;
    private boolean zze = false;
    @Nullable
    private String zza = null;
    @Nullable
    private zzfte zzd = null;
    @Nullable
    private String zzb = null;

    public static /* synthetic */ void zza(zzz zzzVar, String str, Map map) {
        zzcfg zzcfgVar = zzzVar.zzc;
        if (zzcfgVar != null) {
            zzcfgVar.zzd(str, map);
        }
    }

    private final zzfud zzl() {
        zzfuc zzc = zzfud.zzc();
        if (((Boolean) zzbd.zzc().zzb(zzbde.zzlU)).booleanValue() && !TextUtils.isEmpty(this.zzb)) {
            zzc.zza(this.zzb);
        } else {
            String str = this.zza;
            if (str != null) {
                zzc.zzb(str);
            } else {
                zzg("Missing session token and/or appId", "onLMDupdate");
            }
        }
        return zzc.zzc();
    }

    private final void zzm() {
        if (this.zzf == null) {
            this.zzf = new zzy(this);
        }
    }

    public final synchronized void zzb(@Nullable zzcfg zzcfgVar, Context context) {
        this.zzc = zzcfgVar;
        if (!zzk(context)) {
            zzg("Unable to bind", "on_play_store_bind");
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(TextureRenderKeys.KEY_IS_ACTION, "fetch_completed");
        zzf("on_play_store_bind", hashMap);
    }

    public final void zzc() {
        zzfte zzfteVar;
        if (this.zze && (zzfteVar = this.zzd) != null) {
            zzfteVar.zza(zzl(), this.zzf);
            zze("onLMDOverlayCollapse");
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
    }

    public final void zzd() {
        zzfte zzfteVar;
        if (this.zze && (zzfteVar = this.zzd) != null) {
            zzftc zzc = zzftd.zzc();
            if (((Boolean) zzbd.zzc().zzb(zzbde.zzlU)).booleanValue() && !TextUtils.isEmpty(this.zzb)) {
                zzc.zza(this.zzb);
            } else {
                String str = this.zza;
                if (str != null) {
                    zzc.zzb(str);
                } else {
                    zzg("Missing session token and/or appId", "onLMDupdate");
                }
            }
            zzfteVar.zzb(zzc.zzc(), this.zzf);
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
    }

    @VisibleForTesting
    final void zze(String str) {
        zzf(str, new HashMap());
    }

    @VisibleForTesting
    final void zzf(final String str, final Map map) {
        zzcaf.zzf.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzx
            @Override // java.lang.Runnable
            public final void run() {
                zzz.zza(zzz.this, str, map);
            }
        });
    }

    @VisibleForTesting
    final void zzg(String str, String str2) {
        com.google.android.gms.ads.internal.util.zze.zza(str);
        if (this.zzc != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("message", str);
            hashMap.put(TextureRenderKeys.KEY_IS_ACTION, str2);
            zzf("onError", hashMap);
        }
    }

    public final void zzh() {
        zzfte zzfteVar;
        if (this.zze && (zzfteVar = this.zzd) != null) {
            zzfteVar.zzc(zzl(), this.zzf);
            zze("onLMDOverlayExpand");
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void zzi(zzfua zzfuaVar) {
        if (!TextUtils.isEmpty(zzfuaVar.zzb())) {
            if (!((Boolean) zzbd.zzc().zzb(zzbde.zzlU)).booleanValue()) {
                this.zza = zzfuaVar.zzb();
            }
        }
        switch (zzfuaVar.zza()) {
            case 8152:
                zze("onLMDOverlayOpened");
                return;
            case 8153:
                zze("onLMDOverlayClicked");
                return;
            case 8154:
            case 8156:
            case 8158:
            case 8159:
            default:
                return;
            case 8155:
                zze("onLMDOverlayClose");
                return;
            case 8157:
                this.zza = null;
                this.zzb = null;
                this.zze = false;
                return;
            case 8160:
            case 8161:
            case 8162:
                HashMap hashMap = new HashMap();
                hashMap.put("error", String.valueOf(zzfuaVar.zza()));
                zzf("onLMDOverlayFailedToOpen", hashMap);
                return;
        }
    }

    public final void zzj(@Nullable zzcfg zzcfgVar, @Nullable zzfty zzftyVar) {
        if (zzcfgVar == null) {
            zzg("adWebview missing", "onLMDShow");
            return;
        }
        this.zzc = zzcfgVar;
        if (!this.zze && !zzk(zzcfgVar.getContext())) {
            zzg("LMDOverlay not bound", "on_play_store_bind");
            return;
        }
        if (((Boolean) zzbd.zzc().zzb(zzbde.zzlU)).booleanValue()) {
            this.zzb = zzftyVar.zzh();
        }
        zzm();
        zzfte zzfteVar = this.zzd;
        if (zzfteVar != null) {
            zzfteVar.zzd(zzftyVar, this.zzf);
        }
    }

    public final synchronized boolean zzk(Context context) {
        if (!zzfuq.zza(context)) {
            return false;
        }
        try {
            this.zzd = zzftf.zza(context);
        } catch (NullPointerException e10) {
            com.google.android.gms.ads.internal.util.zze.zza("Error connecting LMD Overlay service");
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "LastMileDeliveryOverlay.bindLastMileDeliveryService");
        }
        if (this.zzd == null) {
            this.zze = false;
            return false;
        }
        zzm();
        this.zze = true;
        return true;
    }
}
