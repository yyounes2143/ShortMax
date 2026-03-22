package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdkw implements zzdjb, zzdax {
    @Nullable
    private final zzbqf zza;
    private final zzcwq zzb;
    private final zzcym zzc;
    private final zzcvw zzd;
    private final zzdeb zze;
    private final Context zzf;
    private final zzfca zzg;
    private final VersionInfoParcel zzh;
    private final zzfcw zzi;
    private boolean zzj = false;
    private boolean zzk = false;
    private boolean zzl = true;
    @Nullable
    private final zzbqb zzm;
    @Nullable
    private final zzbqc zzn;

    public zzdkw(@Nullable zzbqb zzbqbVar, @Nullable zzbqc zzbqcVar, @Nullable zzbqf zzbqfVar, zzcwq zzcwqVar, zzcym zzcymVar, zzcvw zzcvwVar, zzdeb zzdebVar, Context context, zzfca zzfcaVar, VersionInfoParcel versionInfoParcel, zzfcw zzfcwVar) {
        this.zzm = zzbqbVar;
        this.zzn = zzbqcVar;
        this.zza = zzbqfVar;
        this.zzb = zzcwqVar;
        this.zzc = zzcymVar;
        this.zzd = zzcvwVar;
        this.zze = zzdebVar;
        this.zzf = context;
        this.zzg = zzfcaVar;
        this.zzh = versionInfoParcel;
        this.zzi = zzfcwVar;
    }

    private final void zzc(View view) {
        try {
            zzbqf zzbqfVar = this.zza;
            if (zzbqfVar != null && !zzbqfVar.zzA()) {
                zzbqfVar.zzw(ObjectWrapper.wrap(view));
                this.zzd.onAdClicked();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzli)).booleanValue()) {
                    this.zze.zzdf();
                    return;
                }
                return;
            }
            zzbqb zzbqbVar = this.zzm;
            if (zzbqbVar != null && !zzbqbVar.zzx()) {
                zzbqbVar.zzs(ObjectWrapper.wrap(view));
                this.zzd.onAdClicked();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzli)).booleanValue()) {
                    this.zze.zzdf();
                    return;
                }
                return;
            }
            zzbqc zzbqcVar = this.zzn;
            if (zzbqcVar != null && !zzbqcVar.zzv()) {
                zzbqcVar.zzq(ObjectWrapper.wrap(view));
                this.zzd.onAdClicked();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzli)).booleanValue()) {
                    this.zze.zzdf();
                }
            }
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to call handleClick", e10);
        }
    }

    private static final HashMap zzd(Map map) {
        HashMap hashMap = new HashMap();
        if (map != null) {
            synchronized (map) {
                try {
                    for (Map.Entry entry : map.entrySet()) {
                        View view = (View) ((WeakReference) entry.getValue()).get();
                        if (view != null) {
                            hashMap.put((String) entry.getKey(), view);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzB(View view, @Nullable Map map, @Nullable Map map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        Map map3;
        Map map4;
        Object obj;
        IObjectWrapper zzn;
        try {
            IObjectWrapper wrap = ObjectWrapper.wrap(view);
            JSONObject jSONObject = this.zzg.zzaj;
            boolean z10 = true;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbJ)).booleanValue() && jSONObject.length() != 0) {
                if (map == null) {
                    map3 = new HashMap();
                } else {
                    map3 = map;
                }
                if (map2 == null) {
                    map4 = new HashMap();
                } else {
                    map4 = map2;
                }
                HashMap hashMap = new HashMap();
                hashMap.putAll(map3);
                hashMap.putAll(map4);
                Iterator<String> keys = jSONObject.keys();
                loop0: while (keys.hasNext()) {
                    String next = keys.next();
                    JSONArray optJSONArray = jSONObject.optJSONArray(next);
                    if (optJSONArray != null) {
                        WeakReference weakReference = (WeakReference) hashMap.get(next);
                        if (weakReference != null && (obj = weakReference.get()) != null) {
                            Class<?> cls = obj.getClass();
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbK)).booleanValue() && next.equals("3010")) {
                                zzbqf zzbqfVar = this.zza;
                                Object obj2 = null;
                                if (zzbqfVar != null) {
                                    try {
                                        zzn = zzbqfVar.zzn();
                                    } catch (RemoteException | IllegalArgumentException unused) {
                                    }
                                } else {
                                    zzbqb zzbqbVar = this.zzm;
                                    if (zzbqbVar != null) {
                                        zzn = zzbqbVar.zzk();
                                    } else {
                                        zzbqc zzbqcVar = this.zzn;
                                        if (zzbqcVar != null) {
                                            zzn = zzbqcVar.zzj();
                                        } else {
                                            zzn = null;
                                        }
                                    }
                                }
                                if (zzn != null) {
                                    obj2 = ObjectWrapper.unwrap(zzn);
                                }
                                if (obj2 != null) {
                                    cls = obj2.getClass();
                                }
                            }
                            try {
                                ArrayList<String> arrayList = new ArrayList();
                                com.google.android.gms.ads.internal.util.zzbs.zzc(optJSONArray, arrayList);
                                com.google.android.gms.ads.internal.zzv.zzr();
                                ClassLoader classLoader = this.zzf.getClassLoader();
                                for (String str : arrayList) {
                                    if (Class.forName(str, false, classLoader).isAssignableFrom(cls)) {
                                        break;
                                    }
                                }
                            } catch (JSONException unused2) {
                                continue;
                            }
                        }
                        z10 = false;
                        break;
                    }
                }
            }
            this.zzl = z10;
            HashMap zzd = zzd(map);
            HashMap zzd2 = zzd(map2);
            zzbqf zzbqfVar2 = this.zza;
            if (zzbqfVar2 != null) {
                zzbqfVar2.zzy(wrap, ObjectWrapper.wrap(zzd), ObjectWrapper.wrap(zzd2));
                return;
            }
            zzbqb zzbqbVar2 = this.zzm;
            if (zzbqbVar2 != null) {
                zzbqbVar2.zzv(wrap, ObjectWrapper.wrap(zzd), ObjectWrapper.wrap(zzd2));
                zzbqbVar2.zzu(wrap);
                return;
            }
            zzbqc zzbqcVar2 = this.zzn;
            if (zzbqcVar2 != null) {
                zzbqcVar2.zzt(wrap, ObjectWrapper.wrap(zzd), ObjectWrapper.wrap(zzd2));
                zzbqcVar2.zzs(wrap);
            }
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to call trackView", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzC(View view, @Nullable Map map) {
        try {
            IObjectWrapper wrap = ObjectWrapper.wrap(view);
            zzbqf zzbqfVar = this.zza;
            if (zzbqfVar != null) {
                zzbqfVar.zzz(wrap);
                return;
            }
            zzbqb zzbqbVar = this.zzm;
            if (zzbqbVar != null) {
                zzbqbVar.zzw(wrap);
                return;
            }
            zzbqc zzbqcVar = this.zzn;
            if (zzbqcVar != null) {
                zzbqcVar.zzu(wrap);
            }
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to call untrackView", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final boolean zzD() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final boolean zzE() {
        return this.zzg.zzL;
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final boolean zzF(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzdq() {
        try {
            zzbqf zzbqfVar = this.zza;
            if (zzbqfVar != null && zzbqfVar.zzB()) {
                zzfca zzfcaVar = this.zzg;
                if (zzfcaVar.zze != 4 && !zzfcaVar.zzaC) {
                    return;
                }
                zzbqfVar.zzx();
                this.zzb.zza();
            }
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to report impression from an adapter", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    @Nullable
    public final JSONObject zzf(View view, Map map, Map map2, @Nullable ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    @Nullable
    public final JSONObject zzg(View view, Map map, Map map2, @Nullable ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzi() {
        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzl(@Nullable com.google.android.gms.ads.internal.client.zzdj zzdjVar) {
        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzm(View view, @Nullable View view2, @Nullable Map map, @Nullable Map map2, boolean z10, @Nullable ImageView.ScaleType scaleType) {
        if (this.zzk && this.zzg.zzL) {
            return;
        }
        zzc(view);
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzq(View view, View view2, Map map, Map map2, boolean z10, @Nullable ImageView.ScaleType scaleType, int i10) {
        if (!this.zzk) {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (!this.zzg.zzL) {
            int i12 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Custom click reporting for 3p ads failed. Ad unit id not in allow list.");
        } else {
            zzc(view2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzt(@Nullable View view, @Nullable Map map, @Nullable Map map2, @Nullable ImageView.ScaleType scaleType) {
        try {
            if (!this.zzj) {
                this.zzj = com.google.android.gms.ads.internal.zzv.zzu().zzn(this.zzf, this.zzh.afmaVersion, this.zzg.zzC.toString(), this.zzi.zzf);
            }
            if (this.zzl) {
                zzbqf zzbqfVar = this.zza;
                if (zzbqfVar != null) {
                    zzfca zzfcaVar = this.zzg;
                    if (zzfcaVar.zzaC) {
                        if (!zzbqfVar.zzB()) {
                            zzbqfVar.zzx();
                            this.zzb.zza();
                            return;
                        }
                        return;
                    } else if (zzbqfVar.zzB() && zzfcaVar.zze == 4) {
                        this.zzc.zza();
                        return;
                    } else {
                        zzbqfVar.zzx();
                        this.zzb.zza();
                        return;
                    }
                }
                zzbqb zzbqbVar = this.zzm;
                if (zzbqbVar != null && !zzbqbVar.zzy()) {
                    zzbqbVar.zzt();
                    this.zzb.zza();
                    return;
                }
                zzbqc zzbqcVar = this.zzn;
                if (zzbqcVar != null && !zzbqcVar.zzw()) {
                    zzbqcVar.zzr();
                    this.zzb.zza();
                }
            }
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to call recordImpression", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzy() {
        this.zzk = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzz(com.google.android.gms.ads.internal.client.zzdf zzdfVar) {
        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzdp() {
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzj() {
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzk() {
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzs() {
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzu() {
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzA(zzbig zzbigVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzn(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzo(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzw(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzx(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzv(View view, MotionEvent motionEvent, @Nullable View view2) {
    }

    @Override // com.google.android.gms.internal.ads.zzdjb
    public final void zzr(@Nullable View view, @Nullable Map map, @Nullable Map map2, @Nullable ImageView.ScaleType scaleType) {
    }
}
