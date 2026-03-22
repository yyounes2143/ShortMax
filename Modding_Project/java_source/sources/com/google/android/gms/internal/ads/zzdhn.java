package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.PlatformVersion;
import com.ss.texturerender.TextureRenderKeys;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdhn implements zzdjb {
    private com.google.android.gms.ads.internal.client.zzdf zzC;
    private final zzcyi zzD;
    private final zzdjv zzE;
    @Nullable
    private final com.google.android.gms.ads.internal.zzb zzF;
    private final Context zza;
    private final zzdje zzb;
    private final JSONObject zzc;
    private final zzdny zzd;
    private final zzdit zze;
    private final zzavu zzf;
    private final zzcwq zzg;
    private final zzcvw zzh;
    private final zzdeb zzi;
    private final zzfca zzj;
    private final VersionInfoParcel zzk;
    private final zzfcw zzl;
    private final zzcnn zzm;
    private final zzdjz zzn;
    private final Clock zzo;
    private final zzddx zzp;
    private final zzfjy zzq;
    private final zzdpo zzr;
    private final zzfhu zzs;
    private final zzecl zzt;
    private boolean zzv;
    private boolean zzu = false;
    private boolean zzw = false;
    private boolean zzx = false;
    private Point zzy = new Point();
    private Point zzz = new Point();
    private long zzA = 0;
    private long zzB = 0;

    public zzdhn(Context context, zzdje zzdjeVar, JSONObject jSONObject, zzdny zzdnyVar, zzdit zzditVar, zzavu zzavuVar, zzcwq zzcwqVar, zzcvw zzcvwVar, zzdeb zzdebVar, zzfca zzfcaVar, VersionInfoParcel versionInfoParcel, zzfcw zzfcwVar, zzcnn zzcnnVar, zzdjz zzdjzVar, Clock clock, zzddx zzddxVar, zzfjy zzfjyVar, zzfhu zzfhuVar, zzecl zzeclVar, zzdpo zzdpoVar, zzdjv zzdjvVar, zzcyi zzcyiVar, @Nullable com.google.android.gms.ads.internal.zzb zzbVar, @Nullable zzbya zzbyaVar) {
        this.zza = context;
        this.zzb = zzdjeVar;
        this.zzc = jSONObject;
        this.zzd = zzdnyVar;
        this.zze = zzditVar;
        this.zzf = zzavuVar;
        this.zzg = zzcwqVar;
        this.zzh = zzcvwVar;
        this.zzi = zzdebVar;
        this.zzj = zzfcaVar;
        this.zzk = versionInfoParcel;
        this.zzl = zzfcwVar;
        this.zzm = zzcnnVar;
        this.zzn = zzdjzVar;
        this.zzo = clock;
        this.zzp = zzddxVar;
        this.zzq = zzfjyVar;
        this.zzs = zzfhuVar;
        this.zzt = zzeclVar;
        this.zzr = zzdpoVar;
        this.zzE = zzdjvVar;
        this.zzD = zzcyiVar;
        this.zzF = zzbVar;
    }

    @Nullable
    private final String zzG(View view) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdO)).booleanValue()) {
            return null;
        }
        try {
            return this.zzf.zzc().zzh(this.zza, view, null);
        } catch (Exception unused) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Exception getting data.");
            return null;
        }
    }

    @Nullable
    private final String zzH(@Nullable View view, @Nullable Map map) {
        if (map != null && view != null) {
            for (Map.Entry entry : map.entrySet()) {
                if (view.equals((View) ((WeakReference) entry.getValue()).get())) {
                    return (String) entry.getKey();
                }
            }
        }
        int zzc = this.zze.zzc();
        if (zzc != 1) {
            if (zzc != 2) {
                if (zzc != 6) {
                    return null;
                }
                return "3099";
            }
            return "2099";
        }
        return "1099";
    }

    private final void zzI() {
        com.google.android.gms.ads.internal.zzb zzbVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznP)).booleanValue() && (zzbVar = this.zzF) != null) {
            zzbVar.zza();
        }
    }

    private final boolean zzJ(String str) {
        JSONObject optJSONObject = this.zzc.optJSONObject("allow_pub_event_reporting");
        if (optJSONObject == null || !optJSONObject.optBoolean(str, false)) {
            return false;
        }
        return true;
    }

    private final boolean zzK() {
        return this.zzc.optBoolean("allow_custom_click_gesture", false);
    }

    private final boolean zzL(@Nullable JSONObject jSONObject, @Nullable JSONObject jSONObject2, @Nullable JSONObject jSONObject3, @Nullable JSONObject jSONObject4, @Nullable String str, @Nullable JSONObject jSONObject5, boolean z10, @Nullable View view) {
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.zzc);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdO)).booleanValue()) {
                jSONObject6.put("view_signals", str);
            }
            jSONObject6.put("policy_validator_enabled", z10);
            jSONObject6.put("screen", com.google.android.gms.ads.internal.util.zzbv.zzf(this.zza));
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zziY)).booleanValue()) {
                this.zzd.zzl("/clickRecorded", new zzdhj(this, null));
            } else {
                this.zzd.zzl("/logScionEvent", new zzdhi(this, null));
            }
            zzdny zzdnyVar = this.zzd;
            zzdnyVar.zzl("/nativeImpression", new zzdhk(this, view, null));
            zzdnyVar.zzl("/nativeImpressionFlowControl", new zzdhl(this, this.zzq, this.zzj.zzax, this.zzs, null));
            zzcai.zza(zzdnyVar.zzg("google.afma.nativeAds.handleImpression", jSONObject6), "Error during performing handleImpression");
            if (!this.zzu) {
                zzfca zzfcaVar = this.zzj;
                this.zzu = com.google.android.gms.ads.internal.zzv.zzu().zzn(this.zza, this.zzk.afmaVersion, zzfcaVar.zzC.toString(), this.zzl.zzf);
                return true;
            }
            return true;
        } catch (JSONException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to create impression JSON.", e10);
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzA(zzbig zzbigVar) {
        if (!this.zzc.optBoolean("custom_one_point_five_click_enabled", false)) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
            return;
        }
        this.zzn.zzc(zzbigVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzB(View view, @Nullable Map map, @Nullable Map map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.zzy = new Point();
        this.zzz = new Point();
        if (!this.zzv) {
            this.zzp.zza(view);
            this.zzv = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        this.zzm.zzi(this);
        boolean zzj = com.google.android.gms.ads.internal.util.zzbv.zzj(this.zzk.clientJarVersion);
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                View view2 = (View) ((WeakReference) entry.getValue()).get();
                if (view2 != null) {
                    if (zzj) {
                        view2.setOnTouchListener(onTouchListener);
                    }
                    view2.setClickable(true);
                    view2.setOnClickListener(onClickListener);
                }
            }
        }
        if (map2 != null) {
            for (Map.Entry entry2 : map2.entrySet()) {
                View view3 = (View) ((WeakReference) entry2.getValue()).get();
                if (view3 != null) {
                    if (zzj) {
                        view3.setOnTouchListener(onTouchListener);
                    }
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzC(@Nullable View view, @Nullable Map map) {
        this.zzy = new Point();
        this.zzz = new Point();
        if (view != null) {
            this.zzp.zzb(view);
        }
        this.zzv = false;
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final boolean zzD() {
        if (zza() != 0) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzlW)).booleanValue()) {
                return this.zzl.zzi.zzj;
            }
            return true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final boolean zzE() {
        return zzK();
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final boolean zzF(Bundle bundle) {
        if (!zzJ("impression_reporting")) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events.");
            return false;
        }
        String str = null;
        JSONObject zzp = com.google.android.gms.ads.internal.client.zzbb.zzb().zzp(bundle, null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzlS)).booleanValue()) {
            str = zzG(null);
        }
        return zzL(null, null, null, null, str, zzp, false, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final int zza() {
        zzbge zzbgeVar = this.zzl.zzi;
        if (zzbgeVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzlW)).booleanValue()) {
                return zzbgeVar.zzi;
            }
            return 0;
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    @Nullable
    public final JSONObject zzf(@Nullable View view, @Nullable Map map, @Nullable Map map2, @Nullable ImageView.ScaleType scaleType) {
        Context context = this.zza;
        JSONObject zzd = com.google.android.gms.ads.internal.util.zzbv.zzd(context, map, map2, view, scaleType);
        JSONObject zzh = com.google.android.gms.ads.internal.util.zzbv.zzh(context, view);
        JSONObject zzg = com.google.android.gms.ads.internal.util.zzbv.zzg(view);
        JSONObject zze = com.google.android.gms.ads.internal.util.zzbv.zze(context, view);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("asset_view_signal", zzd);
            jSONObject.put("ad_view_signal", zzh);
            jSONObject.put("scroll_view_signal", zzg);
            jSONObject.put("lock_screen_signal", zze);
            return jSONObject;
        } catch (JSONException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to create native ad view signals JSON.", e10);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    @Nullable
    public final JSONObject zzg(@Nullable View view, @Nullable Map map, @Nullable Map map2, @Nullable ImageView.ScaleType scaleType) {
        JSONObject zzf = zzf(view, map, map2, scaleType);
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.zzx && zzK()) {
                jSONObject.put("custom_click_gesture_eligible", true);
            }
            if (zzf != null) {
                jSONObject.put("nas", zzf);
            }
        } catch (JSONException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to create native click meta data JSON.", e10);
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzi() {
        try {
            com.google.android.gms.ads.internal.client.zzdf zzdfVar = this.zzC;
            if (zzdfVar != null) {
                zzdfVar.zze();
            }
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzj() {
        if (!this.zzc.optBoolean("custom_one_point_five_click_enabled", false)) {
            return;
        }
        this.zzn.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzk() {
        this.zzd.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzl(@Nullable com.google.android.gms.ads.internal.client.zzdj zzdjVar) {
        try {
            if (this.zzw) {
                return;
            }
            if (zzdjVar == null) {
                zzdit zzditVar = this.zze;
                if (zzditVar.zzk() != null) {
                    this.zzw = true;
                    this.zzq.zzd(zzditVar.zzk().zzf(), this.zzj.zzax, this.zzs, null);
                    zzi();
                    return;
                }
            }
            this.zzw = true;
            this.zzq.zzd(zzdjVar.zzf(), this.zzj.zzax, this.zzs, null);
            zzi();
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzm(View view, @Nullable View view2, @Nullable Map map, @Nullable Map map2, boolean z10, @Nullable ImageView.ScaleType scaleType) {
        View view3;
        Context context = this.zza;
        JSONObject zzd = com.google.android.gms.ads.internal.util.zzbv.zzd(context, map, map2, view2, scaleType);
        JSONObject zzh = com.google.android.gms.ads.internal.util.zzbv.zzh(context, view2);
        JSONObject zzg = com.google.android.gms.ads.internal.util.zzbv.zzg(view2);
        JSONObject zze = com.google.android.gms.ads.internal.util.zzbv.zze(context, view2);
        String zzH = zzH(view, map);
        JSONObject zzc = com.google.android.gms.ads.internal.util.zzbv.zzc(zzH, context, this.zzz, this.zzy);
        if (true == ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdV)).booleanValue()) {
            view3 = view2;
        } else {
            view3 = view;
        }
        zzp(view3, zzh, zzd, zzg, zze, zzH, zzc, null, z10, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzn(String str) {
        zzp(null, null, null, null, null, str, null, null, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzo(@Nullable Bundle bundle) {
        String str;
        if (bundle == null) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Click data is null. No click is reported.");
        } else if (!zzJ("click_reporting")) {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events.");
        } else {
            Bundle bundle2 = bundle.getBundle("click_signal");
            if (bundle2 != null) {
                str = bundle2.getString("asset_id");
            } else {
                str = null;
            }
            zzp(null, null, null, null, null, str, null, com.google.android.gms.ads.internal.client.zzbb.zzb().zzp(bundle, null), false, false);
        }
    }

    @VisibleForTesting
    protected final void zzp(@Nullable View view, @Nullable JSONObject jSONObject, @Nullable JSONObject jSONObject2, @Nullable JSONObject jSONObject3, @Nullable JSONObject jSONObject4, @Nullable String str, @Nullable JSONObject jSONObject5, @Nullable JSONObject jSONObject6, boolean z10, boolean z11) {
        boolean z12;
        boolean z13;
        boolean z14;
        String str2;
        try {
            zzI();
            JSONObject jSONObject7 = new JSONObject();
            JSONObject jSONObject8 = this.zzc;
            jSONObject7.put("ad", jSONObject8);
            jSONObject7.put("asset_view_signal", jSONObject2);
            jSONObject7.put("ad_view_signal", jSONObject);
            jSONObject7.put("click_signal", jSONObject5);
            jSONObject7.put("scroll_view_signal", jSONObject3);
            jSONObject7.put("lock_screen_signal", jSONObject4);
            zzdje zzdjeVar = this.zzb;
            zzdit zzditVar = this.zze;
            boolean z15 = false;
            if (zzdjeVar.zzc(zzditVar.zzA()) != null) {
                z12 = true;
            } else {
                z12 = false;
            }
            jSONObject7.put("has_custom_click_handler", z12);
            jSONObject7.put("provided_signals", jSONObject6);
            JSONObject jSONObject9 = new JSONObject();
            jSONObject9.put("asset_id", str);
            jSONObject9.put("template", zzditVar.zzc());
            jSONObject9.put("view_aware_api_used", z10);
            zzbge zzbgeVar = this.zzl.zzi;
            if (zzbgeVar != null && zzbgeVar.zzg) {
                z13 = true;
            } else {
                z13 = false;
            }
            jSONObject9.put("custom_mute_requested", z13);
            if (!zzditVar.zzH().isEmpty() && zzditVar.zzk() != null) {
                z14 = true;
            } else {
                z14 = false;
            }
            jSONObject9.put("custom_mute_enabled", z14);
            if (this.zzn.zza() != null && jSONObject8.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject9.put("custom_one_point_five_click_eligible", true);
            }
            jSONObject9.put("timestamp", this.zzo.currentTimeMillis());
            if (this.zzx && zzK()) {
                jSONObject9.put("custom_click_gesture_eligible", true);
            }
            if (z11) {
                jSONObject9.put("is_custom_click_gesture", true);
            }
            if (zzdjeVar.zzc(zzditVar.zzA()) != null) {
                z15 = true;
            }
            jSONObject9.put("has_custom_click_handler", z15);
            String str3 = null;
            try {
                JSONObject optJSONObject = jSONObject8.optJSONObject("tracking_urls_and_actions");
                if (optJSONObject == null) {
                    optJSONObject = new JSONObject();
                }
                str2 = this.zzf.zzc().zzd(this.zza, optJSONObject.optString("click_string"), view);
            } catch (Exception e10) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Exception obtaining click signals", e10);
                str2 = null;
            }
            jSONObject9.put("click_signals", str2);
            jSONObject9.put("open_chrome_custom_tab", true);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjc)).booleanValue() && PlatformVersion.isAtLeastR()) {
                jSONObject9.put("try_fallback_for_deep_link", true);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjd)).booleanValue() && PlatformVersion.isAtLeastR()) {
                jSONObject9.put("in_app_link_handling_for_android_11_enabled", true);
            }
            jSONObject7.put("click", jSONObject9);
            JSONObject jSONObject10 = new JSONObject();
            long currentTimeMillis = this.zzo.currentTimeMillis();
            jSONObject10.put("time_from_last_touch_down", currentTimeMillis - this.zzA);
            jSONObject10.put("time_from_last_touch", currentTimeMillis - this.zzB);
            jSONObject7.put("touch_signal", jSONObject10);
            if (this.zzj.zzb()) {
                JSONObject jSONObject11 = (JSONObject) this.zzc.get("tracking_urls_and_actions");
                if (jSONObject11 != null) {
                    str3 = jSONObject11.getString("gws_query_id");
                }
                if (str3 != null) {
                    this.zzt.zzq(str3, this.zze);
                }
            }
            zzcai.zza(this.zzd.zzg("google.afma.nativeAds.handleClick", jSONObject7), "Error during performing handleClick");
        } catch (JSONException e11) {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to create click JSON.", e11);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzq(@Nullable View view, @Nullable View view2, @Nullable Map map, @Nullable Map map2, boolean z10, @Nullable ImageView.ScaleType scaleType, int i10) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = this.zzc;
        boolean z11 = false;
        if (jSONObject2.optBoolean("allow_sdk_custom_click_gesture", false)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzlW)).booleanValue()) {
                z11 = true;
            }
        }
        if (!z11) {
            if (!this.zzx) {
                int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zze("Custom click reporting failed. enableCustomClickGesture is not set.");
                return;
            } else if (!zzK()) {
                int i12 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zze("Custom click reporting failed. Ad unit id not in the allow list.");
                return;
            }
        }
        Context context = this.zza;
        JSONObject zzd = com.google.android.gms.ads.internal.util.zzbv.zzd(context, map, map2, view2, scaleType);
        JSONObject zzh = com.google.android.gms.ads.internal.util.zzbv.zzh(context, view2);
        JSONObject zzg = com.google.android.gms.ads.internal.util.zzbv.zzg(view2);
        JSONObject zze = com.google.android.gms.ads.internal.util.zzbv.zze(context, view2);
        String zzH = zzH(view, map);
        JSONObject zzc = com.google.android.gms.ads.internal.util.zzbv.zzc(zzH, context, this.zzz, this.zzy);
        if (z11) {
            try {
                Point point = this.zzz;
                Point point2 = this.zzy;
                try {
                    jSONObject = new JSONObject();
                    try {
                        JSONObject jSONObject3 = new JSONObject();
                        JSONObject jSONObject4 = new JSONObject();
                        if (point != null) {
                            jSONObject3.put(TextureRenderKeys.KEY_IS_X, point.x);
                            jSONObject3.put(TextureRenderKeys.KEY_IS_Y, point.y);
                        }
                        if (point2 != null) {
                            jSONObject4.put(TextureRenderKeys.KEY_IS_X, point2.x);
                            jSONObject4.put(TextureRenderKeys.KEY_IS_Y, point2.y);
                        }
                        jSONObject.put("start_point", jSONObject3);
                        jSONObject.put("end_point", jSONObject4);
                        jSONObject.put("duration_ms", i10);
                    } catch (Exception e10) {
                        e = e10;
                        int i13 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzh("Error occurred while grabbing custom click gesture signals.", e);
                        jSONObject2.put("custom_click_gesture_signal", jSONObject);
                        zzp(view2, zzh, zzd, zzg, zze, zzH, zzc, null, z10, true);
                    }
                } catch (Exception e11) {
                    e = e11;
                    jSONObject = null;
                }
                jSONObject2.put("custom_click_gesture_signal", jSONObject);
            } catch (JSONException e12) {
                int i14 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Error occurred while adding CustomClickGestureSignals to adJson.", e12);
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e12, "FirstPartyNativeAdCore.performCustomClickGesture");
            }
        }
        zzp(view2, zzh, zzd, zzg, zze, zzH, zzc, null, z10, true);
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzr(View view, @Nullable Map map, @Nullable Map map2, @Nullable ImageView.ScaleType scaleType) {
        Context context = this.zza;
        JSONObject zzd = com.google.android.gms.ads.internal.util.zzbv.zzd(context, map, map2, view, scaleType);
        JSONObject zzh = com.google.android.gms.ads.internal.util.zzbv.zzh(context, view);
        JSONObject zzg = com.google.android.gms.ads.internal.util.zzbv.zzg(view);
        JSONObject zze = com.google.android.gms.ads.internal.util.zzbv.zze(context, view);
        boolean zzi = com.google.android.gms.ads.internal.util.zzbv.zzi(context, this.zzj);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.zzc);
            jSONObject.put("asset_view_signal", zzd);
            jSONObject.put("ad_view_signal", zzh);
            jSONObject.put("scroll_view_signal", zzg);
            jSONObject.put("lock_screen_signal", zze);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdO)).booleanValue()) {
                jSONObject.put("view_signals", zzG(view));
            }
            jSONObject.put("policy_validator_enabled", zzi);
            jSONObject.put("screen", com.google.android.gms.ads.internal.util.zzbv.zzf(context));
            zzcai.zza(this.zzd.zzg("google.afma.nativeAds.handleNativeAdSignalsLogging", jSONObject), "Error during performing handleNativeAdSignalsLogging");
        } catch (JSONException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to create native ad signals logging JSON.", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzs() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.zzc);
            zzcai.zza(this.zzd.zzg("google.afma.nativeAds.handleDownloadedImpression", jSONObject), "Error during performing handleDownloadedImpression");
        } catch (JSONException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzt(@Nullable View view, @Nullable Map map, @Nullable Map map2, @Nullable ImageView.ScaleType scaleType) {
        Context context = this.zza;
        zzL(com.google.android.gms.ads.internal.util.zzbv.zzh(context, view), com.google.android.gms.ads.internal.util.zzbv.zzd(context, map, map2, view, scaleType), com.google.android.gms.ads.internal.util.zzbv.zzg(view), com.google.android.gms.ads.internal.util.zzbv.zze(context, view), zzG(view), null, com.google.android.gms.ads.internal.util.zzbv.zzi(context, this.zzj), view);
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzu() {
        zzL(null, null, null, null, null, null, false, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzv(@Nullable View view, MotionEvent motionEvent, @Nullable View view2) {
        this.zzy = com.google.android.gms.ads.internal.util.zzbv.zza(motionEvent, view2);
        long currentTimeMillis = this.zzo.currentTimeMillis();
        this.zzB = currentTimeMillis;
        if (motionEvent.getAction() == 0) {
            this.zzr.zzb(motionEvent);
            this.zzA = currentTimeMillis;
            this.zzz = this.zzy;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.zzy;
        obtain.setLocation(point.x, point.y);
        this.zzf.zzd(obtain);
        obtain.recycle();
        zzI();
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzw(@Nullable Bundle bundle) {
        if (bundle == null) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Touch event data is null. No touch event is reported.");
        } else if (!zzJ("touch_reporting")) {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events.");
        } else {
            int i12 = bundle.getInt("duration_ms");
            this.zzf.zzc().zzl((int) bundle.getFloat(TextureRenderKeys.KEY_IS_X), (int) bundle.getFloat(TextureRenderKeys.KEY_IS_Y), i12);
            zzI();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzx(View view) {
        if (!this.zzc.optBoolean("custom_one_point_five_click_enabled", false)) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
            return;
        }
        zzdjz zzdjzVar = this.zzn;
        if (view == null) {
            return;
        }
        view.setOnClickListener(zzdjzVar);
        view.setClickable(true);
        zzdjzVar.zzc = new WeakReference(view);
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzy() {
        this.zzx = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzz(com.google.android.gms.ads.internal.client.zzdf zzdfVar) {
        this.zzC = zzdfVar;
    }
}
