package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdit {
    private int zza;
    @Nullable
    private com.google.android.gms.ads.internal.client.zzed zzb;
    @Nullable
    private zzbgi zzc;
    @Nullable
    private View zzd;
    @Nullable
    private List zze;
    @Nullable
    private com.google.android.gms.ads.internal.client.zzfa zzg;
    @Nullable
    private Bundle zzh;
    @Nullable
    private zzcfg zzi;
    @Nullable
    private zzcfg zzj;
    @Nullable
    private zzcfg zzk;
    @Nullable
    private zzedh zzl;
    @Nullable
    private com.google.common.util.concurrent.e zzm;
    @Nullable
    private zzcak zzn;
    @Nullable
    private View zzo;
    @Nullable
    private View zzp;
    @Nullable
    private IObjectWrapper zzq;
    private double zzr;
    @Nullable
    private zzbgp zzs;
    @Nullable
    private zzbgp zzt;
    @Nullable
    private String zzu;
    private float zzx;
    @Nullable
    private String zzy;
    private final SimpleArrayMap zzv = new SimpleArrayMap();
    private final SimpleArrayMap zzw = new SimpleArrayMap();
    private List zzf = Collections.emptyList();

    @Nullable
    public static zzdit zzag(zzbqb zzbqbVar) {
        try {
            zzdis zzak = zzak(zzbqbVar.zzg(), null);
            zzbgi zzh = zzbqbVar.zzh();
            String zzo = zzbqbVar.zzo();
            List zzr = zzbqbVar.zzr();
            String zzm = zzbqbVar.zzm();
            Bundle zzf = zzbqbVar.zzf();
            String zzn = zzbqbVar.zzn();
            IObjectWrapper zzl = zzbqbVar.zzl();
            String zzq = zzbqbVar.zzq();
            String zzp = zzbqbVar.zzp();
            double zze = zzbqbVar.zze();
            zzbgp zzi = zzbqbVar.zzi();
            zzdit zzditVar = new zzdit();
            zzditVar.zza = 2;
            zzditVar.zzb = zzak;
            zzditVar.zzc = zzh;
            zzditVar.zzd = (View) zzam(zzbqbVar.zzj());
            zzditVar.zzZ("headline", zzo);
            zzditVar.zze = zzr;
            zzditVar.zzZ("body", zzm);
            zzditVar.zzh = zzf;
            zzditVar.zzZ("call_to_action", zzn);
            zzditVar.zzo = (View) zzam(zzbqbVar.zzk());
            zzditVar.zzq = zzl;
            zzditVar.zzZ("store", zzq);
            zzditVar.zzZ("price", zzp);
            zzditVar.zzr = zze;
            zzditVar.zzs = zzi;
            return zzditVar;
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to get native ad from app install ad mapper", e10);
            return null;
        }
    }

    @Nullable
    public static zzdit zzah(zzbqc zzbqcVar) {
        try {
            zzdis zzak = zzak(zzbqcVar.zzf(), null);
            zzbgi zzg = zzbqcVar.zzg();
            String zzo = zzbqcVar.zzo();
            List zzp = zzbqcVar.zzp();
            String zzm = zzbqcVar.zzm();
            Bundle zze = zzbqcVar.zze();
            String zzn = zzbqcVar.zzn();
            IObjectWrapper zzk = zzbqcVar.zzk();
            String zzl = zzbqcVar.zzl();
            zzbgp zzh = zzbqcVar.zzh();
            zzdit zzditVar = new zzdit();
            zzditVar.zza = 1;
            zzditVar.zzb = zzak;
            zzditVar.zzc = zzg;
            zzditVar.zzd = (View) zzam(zzbqcVar.zzi());
            zzditVar.zzZ("headline", zzo);
            zzditVar.zze = zzp;
            zzditVar.zzZ("body", zzm);
            zzditVar.zzh = zze;
            zzditVar.zzZ("call_to_action", zzn);
            zzditVar.zzo = (View) zzam(zzbqcVar.zzj());
            zzditVar.zzq = zzk;
            zzditVar.zzZ("advertiser", zzl);
            zzditVar.zzt = zzh;
            return zzditVar;
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to get native ad from content ad mapper", e10);
            return null;
        }
    }

    @Nullable
    public static zzdit zzai(zzbqb zzbqbVar) {
        try {
            return zzal(zzak(zzbqbVar.zzg(), null), zzbqbVar.zzh(), (View) zzam(zzbqbVar.zzj()), zzbqbVar.zzo(), zzbqbVar.zzr(), zzbqbVar.zzm(), zzbqbVar.zzf(), zzbqbVar.zzn(), (View) zzam(zzbqbVar.zzk()), zzbqbVar.zzl(), zzbqbVar.zzq(), zzbqbVar.zzp(), zzbqbVar.zze(), zzbqbVar.zzi(), null, 0.0f);
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to get native ad assets from app install ad mapper", e10);
            return null;
        }
    }

    @Nullable
    public static zzdit zzaj(zzbqc zzbqcVar) {
        try {
            return zzal(zzak(zzbqcVar.zzf(), null), zzbqcVar.zzg(), (View) zzam(zzbqcVar.zzi()), zzbqcVar.zzo(), zzbqcVar.zzp(), zzbqcVar.zzm(), zzbqcVar.zze(), zzbqcVar.zzn(), (View) zzam(zzbqcVar.zzj()), zzbqcVar.zzk(), null, null, -1.0d, zzbqcVar.zzh(), zzbqcVar.zzl(), 0.0f);
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to get native ad assets from content ad mapper", e10);
            return null;
        }
    }

    @Nullable
    private static zzdis zzak(@Nullable com.google.android.gms.ads.internal.client.zzed zzedVar, @Nullable zzbqf zzbqfVar) {
        if (zzedVar == null) {
            return null;
        }
        return new zzdis(zzedVar, zzbqfVar);
    }

    private static zzdit zzal(@Nullable com.google.android.gms.ads.internal.client.zzed zzedVar, zzbgi zzbgiVar, @Nullable View view, String str, List list, String str2, Bundle bundle, String str3, @Nullable View view2, IObjectWrapper iObjectWrapper, @Nullable String str4, @Nullable String str5, double d10, zzbgp zzbgpVar, @Nullable String str6, float f10) {
        zzdit zzditVar = new zzdit();
        zzditVar.zza = 6;
        zzditVar.zzb = zzedVar;
        zzditVar.zzc = zzbgiVar;
        zzditVar.zzd = view;
        zzditVar.zzZ("headline", str);
        zzditVar.zze = list;
        zzditVar.zzZ("body", str2);
        zzditVar.zzh = bundle;
        zzditVar.zzZ("call_to_action", str3);
        zzditVar.zzo = view2;
        zzditVar.zzq = iObjectWrapper;
        zzditVar.zzZ("store", str4);
        zzditVar.zzZ("price", str5);
        zzditVar.zzr = d10;
        zzditVar.zzs = zzbgpVar;
        zzditVar.zzZ("advertiser", str6);
        zzditVar.zzR(f10);
        return zzditVar;
    }

    @Nullable
    private static Object zzam(@Nullable IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return null;
        }
        return ObjectWrapper.unwrap(iObjectWrapper);
    }

    @Nullable
    public static zzdit zzt(zzbqf zzbqfVar) {
        try {
            return zzal(zzak(zzbqfVar.zzj(), zzbqfVar), zzbqfVar.zzk(), (View) zzam(zzbqfVar.zzm()), zzbqfVar.zzs(), zzbqfVar.zzv(), zzbqfVar.zzq(), zzbqfVar.zzi(), zzbqfVar.zzr(), (View) zzam(zzbqfVar.zzn()), zzbqfVar.zzo(), zzbqfVar.zzu(), zzbqfVar.zzt(), zzbqfVar.zze(), zzbqfVar.zzl(), zzbqfVar.zzp(), zzbqfVar.zzf());
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to get native ad assets from unified ad mapper", e10);
            return null;
        }
    }

    @Nullable
    public final synchronized String zzA() {
        return this.zzu;
    }

    @Nullable
    public final synchronized String zzB() {
        return zzF("headline");
    }

    @Nullable
    public final synchronized String zzC() {
        return this.zzy;
    }

    @Nullable
    public final synchronized String zzD() {
        return zzF("price");
    }

    @Nullable
    public final synchronized String zzE() {
        return zzF("store");
    }

    @Nullable
    public final synchronized String zzF(String str) {
        return (String) this.zzw.get(str);
    }

    @Nullable
    public final synchronized List zzG() {
        return this.zze;
    }

    public final synchronized List zzH() {
        return this.zzf;
    }

    public final synchronized void zzI() {
        try {
            zzcfg zzcfgVar = this.zzi;
            if (zzcfgVar != null) {
                zzcfgVar.destroy();
                this.zzi = null;
            }
            zzcfg zzcfgVar2 = this.zzj;
            if (zzcfgVar2 != null) {
                zzcfgVar2.destroy();
                this.zzj = null;
            }
            zzcfg zzcfgVar3 = this.zzk;
            if (zzcfgVar3 != null) {
                zzcfgVar3.destroy();
                this.zzk = null;
            }
            com.google.common.util.concurrent.e eVar = this.zzm;
            if (eVar != null) {
                eVar.cancel(false);
                this.zzm = null;
            }
            zzcak zzcakVar = this.zzn;
            if (zzcakVar != null) {
                zzcakVar.cancel(false);
                this.zzn = null;
            }
            this.zzl = null;
            this.zzv.clear();
            this.zzw.clear();
            this.zzb = null;
            this.zzc = null;
            this.zzd = null;
            this.zze = null;
            this.zzh = null;
            this.zzo = null;
            this.zzp = null;
            this.zzq = null;
            this.zzs = null;
            this.zzt = null;
            this.zzu = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void zzJ(zzbgi zzbgiVar) {
        this.zzc = zzbgiVar;
    }

    public final synchronized void zzK(String str) {
        this.zzu = str;
    }

    public final synchronized void zzL(@Nullable com.google.android.gms.ads.internal.client.zzfa zzfaVar) {
        this.zzg = zzfaVar;
    }

    public final synchronized void zzM(zzbgp zzbgpVar) {
        this.zzs = zzbgpVar;
    }

    public final synchronized void zzN(String str, zzbgc zzbgcVar) {
        if (zzbgcVar == null) {
            this.zzv.remove(str);
        } else {
            this.zzv.put(str, zzbgcVar);
        }
    }

    public final synchronized void zzO(zzcfg zzcfgVar) {
        this.zzj = zzcfgVar;
    }

    public final synchronized void zzP(List list) {
        this.zze = list;
    }

    public final synchronized void zzQ(zzbgp zzbgpVar) {
        this.zzt = zzbgpVar;
    }

    public final synchronized void zzR(float f10) {
        this.zzx = f10;
    }

    public final synchronized void zzS(List list) {
        this.zzf = list;
    }

    public final synchronized void zzT(zzcfg zzcfgVar) {
        this.zzk = zzcfgVar;
    }

    public final synchronized void zzU(com.google.common.util.concurrent.e eVar) {
        this.zzm = eVar;
    }

    public final synchronized void zzV(@Nullable String str) {
        this.zzy = str;
    }

    public final synchronized void zzW(zzedh zzedhVar) {
        this.zzl = zzedhVar;
    }

    public final synchronized void zzX(zzcak zzcakVar) {
        this.zzn = zzcakVar;
    }

    public final synchronized void zzY(double d10) {
        this.zzr = d10;
    }

    public final synchronized void zzZ(String str, @Nullable String str2) {
        if (str2 == null) {
            this.zzw.remove(str);
        } else {
            this.zzw.put(str, str2);
        }
    }

    public final synchronized double zza() {
        return this.zzr;
    }

    public final synchronized void zzaa(int i10) {
        this.zza = i10;
    }

    public final synchronized void zzab(com.google.android.gms.ads.internal.client.zzed zzedVar) {
        this.zzb = zzedVar;
    }

    public final synchronized void zzac(View view) {
        this.zzo = view;
    }

    public final synchronized void zzad(zzcfg zzcfgVar) {
        this.zzi = zzcfgVar;
    }

    public final synchronized void zzae(View view) {
        this.zzp = view;
    }

    public final synchronized boolean zzaf() {
        if (this.zzj != null) {
            return true;
        }
        return false;
    }

    public final synchronized float zzb() {
        return this.zzx;
    }

    public final synchronized int zzc() {
        return this.zza;
    }

    public final synchronized Bundle zzd() {
        try {
            if (this.zzh == null) {
                this.zzh = new Bundle();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.zzh;
    }

    @Nullable
    public final synchronized View zze() {
        return this.zzd;
    }

    @Nullable
    public final synchronized View zzf() {
        return this.zzo;
    }

    @Nullable
    public final synchronized View zzg() {
        return this.zzp;
    }

    @Nullable
    public final synchronized SimpleArrayMap zzh() {
        return this.zzv;
    }

    public final synchronized SimpleArrayMap zzi() {
        return this.zzw;
    }

    @Nullable
    public final synchronized com.google.android.gms.ads.internal.client.zzed zzj() {
        return this.zzb;
    }

    @Nullable
    public final synchronized com.google.android.gms.ads.internal.client.zzfa zzk() {
        return this.zzg;
    }

    @Nullable
    public final synchronized zzbgi zzl() {
        return this.zzc;
    }

    @Nullable
    public final zzbgp zzm() {
        List list = this.zze;
        if (list != null && !list.isEmpty()) {
            Object obj = this.zze.get(0);
            if (obj instanceof IBinder) {
                return zzbgo.zzh((IBinder) obj);
            }
            return null;
        }
        return null;
    }

    @Nullable
    public final synchronized zzbgp zzn() {
        return this.zzs;
    }

    @Nullable
    public final synchronized zzbgp zzo() {
        return this.zzt;
    }

    @Nullable
    public final synchronized zzcak zzp() {
        return this.zzn;
    }

    @Nullable
    public final synchronized zzcfg zzq() {
        return this.zzj;
    }

    @Nullable
    public final synchronized zzcfg zzr() {
        return this.zzk;
    }

    @Nullable
    public final synchronized zzcfg zzs() {
        return this.zzi;
    }

    @Nullable
    public final synchronized zzedh zzu() {
        return this.zzl;
    }

    @Nullable
    public final synchronized IObjectWrapper zzv() {
        return this.zzq;
    }

    @Nullable
    public final synchronized com.google.common.util.concurrent.e zzw() {
        return this.zzm;
    }

    @Nullable
    public final synchronized String zzx() {
        return zzF("advertiser");
    }

    @Nullable
    public final synchronized String zzy() {
        return zzF("body");
    }

    @Nullable
    public final synchronized String zzz() {
        return zzF("call_to_action");
    }
}
