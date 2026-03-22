package com.google.android.gms.ads.nonagon.signalgeneration;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzbv;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzavu;
import com.google.android.gms.internal.ads.zzavv;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbej;
import com.google.android.gms.internal.ads.zzbex;
import com.google.android.gms.internal.ads.zzbfj;
import com.google.android.gms.internal.ads.zzbuf;
import com.google.android.gms.internal.ads.zzbui;
import com.google.android.gms.internal.ads.zzbyz;
import com.google.android.gms.internal.ads.zzbze;
import com.google.android.gms.internal.ads.zzcaf;
import com.google.android.gms.internal.ads.zzche;
import com.google.android.gms.internal.ads.zzcvf;
import com.google.android.gms.internal.ads.zzdbu;
import com.google.android.gms.internal.ads.zzdny;
import com.google.android.gms.internal.ads.zzdso;
import com.google.android.gms.internal.ads.zzfcu;
import com.google.android.gms.internal.ads.zzfda;
import com.google.android.gms.internal.ads.zzfdv;
import com.google.android.gms.internal.ads.zzfhu;
import com.google.android.gms.internal.ads.zzfhx;
import com.google.android.gms.internal.ads.zzfjy;
import com.google.android.gms.internal.ads.zzfve;
import com.google.android.gms.internal.ads.zzfwg;
import com.google.android.gms.internal.ads.zzgct;
import com.google.android.gms.internal.ads.zzgcu;
import com.google.android.gms.internal.ads.zzgde;
import com.google.android.gms.internal.ads.zzgdn;
import com.google.android.gms.internal.ads.zzgdy;
import com.google.common.util.concurrent.e;
import com.huawei.hms.framework.common.ContainerUtils;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzau extends zzbyz {
    protected static final List zza = new ArrayList(Arrays.asList("/aclk", "/pcs/click", "/dbm/clk"));
    protected static final List zzb = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));
    protected static final List zzc = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion", "/dbm/ad"));
    protected static final List zzd = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));
    public static final /* synthetic */ int zze = 0;
    private final List zzB;
    private final List zzC;
    private final List zzD;
    private final List zzE;
    private final zzbej zzI;
    private final zzo zzJ;
    private final zzf zzK;
    private final zzche zzf;
    private Context zzg;
    private final zzavu zzh;
    private final zzfda zzi;
    private final zzfdv zzj;
    private final zzgdy zzk;
    private final ScheduledExecutorService zzl;
    @Nullable
    private zzbui zzm;
    private final zzdso zzp;
    private final zzfjy zzq;
    private final VersionInfoParcel zzy;
    private String zzz;
    private Point zzn = new Point();
    private Point zzo = new Point();
    private final AtomicInteger zzx = new AtomicInteger(0);
    private final AtomicBoolean zzF = new AtomicBoolean(false);
    private final AtomicBoolean zzG = new AtomicBoolean(false);
    private final AtomicInteger zzH = new AtomicInteger(0);
    private final boolean zzr = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhx)).booleanValue();
    private final boolean zzs = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhw)).booleanValue();
    private final boolean zzt = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhz)).booleanValue();
    private final boolean zzu = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhB)).booleanValue();
    private final String zzv = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhA);
    private final String zzw = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhC);
    private final String zzA = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhD);

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzau(zzche zzcheVar, Context context, zzavu zzavuVar, zzfdv zzfdvVar, zzgdy zzgdyVar, ScheduledExecutorService scheduledExecutorService, zzdso zzdsoVar, zzfjy zzfjyVar, VersionInfoParcel versionInfoParcel, zzbej zzbejVar, zzfda zzfdaVar, zzo zzoVar, zzf zzfVar) {
        List list;
        this.zzf = zzcheVar;
        this.zzg = context;
        this.zzh = zzavuVar;
        this.zzi = zzfdaVar;
        this.zzj = zzfdvVar;
        this.zzk = zzgdyVar;
        this.zzl = scheduledExecutorService;
        this.zzp = zzdsoVar;
        this.zzq = zzfjyVar;
        this.zzy = versionInfoParcel;
        this.zzI = zzbejVar;
        this.zzJ = zzoVar;
        this.zzK = zzfVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhE)).booleanValue()) {
            this.zzB = zzZ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhF));
            this.zzC = zzZ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhG));
            this.zzD = zzZ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhH));
            list = zzZ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhI));
        } else {
            this.zzB = zza;
            this.zzC = zzb;
            this.zzD = zzc;
            list = zzd;
        }
        this.zzE = list;
    }

    public static /* synthetic */ ArrayList zzC(zzau zzauVar, List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (zzauVar.zzQ(uri) && !TextUtils.isEmpty(str)) {
                arrayList.add(zzaa(uri, "nas", str));
            } else {
                arrayList.add(uri);
            }
        }
        return arrayList;
    }

    public static /* synthetic */ ArrayList zzD(zzau zzauVar, List list, IObjectWrapper iObjectWrapper) {
        String str;
        zzavu zzavuVar = zzauVar.zzh;
        if (zzavuVar.zzc() != null) {
            str = zzavuVar.zzc().zzh(zzauVar.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null);
        } else {
            str = "";
        }
        if (!TextUtils.isEmpty(str)) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Uri uri = (Uri) it.next();
                if (!zzauVar.zzQ(uri)) {
                    String valueOf = String.valueOf(uri);
                    int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Not a Google URL: ".concat(valueOf));
                    arrayList.add(uri);
                } else {
                    arrayList.add(zzaa(uri, "ms", str));
                }
            }
            if (!arrayList.isEmpty()) {
                return arrayList;
            }
            throw new Exception("Empty impression URLs result.");
        }
        throw new Exception("Failed to get view signals.");
    }

    public static /* synthetic */ void zzH(zzau zzauVar, zzdny[] zzdnyVarArr) {
        zzdny zzdnyVar = zzdnyVarArr[0];
        if (zzdnyVar != null) {
            zzauVar.zzj.zzb(zzgdn.zzh(zzdnyVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzJ(zzau zzauVar, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (zzauVar.zzP((Uri) it.next())) {
                zzauVar.zzx.getAndIncrement();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final zzac zzR(Context context, String str, String str2, com.google.android.gms.ads.internal.client.zzr zzrVar, com.google.android.gms.ads.internal.client.zzm zzmVar, int i10, @Nullable String str3, Bundle bundle, @Nullable zzbze zzbzeVar) {
        String str4;
        com.google.android.gms.ads.internal.client.zzm zzmVar2;
        com.google.android.gms.ads.internal.client.zzr zzrVar2;
        char c10;
        zzfcu zzfcuVar = new zzfcu();
        if ("REWARDED".equals(str2)) {
            zzfcuVar.zzq().zza(2);
        } else if ("REWARDED_INTERSTITIAL".equals(str2)) {
            zzfcuVar.zzq().zza(3);
        }
        zzab zzo = this.zzf.zzo();
        zzcvf zzcvfVar = new zzcvf();
        zzcvfVar.zzf(context);
        if (str == null) {
            str4 = HandleInvocationsFromAdViewer.KEY_AD_UNIT_ID;
        } else {
            str4 = str;
        }
        zzfcuVar.zzu(str4);
        if (zzmVar == null) {
            zzmVar2 = new com.google.android.gms.ads.internal.client.zzn().zza();
        } else {
            zzmVar2 = zzmVar;
        }
        zzfcuVar.zzJ(zzmVar2);
        if (zzrVar == null) {
            switch (str2.hashCode()) {
                case -1999289321:
                    if (str2.equals("NATIVE")) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -428325382:
                    if (str2.equals("APP_OPEN_AD")) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 543046670:
                    if (str2.equals("REWARDED")) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1854800829:
                    if (str2.equals("REWARDED_INTERSTITIAL")) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1951953708:
                    if (str2.equals("BANNER")) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            if (c10 != 0) {
                if (c10 != 1 && c10 != 2) {
                    if (c10 != 3) {
                        if (c10 != 4) {
                            zzrVar2 = new com.google.android.gms.ads.internal.client.zzr();
                        } else {
                            zzrVar2 = com.google.android.gms.ads.internal.client.zzr.zzb();
                        }
                    } else {
                        zzrVar2 = com.google.android.gms.ads.internal.client.zzr.zzc();
                    }
                } else {
                    zzrVar2 = com.google.android.gms.ads.internal.client.zzr.zzd();
                }
            } else {
                zzrVar2 = new com.google.android.gms.ads.internal.client.zzr(context, AdSize.BANNER);
            }
        } else {
            zzrVar2 = zzrVar;
        }
        zzfcuVar.zzt(zzrVar2);
        zzfcuVar.zzA(true);
        zzfcuVar.zzB(bundle);
        zzcvfVar.zzk(zzfcuVar.zzL());
        zzcvfVar.zzi(i10);
        zzo.zza(zzcvfVar.zzl());
        zzax zzaxVar = new zzax();
        zzaxVar.zzb(str2);
        zzaxVar.zzc(str3);
        zzaxVar.zzd(zzbzeVar);
        zzo.zzb(new zzaz(zzaxVar, null));
        new zzdbu();
        return zzo.zzc();
    }

    private final e zzS(final String str) {
        final zzdny[] zzdnyVarArr = new zzdny[1];
        e zza2 = this.zzj.zza();
        zzgcu zzgcuVar = new zzgcu() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzaf
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final e zza(Object obj) {
                return zzau.zzx(zzau.this, zzdnyVarArr, str, (zzdny) obj);
            }
        };
        zzgdy zzgdyVar = this.zzk;
        e zzn = zzgdn.zzn(zza2, zzgcuVar, zzgdyVar);
        zzn.addListener(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzag
            @Override // java.lang.Runnable
            public final void run() {
                zzau.zzH(zzau.this, zzdnyVarArr);
            }
        }, zzgdyVar);
        return (zzgde) zzgdn.zze((zzgde) zzgdn.zzm((zzgde) zzgdn.zzo(zzgde.zzw(zzn), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhV)).intValue(), TimeUnit.MILLISECONDS, this.zzl), new zzfve() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzam
            @Override // com.google.android.gms.internal.ads.zzfve
            public final Object apply(Object obj) {
                int i10 = zzau.zze;
                return ((JSONObject) obj).optString("nas");
            }
        }, zzgdyVar), Exception.class, new zzfve() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzan
            @Override // com.google.android.gms.internal.ads.zzfve
            public final Object apply(Object obj) {
                int i10 = zzau.zze;
                int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", (Exception) obj);
                return null;
            }
        }, zzgdyVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzT() {
        e zzb2;
        if (((Boolean) zzbfj.zze.zze()).booleanValue()) {
            this.zzJ.zze();
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzlz)).booleanValue()) {
            zzb2 = zzgdn.zzk(new zzgct() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzad
                @Override // com.google.android.gms.internal.ads.zzgct
                public final e zza() {
                    e zzb3;
                    zzb3 = r0.zzR(zzau.this.zzg, null, AdFormat.BANNER.name(), null, null, 0, null, new Bundle(), null).zzb();
                    return zzb3;
                }
            }, zzcaf.zza);
        } else {
            zzb2 = zzR(this.zzg, null, AdFormat.BANNER.name(), null, null, 0, null, new Bundle(), null).zzb();
        }
        zzgdn.zzr(zzb2, new zzat(this), this.zzf.zzA());
    }

    private final void zzU() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjY)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkb)).booleanValue()) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkf)).booleanValue() || !this.zzF.getAndSet(true)) {
                    zzT();
                }
            }
        }
    }

    private final void zzV(List list, final IObjectWrapper iObjectWrapper, zzbuf zzbufVar, boolean z10) {
        e zzb2;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhU)).booleanValue()) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("The updating URL feature is not enabled.");
            try {
                zzbufVar.zze("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
                return;
            }
        }
        Iterator it = list.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            if (zzP((Uri) it.next())) {
                i11++;
            }
        }
        if (i11 > 1) {
            String valueOf = String.valueOf(list);
            int i12 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Multiple google urls found: ".concat(valueOf));
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            final Uri uri = (Uri) it2.next();
            if (!zzP(uri)) {
                String valueOf2 = String.valueOf(uri);
                int i13 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Not a Google URL: ".concat(valueOf2));
                zzb2 = zzgdn.zzh(uri);
            } else {
                zzgdy zzgdyVar = this.zzk;
                zzb2 = zzgdyVar.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzah
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzau.zzn(zzau.this, uri, iObjectWrapper);
                    }
                });
                if (zzY()) {
                    zzb2 = zzgdn.zzn(zzb2, new zzgcu() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzai
                        @Override // com.google.android.gms.internal.ads.zzgcu
                        public final e zza(Object obj) {
                            e zzm;
                            zzm = zzgdn.zzm(r0.zzS("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new zzfve() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzaj
                                @Override // com.google.android.gms.internal.ads.zzfve
                                public final Object apply(Object obj2) {
                                    return zzau.zzd(zzau.this, r2, (String) obj2);
                                }
                            }, zzau.this.zzk);
                            return zzm;
                        }
                    }, zzgdyVar);
                } else {
                    int i14 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Asset view map is empty.");
                }
            }
            arrayList.add(zzb2);
        }
        zzgdn.zzr(zzgdn.zzd(arrayList), new zzas(this, zzbufVar, z10), this.zzf.zzA());
    }

    private final void zzW(final List list, final IObjectWrapper iObjectWrapper, zzbuf zzbufVar, boolean z10) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhU)).booleanValue()) {
            try {
                zzbufVar.zze("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e10) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
                return;
            }
        }
        zzgdy zzgdyVar = this.zzk;
        e zzb2 = zzgdyVar.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzao
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzau.zzD(zzau.this, list, iObjectWrapper);
            }
        });
        if (zzY()) {
            zzb2 = zzgdn.zzn(zzb2, new zzgcu() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzap
                @Override // com.google.android.gms.internal.ads.zzgcu
                public final e zza(Object obj) {
                    e zzm;
                    zzm = zzgdn.zzm(r0.zzS("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new zzfve() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzae
                        @Override // com.google.android.gms.internal.ads.zzfve
                        public final Object apply(Object obj2) {
                            return zzau.zzC(zzau.this, r2, (String) obj2);
                        }
                    }, zzau.this.zzk);
                    return zzm;
                }
            }, zzgdyVar);
        } else {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Asset view map is empty.");
        }
        zzgdn.zzr(zzb2, new zzar(this, zzbufVar, z10), this.zzf.zzA());
    }

    private static boolean zzX(@NonNull Uri uri, List list, List list2) {
        String host = uri.getHost();
        String path = uri.getPath();
        if (host != null && path != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (path.contains((String) it.next())) {
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        if (host.endsWith((String) it2.next())) {
                            return true;
                        }
                    }
                    continue;
                }
            }
        }
        return false;
    }

    private final boolean zzY() {
        Map map;
        zzbui zzbuiVar = this.zzm;
        if (zzbuiVar != null && (map = zzbuiVar.zzb) != null && !map.isEmpty()) {
            return true;
        }
        return false;
    }

    private static final List zzZ(String str) {
        String[] split = TextUtils.split(str, ",");
        ArrayList arrayList = new ArrayList();
        for (String str2 : split) {
            if (!zzfwg.zzd(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Uri zzaa(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl=");
        if (indexOf == -1) {
            indexOf = uri2.indexOf("?adurl=");
        }
        if (indexOf != -1) {
            int i10 = indexOf + 1;
            return Uri.parse(uri2.substring(0, i10) + str + ContainerUtils.KEY_VALUE_DELIMITER + str2 + ContainerUtils.FIELD_DELIMITER + uri2.substring(i10));
        }
        return uri.buildUpon().appendQueryParameter(str, str2).build();
    }

    public static /* synthetic */ Uri zzd(zzau zzauVar, Uri uri, String str) {
        if (!TextUtils.isEmpty(str)) {
            return zzaa(uri, "nas", str);
        }
        return uri;
    }

    public static /* synthetic */ Uri zzn(zzau zzauVar, Uri uri, IObjectWrapper iObjectWrapper) {
        zzfda zzfdaVar;
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzmu)).booleanValue() && (zzfdaVar = zzauVar.zzi) != null) {
                uri = zzfdaVar.zza(uri, zzauVar.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null);
            } else {
                uri = zzauVar.zzh.zza(uri, zzauVar.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null);
            }
        } catch (zzavv e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("", e10);
        }
        if (uri.getQueryParameter("ms") != null) {
            return uri;
        }
        throw new Exception("Failed to append spam signals to click url.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzfhu zzs(e eVar, zzbze zzbzeVar) {
        String str;
        if (!zzfhx.zza() || !((Boolean) zzbex.zze.zze()).booleanValue()) {
            return null;
        }
        try {
            zzfhu zza2 = ((zzac) zzgdn.zzp(eVar)).zza();
            zza2.zzd(new ArrayList(Collections.singletonList(zzbzeVar.zzb)));
            com.google.android.gms.ads.internal.client.zzm zzmVar = zzbzeVar.zzd;
            if (zzmVar == null) {
                str = "";
            } else {
                str = zzmVar.zzp;
            }
            zza2.zzb(str);
            zza2.zzf(zzmVar.zzm);
            return zza2;
        } catch (ExecutionException e10) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "SignalGeneratorImpl.getConfiguredCriticalUserJourney");
            return null;
        }
    }

    public static /* synthetic */ e zzx(zzau zzauVar, zzdny[] zzdnyVarArr, String str, zzdny zzdnyVar) {
        zzdnyVarArr[0] = zzdnyVar;
        Context context = zzauVar.zzg;
        zzbui zzbuiVar = zzauVar.zzm;
        Map map = zzbuiVar.zzb;
        JSONObject zzd2 = zzbv.zzd(context, map, map, zzbuiVar.zza, null);
        JSONObject zzh = zzbv.zzh(zzauVar.zzg, zzauVar.zzm.zza);
        JSONObject zzg = zzbv.zzg(zzauVar.zzm.zza);
        JSONObject zze2 = zzbv.zze(zzauVar.zzg, zzauVar.zzm.zza);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("asset_view_signal", zzd2);
        jSONObject.put("ad_view_signal", zzh);
        jSONObject.put("scroll_view_signal", zzg);
        jSONObject.put("lock_screen_signal", zze2);
        if ("google.afma.nativeAds.getPublisherCustomRenderedClickSignals".equals(str)) {
            jSONObject.put("click_signal", zzbv.zzc(null, zzauVar.zzg, zzauVar.zzo, zzauVar.zzn));
        }
        return zzdnyVar.zzg(str, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final boolean zzP(@NonNull Uri uri) {
        return zzX(uri, this.zzB, this.zzC);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final boolean zzQ(@NonNull Uri uri) {
        return zzX(uri, this.zzD, this.zzE);
    }

    @Override // com.google.android.gms.internal.ads.zzbza
    public final IObjectWrapper zze(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, String str, IObjectWrapper iObjectWrapper3) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkl)).booleanValue()) {
            return ObjectWrapper.wrap(null);
        }
        zzbej zzbejVar = this.zzI;
        zzbejVar.zzg((Context) ObjectWrapper.unwrap(iObjectWrapper), (CustomTabsClient) ObjectWrapper.unwrap(iObjectWrapper2), str, (CustomTabsCallback) ObjectWrapper.unwrap(iObjectWrapper3));
        if (((Boolean) zzbfj.zze.zze()).booleanValue()) {
            this.zzJ.zze();
        }
        if (((Boolean) zzbfj.zzc.zze()).booleanValue()) {
            this.zzK.zzb(null);
        }
        return ObjectWrapper.wrap(zzbejVar.zzb());
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00fc  */
    @Override // com.google.android.gms.internal.ads.zzbza
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzf(com.google.android.gms.dynamic.IObjectWrapper r11, final com.google.android.gms.internal.ads.zzbze r12, @androidx.annotation.Nullable com.google.android.gms.internal.ads.zzbyx r13) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.nonagon.signalgeneration.zzau.zzf(com.google.android.gms.dynamic.IObjectWrapper, com.google.android.gms.internal.ads.zzbze, com.google.android.gms.internal.ads.zzbyx):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbza
    public final void zzg(zzbui zzbuiVar) {
        this.zzm = zzbuiVar;
        this.zzj.zzc(1);
    }

    @Override // com.google.android.gms.internal.ads.zzbza
    public final void zzh(List list, IObjectWrapper iObjectWrapper, zzbuf zzbufVar) {
        zzV(list, iObjectWrapper, zzbufVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzbza
    public final void zzi(List list, IObjectWrapper iObjectWrapper, zzbuf zzbufVar) {
        zzW(list, iObjectWrapper, zzbufVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzbza
    @SuppressLint({"AddJavascriptInterface"})
    public final void zzj(IObjectWrapper iObjectWrapper) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjX)).booleanValue()) {
            zzbcv zzbcvVar = zzbde.zzhL;
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcvVar)).booleanValue()) {
                zzU();
            }
            WebView webView = (WebView) ObjectWrapper.unwrap(iObjectWrapper);
            if (webView == null) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("The webView cannot be null.");
                return;
            }
            zzf zzfVar = this.zzK;
            final zzj zzjVar = new zzj(webView, zzfVar, zzcaf.zzf);
            webView.addJavascriptInterface(new TaggingLibraryJsInterface(webView, this.zzh, this.zzp, this.zzq, this.zzi, this.zzJ, zzfVar, zzjVar), "gmaSdk");
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkh)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzp().zzs();
            }
            if (((Boolean) zzbfj.zzc.zze()).booleanValue()) {
                zzfVar.zzb(webView);
                if (((Boolean) zzbfj.zzd.zze()).booleanValue()) {
                    zzcaf.zzd.scheduleWithFixedDelay(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzi
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzj.this.zzb();
                        }
                    }, 0L, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzki)).intValue(), TimeUnit.MILLISECONDS);
                }
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcvVar)).booleanValue()) {
                zzU();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbza
    public final void zzk(IObjectWrapper iObjectWrapper) {
        View view;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhU)).booleanValue()) {
            return;
        }
        MotionEvent motionEvent = (MotionEvent) ObjectWrapper.unwrap(iObjectWrapper);
        zzbui zzbuiVar = this.zzm;
        if (zzbuiVar == null) {
            view = null;
        } else {
            view = zzbuiVar.zza;
        }
        this.zzn = zzbv.zza(motionEvent, view);
        if (motionEvent.getAction() == 0) {
            this.zzo = this.zzn;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.zzn;
        obtain.setLocation(point.x, point.y);
        this.zzh.zzd(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzbza
    public final void zzl(List list, IObjectWrapper iObjectWrapper, zzbuf zzbufVar) {
        zzV(list, iObjectWrapper, zzbufVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zzbza
    public final void zzm(List list, IObjectWrapper iObjectWrapper, zzbuf zzbufVar) {
        zzW(list, iObjectWrapper, zzbufVar, false);
    }
}
