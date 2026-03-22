package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdio extends zzcra {
    public static final zzfyq zzc = zzfyq.zzs("3010", "3008", "1005", "1009", "2011", "2007");
    private final List zzA;
    private final Executor zzd;
    private final zzdit zze;
    private final zzdjb zzf;
    private final zzdjt zzg;
    private final zzdiy zzh;
    private final zzdje zzi;
    private final zzhgl zzj;
    private final zzhgl zzk;
    private final zzhgl zzl;
    private final zzhgl zzm;
    private final zzhgl zzn;
    @Nullable
    private zzdkr zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private boolean zzs;
    private final zzbyk zzt;
    private final zzavu zzu;
    private final VersionInfoParcel zzv;
    private final Context zzw;
    private final zzdiq zzx;
    private final zzelb zzy;
    private final Map zzz;

    public zzdio(zzcqz zzcqzVar, Executor executor, zzdit zzditVar, zzdjb zzdjbVar, zzdjt zzdjtVar, zzdiy zzdiyVar, zzdje zzdjeVar, zzhgl zzhglVar, zzhgl zzhglVar2, zzhgl zzhglVar3, zzhgl zzhglVar4, zzhgl zzhglVar5, zzbyk zzbykVar, zzavu zzavuVar, VersionInfoParcel versionInfoParcel, Context context, zzdiq zzdiqVar, zzelb zzelbVar, zzazf zzazfVar) {
        super(zzcqzVar);
        this.zzd = executor;
        this.zze = zzditVar;
        this.zzf = zzdjbVar;
        this.zzg = zzdjtVar;
        this.zzh = zzdiyVar;
        this.zzi = zzdjeVar;
        this.zzj = zzhglVar;
        this.zzk = zzhglVar2;
        this.zzl = zzhglVar3;
        this.zzm = zzhglVar4;
        this.zzn = zzhglVar5;
        this.zzt = zzbykVar;
        this.zzu = zzavuVar;
        this.zzv = versionInfoParcel;
        this.zzw = context;
        this.zzx = zzdiqVar;
        this.zzy = zzelbVar;
        this.zzz = new HashMap();
        this.zzA = new ArrayList();
    }

    public static boolean zzZ(View view) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzla)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzr();
            long zzx = com.google.android.gms.ads.internal.util.zzs.zzx(view);
            if (view.isShown() && view.getGlobalVisibleRect(new Rect(), new Point())) {
                if (zzx >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzlb)).intValue()) {
                    return true;
                }
            }
            return false;
        } else if (!view.isShown() || !view.getGlobalVisibleRect(new Rect(), new Point())) {
            return false;
        } else {
            return true;
        }
    }

    @Nullable
    private final synchronized View zzab(Map map) {
        if (map != null) {
            zzfyq zzfyqVar = zzc;
            int size = zzfyqVar.size();
            int i10 = 0;
            while (i10 < size) {
                WeakReference weakReference = (WeakReference) map.get((String) zzfyqVar.get(i10));
                i10++;
                if (weakReference != null) {
                    return (View) weakReference.get();
                }
            }
        }
        return null;
    }

    @Nullable
    private final synchronized ImageView.ScaleType zzac() {
        zzdkr zzdkrVar = this.zzo;
        if (zzdkrVar == null) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Ad should be associated with an ad view before calling getMediaviewScaleType()");
            return null;
        }
        IObjectWrapper zzj = zzdkrVar.zzj();
        if (zzj != null) {
            return (ImageView.ScaleType) ObjectWrapper.unwrap(zzj);
        }
        return zzdjt.zza;
    }

    private final void zzad(String str, boolean z10) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfG)).booleanValue()) {
            com.google.common.util.concurrent.e zzw = this.zze.zzw();
            if (zzw == null) {
                return;
            }
            zzgdn.zzr(zzw, new zzdim(this, "Google", true), this.zzd);
            return;
        }
        zzf("Google", true);
    }

    private final synchronized void zzae(View view, Map map, Map map2) {
        View zzab;
        Rect rect;
        if (!this.zzr && (zzab = zzab(map)) != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznM)).booleanValue()) {
                Rect rect2 = new Rect();
                if (zzab.getGlobalVisibleRect(rect2, new Point()) && zzab.getHeight() == rect2.height() && zzab.getWidth() == rect2.width()) {
                    this.zzf.zzr(view, map, map2, zzac());
                    this.zzr = true;
                }
            } else if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznN)).booleanValue()) {
                if (zzZ(zzab)) {
                    this.zzf.zzr(view, map, map2, zzac());
                    this.zzr = true;
                }
            } else {
                zzbcv zzbcvVar = zzbde.zznO;
                if (((Float) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcvVar)).floatValue() > 0.0d) {
                    double floatValue = ((Float) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcvVar)).floatValue();
                    if (zzab.getGlobalVisibleRect(new Rect(), new Point())) {
                        if (rect.height() * rect.width() >= zzab.getHeight() * zzab.getWidth() * (floatValue / 100.0d)) {
                            this.zzf.zzr(view, map, map2, zzac());
                            this.zzr = true;
                        }
                    }
                }
            }
        }
    }

    private final synchronized void zzaf(View view, Map map, Map map2) {
        this.zzg.zzd(this.zzo);
        this.zzf.zzt(view, map, map2, zzac());
        this.zzq = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzag(View view, @Nullable zzedh zzedhVar) {
        zzcfg zzr = this.zze.zzr();
        if (this.zzh.zzd() && zzedhVar != null && zzr != null && view != null) {
            com.google.android.gms.ads.internal.zzv.zzC().zzj(zzedhVar.zza(), view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzah(zzdkr zzdkrVar) {
        Iterator<String> keys;
        WeakReference weakReference;
        View view;
        zzavp zzc2;
        try {
            if (!this.zzp) {
                this.zzo = zzdkrVar;
                this.zzg.zze(zzdkrVar);
                this.zzf.zzB(zzdkrVar.zzf(), zzdkrVar.zzm(), zzdkrVar.zzn(), zzdkrVar, zzdkrVar);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcT)).booleanValue() && (zzc2 = this.zzu.zzc()) != null) {
                    zzc2.zzo(zzdkrVar.zzf());
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbW)).booleanValue()) {
                    zzfca zzfcaVar = this.zzb;
                    if (zzfcaVar.zzak && (keys = zzfcaVar.zzaj.keys()) != null) {
                        while (keys.hasNext()) {
                            String next = keys.next();
                            zzdkr zzdkrVar2 = this.zzo;
                            if (zzdkrVar2 == null) {
                                weakReference = null;
                            } else {
                                weakReference = (WeakReference) zzdkrVar2.zzl().get(next);
                            }
                            this.zzz.put(next, Boolean.FALSE);
                            if (weakReference != null && (view = (View) weakReference.get()) != null) {
                                zzaze zzazeVar = new zzaze(this.zzw, view);
                                this.zzA.add(zzazeVar);
                                zzazeVar.zzd(new zzdil(this, next));
                            }
                        }
                    }
                }
                if (zzdkrVar.zzi() != null) {
                    zzdkrVar.zzi().zzd(this.zzt);
                }
            }
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzai(zzdkr zzdkrVar) {
        this.zzf.zzC(zzdkrVar.zzf(), zzdkrVar.zzl());
        if (zzdkrVar.zzh() != null) {
            zzdkrVar.zzh().setClickable(false);
            zzdkrVar.zzh().removeAllViews();
        }
        if (zzdkrVar.zzi() != null) {
            zzdkrVar.zzi().zze(this.zzt);
        }
        this.zzo = null;
    }

    public static /* synthetic */ void zzt(zzdio zzdioVar, boolean z10) {
        zzdkr zzdkrVar = zzdioVar.zzo;
        if (zzdkrVar == null) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Ad should be associated with an ad view before calling recordCustomClickGesture()");
            return;
        }
        zzdioVar.zzf.zzq(null, zzdkrVar.zzf(), zzdioVar.zzo.zzl(), zzdioVar.zzo.zzm(), z10, zzdioVar.zzac(), 0);
    }

    public static /* synthetic */ void zzu(zzdio zzdioVar) {
        try {
            zzdit zzditVar = zzdioVar.zze;
            int zzc2 = zzditVar.zzc();
            if (zzc2 != 1) {
                if (zzc2 != 2) {
                    if (zzc2 != 3) {
                        if (zzc2 != 6) {
                            if (zzc2 != 7) {
                                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzg("Wrong native template id!");
                                return;
                            }
                            zzbmy zzg = zzdioVar.zzi.zzg();
                            if (zzg != null) {
                                zzg.zzg((zzbms) zzdioVar.zzm.zzb());
                                return;
                            }
                            return;
                        }
                        zzbid zzf = zzdioVar.zzi.zzf();
                        if (zzf != null) {
                            zzdioVar.zzad("Google", true);
                            zzf.zze((zzbij) zzdioVar.zzl.zzb());
                            return;
                        }
                        return;
                    }
                    zzbhw zzd = zzdioVar.zzi.zzd(zzditVar.zzA());
                    if (zzd != null) {
                        if (zzditVar.zzs() != null) {
                            zzdioVar.zzf("Google", true);
                        }
                        zzd.zze((zzbhj) zzdioVar.zzn.zzb());
                        return;
                    }
                    return;
                }
                zzbhn zza = zzdioVar.zzi.zza();
                if (zza != null) {
                    zzdioVar.zzad("Google", true);
                    zza.zze((zzbhe) zzdioVar.zzk.zzb());
                    return;
                }
                return;
            }
            zzbhq zzb = zzdioVar.zzi.zzb();
            if (zzb != null) {
                zzdioVar.zzad("Google", true);
                zzb.zze((zzbhg) zzdioVar.zzj.zzb());
            }
        } catch (RemoteException e10) {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("RemoteException when notifyAdLoad is called", e10);
        }
    }

    public static /* synthetic */ void zzv(zzdio zzdioVar, View view, boolean z10, int i10) {
        zzdkr zzdkrVar = zzdioVar.zzo;
        if (zzdkrVar == null) {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Ad should be associated with an ad view before calling performClickForCustomGesture()");
            return;
        }
        zzdioVar.zzf.zzq(view, zzdkrVar.zzf(), zzdioVar.zzo.zzl(), zzdioVar.zzo.zzm(), z10, zzdioVar.zzac(), i10);
    }

    public static /* synthetic */ void zzw(zzdio zzdioVar) {
        zzdioVar.zzf.zzk();
        zzdioVar.zze.zzI();
    }

    public final void zzA(View view) {
        zzedh zzu = this.zze.zzu();
        if (this.zzh.zzd() && zzu != null && view != null) {
            com.google.android.gms.ads.internal.zzv.zzC().zzg(zzu.zza(), view);
        }
    }

    public final synchronized void zzB() {
        this.zzf.zzj();
    }

    public final synchronized void zzC(View view, Map map, Map map2, boolean z10) {
        if (this.zzq) {
            zzae(view, map, map2);
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbW)).booleanValue() && this.zzb.zzak) {
            Map map3 = this.zzz;
            for (String str : map3.keySet()) {
                if (!((Boolean) map3.get(str)).booleanValue()) {
                    break;
                }
            }
        }
        if (!z10) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzeh)).booleanValue() && map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    View view2 = (View) ((WeakReference) entry.getValue()).get();
                    if (view2 != null && zzZ(view2)) {
                        zzaf(view, map, map2);
                        return;
                    }
                }
            }
            return;
        }
        zzaf(view, map, map2);
        zzae(view, map, map2);
    }

    public final synchronized void zzD(@Nullable com.google.android.gms.ads.internal.client.zzdj zzdjVar) {
        this.zzf.zzl(zzdjVar);
    }

    public final synchronized void zzE(View view, View view2, Map map, Map map2, boolean z10) {
        zzcfg zzs;
        this.zzg.zzc(this.zzo);
        this.zzf.zzm(view, view2, map, map2, z10, zzac());
        if (this.zzs) {
            zzdit zzditVar = this.zze;
            if (zzditVar.zzs() != null && (zzs = zzditVar.zzs()) != null) {
                zzs.zzd("onSdkAdUserInteractionClick", new ArrayMap());
            }
        }
    }

    public final synchronized void zzF(@Nullable final View view, final int i10) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzlW)).booleanValue()) {
            return;
        }
        zzdkr zzdkrVar = this.zzo;
        if (zzdkrVar == null) {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Ad should be associated with an ad view before calling performClickForCustomGesture()");
            return;
        }
        final boolean z10 = zzdkrVar instanceof zzdjn;
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdii
            @Override // java.lang.Runnable
            public final void run() {
                zzdio.zzv(zzdio.this, view, z10, i10);
            }
        });
    }

    public final synchronized void zzG(String str) {
        this.zzf.zzn(str);
    }

    public final synchronized void zzH(Bundle bundle) {
        this.zzf.zzo(bundle);
    }

    public final synchronized void zzI() {
        zzdkr zzdkrVar = this.zzo;
        if (zzdkrVar == null) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Ad should be associated with an ad view before calling recordCustomClickGesture()");
            return;
        }
        final boolean z10 = zzdkrVar instanceof zzdjn;
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdik
            @Override // java.lang.Runnable
            public final void run() {
                zzdio.zzt(zzdio.this, z10);
            }
        });
    }

    public final void zzJ(Bundle bundle) {
        final zzcfg zzs = this.zze.zzs();
        if (zzs == null) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Video webview is null");
            return;
        }
        try {
            final JSONObject jSONObject = new JSONObject();
            for (String str : bundle.keySet()) {
                jSONObject.put(str, bundle.get(str));
            }
            this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdih
                @Override // java.lang.Runnable
                public final void run() {
                    zzfyq zzfyqVar = zzdio.zzc;
                    zzcfg.this.zze("onVideoEvent", jSONObject);
                }
            });
        } catch (JSONException e10) {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error reading event signals", e10);
        }
    }

    public final synchronized void zzK() {
        if (this.zzq) {
            return;
        }
        this.zzf.zzu();
    }

    public final void zzL(View view) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfG)).booleanValue()) {
            zzdit zzditVar = this.zze;
            if (zzditVar.zzc() != 3) {
                zzcak zzp = zzditVar.zzp();
                if (zzp == null) {
                    return;
                }
                zzgdn.zzr(zzp, new zzdin(this, view), this.zzd);
                return;
            }
        }
        zzag(view, this.zze.zzu());
    }

    public final synchronized void zzM(View view, MotionEvent motionEvent, View view2) {
        this.zzf.zzv(view, motionEvent, view2);
    }

    public final synchronized void zzN(Bundle bundle) {
        this.zzf.zzw(bundle);
    }

    public final synchronized void zzO(View view) {
        this.zzf.zzx(view);
    }

    public final synchronized void zzP() {
        this.zzf.zzy();
    }

    public final synchronized void zzQ(com.google.android.gms.ads.internal.client.zzdf zzdfVar) {
        this.zzf.zzz(zzdfVar);
    }

    public final synchronized void zzR(com.google.android.gms.ads.internal.client.zzdt zzdtVar) {
        this.zzy.zza(zzdtVar);
    }

    public final synchronized void zzS(zzbig zzbigVar) {
        this.zzf.zzA(zzbigVar);
    }

    public final synchronized void zzT(final zzdkr zzdkrVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbU)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdid
                @Override // java.lang.Runnable
                public final void run() {
                    zzdio.this.zzah(zzdkrVar);
                }
            });
        } else {
            zzah(zzdkrVar);
        }
    }

    public final synchronized void zzU(final zzdkr zzdkrVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbU)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdie
                @Override // java.lang.Runnable
                public final void run() {
                    zzdio.this.zzai(zzdkrVar);
                }
            });
        } else {
            zzai(zzdkrVar);
        }
    }

    public final boolean zzV() {
        return this.zzh.zze();
    }

    public final synchronized boolean zzW() {
        return this.zzf.zzD();
    }

    public final synchronized boolean zzX() {
        return this.zzf.zzE();
    }

    public final boolean zzY() {
        return this.zzh.zzd();
    }

    public final synchronized int zza() {
        return this.zzf.zza();
    }

    public final synchronized boolean zzaa(Bundle bundle) {
        if (this.zzq) {
            return true;
        }
        boolean zzF = this.zzf.zzF(bundle);
        this.zzq = zzF;
        return zzF;
    }

    @Override // com.google.android.gms.internal.ads.zzcra
    public final synchronized void zzb() {
        this.zzp = true;
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdij
            @Override // java.lang.Runnable
            public final void run() {
                zzdio.zzw(zzdio.this);
            }
        });
        super.zzb();
    }

    public final zzdiq zzc() {
        return this.zzx;
    }

    @Nullable
    public final zzedh zzf(String str, boolean z10) {
        boolean z11;
        String str2;
        zzedd zzeddVar;
        zzede zzedeVar;
        String str3;
        zzdiy zzdiyVar = this.zzh;
        if (zzdiyVar.zzd() && !TextUtils.isEmpty(str)) {
            zzdit zzditVar = this.zze;
            zzcfg zzr = zzditVar.zzr();
            zzcfg zzs = zzditVar.zzs();
            if (zzr == null && zzs == null) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid display and video webview are null. Skipping initialization.");
                return null;
            }
            zzdiyVar.zza();
            int zzc2 = zzdiyVar.zza().zzc();
            int i11 = zzc2 - 1;
            boolean z12 = false;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (zzc2 != 1) {
                        if (zzc2 != 2) {
                            str3 = GrsBaseInfo.CountryCodeSource.UNKNOWN;
                        } else {
                            str3 = "DISPLAY";
                        }
                    } else {
                        str3 = "VIDEO";
                    }
                    int i12 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Unknown omid media type: " + str3 + ". Not initializing Omid.");
                    return null;
                } else if (zzr != null) {
                    z11 = false;
                    z12 = true;
                } else {
                    int i13 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid media type was display but there was no display webview.");
                    return null;
                }
            } else if (zzs != null) {
                z11 = true;
            } else {
                int i14 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid media type was video but there was no video webview.");
            }
            if (z12) {
                str2 = null;
            } else {
                str2 = "javascript";
                zzr = zzs;
            }
            if (zzr != null) {
                if (!com.google.android.gms.ads.internal.zzv.zzC().zzl(this.zzw)) {
                    int i15 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to initialize omid in InternalNativeAd");
                    return null;
                }
                VersionInfoParcel versionInfoParcel = this.zzv;
                String str4 = versionInfoParcel.buddyApkVersion + "." + versionInfoParcel.clientJarVersion;
                if (z11) {
                    zzeddVar = zzedd.VIDEO;
                    zzedeVar = zzede.DEFINED_BY_JAVASCRIPT;
                } else {
                    zzeddVar = zzedd.NATIVE_DISPLAY;
                    if (zzditVar.zzc() == 3) {
                        zzedeVar = zzede.UNSPECIFIED;
                    } else {
                        zzedeVar = zzede.ONE_PIXEL;
                    }
                }
                zzedh zzb = com.google.android.gms.ads.internal.zzv.zzC().zzb(str4, zzr.zzG(), "", "javascript", str2, str, zzedeVar, zzeddVar, this.zzb.zzal);
                if (zzb == null) {
                    int i16 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to create omid session in InternalNativeAd");
                    return null;
                }
                zzditVar.zzW(zzb);
                zzr.zzat(zzb);
                if (z11) {
                    zzfll zza = zzb.zza();
                    if (zzs != null) {
                        com.google.android.gms.ads.internal.zzv.zzC().zzj(zza, zzs.zzF());
                    }
                    this.zzs = true;
                }
                if (z10) {
                    com.google.android.gms.ads.internal.zzv.zzC().zzk(zzb.zza());
                    zzr.zzd("onSdkLoaded", new ArrayMap());
                }
                return zzb;
            }
            int i17 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Webview is null in InternalNativeAd");
            return null;
        }
        return null;
    }

    public final String zzg() {
        return this.zzh.zzb();
    }

    public final synchronized JSONObject zzi(View view, Map map, Map map2) {
        return this.zzf.zzf(view, map, map2, zzac());
    }

    public final synchronized JSONObject zzj(View view, Map map, Map map2) {
        return this.zzf.zzg(view, map, map2, zzac());
    }

    @Override // com.google.android.gms.internal.ads.zzcra
    @AnyThread
    public final void zzk() {
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzdif
            @Override // java.lang.Runnable
            public final void run() {
                zzdio.zzu(zzdio.this);
            }
        };
        Executor executor = this.zzd;
        executor.execute(runnable);
        if (this.zze.zzc() != 7) {
            final zzdjb zzdjbVar = this.zzf;
            Objects.requireNonNull(zzdjbVar);
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdig
                @Override // java.lang.Runnable
                public final void run() {
                    zzdjb.this.zzs();
                }
            });
        }
        super.zzk();
    }
}
