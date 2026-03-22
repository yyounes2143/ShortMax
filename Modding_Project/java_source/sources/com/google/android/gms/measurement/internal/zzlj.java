package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzqp;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.y;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.ss.ttm.player.MediaPlayer;
import com.vungle.ads.internal.model.Cookie;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Unit;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzlj extends zzg {
    @VisibleForTesting
    protected zzky zza;
    final zzx zzb;
    @VisibleForTesting
    protected boolean zzc;
    private zzjp zzd;
    private final Set zze;
    private boolean zzf;
    private final AtomicReference zzg;
    private final Object zzh;
    private boolean zzi;
    private int zzj;
    private zzay zzk;
    private zzay zzl;
    private PriorityQueue zzm;
    private boolean zzn;
    @GuardedBy("consentLock")
    private zzjl zzo;
    private final AtomicLong zzp;
    private long zzq;
    private zzay zzr;
    private SharedPreferences.OnSharedPreferenceChangeListener zzs;
    private zzay zzt;
    private final zzpo zzv;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzlj(zzic zzicVar) {
        super(zzicVar);
        this.zze = new CopyOnWriteArraySet();
        this.zzh = new Object();
        this.zzi = false;
        this.zzj = 1;
        this.zzc = true;
        this.zzv = new zzkn(this);
        this.zzg = new AtomicReference();
        this.zzo = zzjl.zza;
        this.zzq = -1L;
        this.zzp = new AtomicLong(0L);
        this.zzb = new zzx(zzicVar);
    }

    private final zzlr zzar(final zzom zzomVar) {
        try {
            URL url = new URI(zzomVar.zzc).toURL();
            final AtomicReference atomicReference = new AtomicReference();
            String zzl = this.zzu.zzv().zzl();
            zzic zzicVar = this.zzu;
            zzgs zzk = zzicVar.zzaV().zzk();
            Long valueOf = Long.valueOf(zzomVar.zza);
            zzk.zzd("[sgtm] Uploading data from app. row_id, url, uncompressed size", valueOf, zzomVar.zzc, Integer.valueOf(zzomVar.zzb.length));
            if (!TextUtils.isEmpty(zzomVar.zzg)) {
                zzicVar.zzaV().zzk().zzc("[sgtm] Uploading data from app. row_id", valueOf, zzomVar.zzg);
            }
            HashMap hashMap = new HashMap();
            Bundle bundle = zzomVar.zzd;
            for (String str : bundle.keySet()) {
                String string = bundle.getString(str);
                if (!TextUtils.isEmpty(string)) {
                    hashMap.put(str, string);
                }
            }
            zzlo zzn = zzicVar.zzn();
            byte[] bArr = zzomVar.zzb;
            zzll zzllVar = new zzll() { // from class: com.google.android.gms.measurement.internal.zzkz
                /* JADX WARN: Removed duplicated region for block: B:13:0x0064  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0067  */
                /* JADX WARN: Removed duplicated region for block: B:23:0x0097 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                @Override // com.google.android.gms.measurement.internal.zzll
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final /* synthetic */ void zza(java.lang.String r10, int r11, java.lang.Throwable r12, byte[] r13, java.util.Map r14) {
                    /*
                        r9 = this;
                        com.google.android.gms.measurement.internal.zzlj r10 = com.google.android.gms.measurement.internal.zzlj.this
                        r10.zzg()
                        com.google.android.gms.measurement.internal.zzom r13 = r3
                        r14 = 200(0xc8, float:2.8E-43)
                        if (r11 == r14) goto L14
                        r14 = 204(0xcc, float:2.86E-43)
                        if (r11 == r14) goto L14
                        r14 = 304(0x130, float:4.26E-43)
                        if (r11 != r14) goto L2e
                        r11 = r14
                    L14:
                        if (r12 != 0) goto L2e
                        com.google.android.gms.measurement.internal.zzic r11 = r10.zzu
                        com.google.android.gms.measurement.internal.zzgu r11 = r11.zzaV()
                        com.google.android.gms.measurement.internal.zzgs r11 = r11.zzk()
                        long r0 = r13.zza
                        java.lang.Long r12 = java.lang.Long.valueOf(r0)
                        java.lang.String r14 = "[sgtm] Upload succeeded for row_id"
                        r11.zzb(r14, r12)
                        com.google.android.gms.measurement.internal.zzlr r11 = com.google.android.gms.measurement.internal.zzlr.SUCCESS
                        goto L69
                    L2e:
                        com.google.android.gms.measurement.internal.zzic r14 = r10.zzu
                        com.google.android.gms.measurement.internal.zzgu r14 = r14.zzaV()
                        com.google.android.gms.measurement.internal.zzgs r14 = r14.zze()
                        long r0 = r13.zza
                        java.lang.Long r0 = java.lang.Long.valueOf(r0)
                        java.lang.Integer r1 = java.lang.Integer.valueOf(r11)
                        java.lang.String r2 = "[sgtm] Upload failed for row_id. response, exception"
                        r14.zzd(r2, r0, r1, r12)
                        com.google.android.gms.measurement.internal.zzfx r12 = com.google.android.gms.measurement.internal.zzfy.zzt
                        r14 = 0
                        java.lang.Object r12 = r12.zzb(r14)
                        java.lang.String r12 = (java.lang.String) r12
                        java.lang.String r14 = ","
                        java.lang.String[] r12 = r12.split(r14)
                        java.util.List r12 = java.util.Arrays.asList(r12)
                        java.lang.String r11 = java.lang.String.valueOf(r11)
                        boolean r11 = r12.contains(r11)
                        if (r11 == 0) goto L67
                        com.google.android.gms.measurement.internal.zzlr r11 = com.google.android.gms.measurement.internal.zzlr.BACKOFF
                        goto L69
                    L67:
                        com.google.android.gms.measurement.internal.zzlr r11 = com.google.android.gms.measurement.internal.zzlr.FAILURE
                    L69:
                        java.util.concurrent.atomic.AtomicReference r12 = r2
                        com.google.android.gms.measurement.internal.zzic r14 = r10.zzu
                        com.google.android.gms.measurement.internal.zznl r14 = r14.zzt()
                        com.google.android.gms.measurement.internal.zzaf r6 = new com.google.android.gms.measurement.internal.zzaf
                        long r7 = r13.zza
                        int r3 = r11.zza()
                        long r4 = r13.zzf
                        r0 = r6
                        r1 = r7
                        r0.<init>(r1, r3, r4)
                        r14.zzy(r6)
                        com.google.android.gms.measurement.internal.zzic r10 = r10.zzu
                        com.google.android.gms.measurement.internal.zzgu r10 = r10.zzaV()
                        com.google.android.gms.measurement.internal.zzgs r10 = r10.zzk()
                        java.lang.Long r13 = java.lang.Long.valueOf(r7)
                        java.lang.String r14 = "[sgtm] Updated status for row_id"
                        r10.zzc(r14, r13, r11)
                        monitor-enter(r12)
                        r12.set(r11)     // Catch: java.lang.Throwable -> L9f
                        r12.notifyAll()     // Catch: java.lang.Throwable -> L9f
                        monitor-exit(r12)     // Catch: java.lang.Throwable -> L9f
                        return
                    L9f:
                        r10 = move-exception
                        monitor-exit(r12)     // Catch: java.lang.Throwable -> L9f
                        throw r10
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkz.zza(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
                }
            };
            zzn.zzw();
            Preconditions.checkNotNull(url);
            Preconditions.checkNotNull(bArr);
            Preconditions.checkNotNull(zzllVar);
            zzn.zzu.zzaW().zzm(new zzln(zzn, zzl, url, bArr, hashMap, zzllVar));
            try {
                zzic zzicVar2 = zzicVar.zzk().zzu;
                long currentTimeMillis = zzicVar2.zzaZ().currentTimeMillis();
                long j10 = currentTimeMillis + ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
                synchronized (atomicReference) {
                    for (long j11 = ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS; atomicReference.get() == null && j11 > 0; j11 = j10 - zzicVar2.zzaZ().currentTimeMillis()) {
                        atomicReference.wait(j11);
                    }
                }
            } catch (InterruptedException unused) {
                this.zzu.zzaV().zze().zza("[sgtm] Interrupted waiting for uploading batch");
            }
            if (atomicReference.get() == null) {
                return zzlr.UNKNOWN;
            }
            return (zzlr) atomicReference.get();
        } catch (MalformedURLException | URISyntaxException e10) {
            this.zzu.zzaV().zzb().zzd("[sgtm] Bad upload url for row_id", zzomVar.zzc, Long.valueOf(zzomVar.zza), e10);
            return zzlr.FAILURE;
        }
    }

    @WorkerThread
    private final void zzas(Boolean bool, boolean z10) {
        zzg();
        zzb();
        zzic zzicVar = this.zzu;
        zzicVar.zzaV().zzj().zzb("Setting app measurement enabled (FE)", bool);
        zzicVar.zzd().zzh(bool);
        if (z10) {
            zzhh zzd = zzicVar.zzd();
            zzic zzicVar2 = zzd.zzu;
            zzd.zzg();
            SharedPreferences.Editor edit = zzd.zzd().edit();
            if (bool != null) {
                edit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                edit.remove("measurement_enabled_from_api");
            }
            edit.apply();
        }
        if (!this.zzu.zzE() && (bool == null || bool.booleanValue())) {
            return;
        }
        zzal();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: zzat */
    public final void zzal() {
        long j10;
        zzg();
        zzic zzicVar = this.zzu;
        String zza = zzicVar.zzd().zzh.zza();
        if (zza != null) {
            if ("unset".equals(zza)) {
                zzN(MBridgeConstans.DYNAMIC_VIEW_WX_APP, "_npa", null, zzicVar.zzaZ().currentTimeMillis());
            } else {
                if (true != "true".equals(zza)) {
                    j10 = 0;
                } else {
                    j10 = 1;
                }
                zzN(MBridgeConstans.DYNAMIC_VIEW_WX_APP, "_npa", Long.valueOf(j10), zzicVar.zzaZ().currentTimeMillis());
            }
        }
        if (this.zzu.zzB() && this.zzc) {
            zzicVar.zzaV().zzj().zza("Recording app launch after enabling measurement for the first time (FE)");
            zzU();
            this.zzu.zzh().zza.zza();
            zzicVar.zzaW().zzj(new zzjz(this));
            return;
        }
        zzicVar.zzaV().zzj().zza("Updating Scion state (FE)");
        this.zzu.zzt().zzi();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzA(zzjl zzjlVar) {
        boolean z10;
        Boolean bool;
        zzg();
        if ((zzjlVar.zzo(zzjk.ANALYTICS_STORAGE) && zzjlVar.zzo(zzjk.AD_STORAGE)) || this.zzu.zzt().zzO()) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzic zzicVar = this.zzu;
        if (z10 != zzicVar.zzE()) {
            zzicVar.zzD(z10);
            zzhh zzd = this.zzu.zzd();
            zzic zzicVar2 = zzd.zzu;
            zzd.zzg();
            if (zzd.zzd().contains("measurement_enabled_from_api")) {
                bool = Boolean.valueOf(zzd.zzd().getBoolean("measurement_enabled_from_api", true));
            } else {
                bool = null;
            }
            if (!z10 || bool == null || bool.booleanValue()) {
                zzas(Boolean.valueOf(z10), false);
            }
        }
    }

    public final void zzB(String str, String str2, Bundle bundle) {
        zzC(str, str2, bundle, true, true, this.zzu.zzaZ().currentTimeMillis());
    }

    public final void zzC(String str, String str2, Bundle bundle, boolean z10, boolean z11, long j10) {
        Bundle bundle2;
        String str3;
        if (bundle == null) {
            bundle2 = new Bundle();
        } else {
            bundle2 = bundle;
        }
        if (Objects.equals(str2, "screen_view")) {
            this.zzu.zzs().zzj(bundle2, j10);
            return;
        }
        boolean z12 = true;
        if (z11 && this.zzd != null && !zzpp.zzZ(str2)) {
            z12 = false;
        }
        boolean z13 = z12;
        if (str == null) {
            str3 = MBridgeConstans.DYNAMIC_VIEW_WX_APP;
        } else {
            str3 = str;
        }
        zzJ(str3, str2, j10, bundle2, z11, z13, z10, null);
    }

    @WorkerThread
    public final void zzD() {
        zzic zzicVar;
        zzfx zzfxVar;
        zzod zzodVar;
        zzod zzodVar2;
        int i10;
        zzlj zzljVar;
        boolean z10;
        boolean z11;
        com.google.android.gms.internal.measurement.zzkq zzkqVar;
        zzg();
        zzic zzicVar2 = this.zzu;
        zzicVar2.zzaV().zzj().zza("Handle tcf update.");
        SharedPreferences zze = zzicVar2.zzd().zze();
        HashMap hashMap = new HashMap();
        zzfx zzfxVar2 = zzfy.zzaZ;
        if (((Boolean) zzfxVar2.zzb(null)).booleanValue()) {
            int i11 = zzof.zzb;
            com.google.android.gms.internal.measurement.zzkp zzkpVar = com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE;
            zzoe zzoeVar = zzoe.CONSENT;
            Map.Entry a10 = f.a(zzkpVar, zzoeVar);
            com.google.android.gms.internal.measurement.zzkp zzkpVar2 = com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_SELECT_BASIC_ADS;
            zzoe zzoeVar2 = zzoe.FLEXIBLE_LEGITIMATE_INTEREST;
            zzfxVar = zzfxVar2;
            zzicVar = zzicVar2;
            ImmutableMap t10 = ImmutableMap.t(a10, f.a(zzkpVar2, zzoeVar2), f.a(com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE, zzoeVar), f.a(com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS, zzoeVar), f.a(com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE, zzoeVar2), f.a(com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_APPLY_MARKET_RESEARCH_TO_GENERATE_AUDIENCE_INSIGHTS, zzoeVar2), f.a(com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_DEVELOP_AND_IMPROVE_PRODUCTS, zzoeVar2));
            ImmutableSet A = ImmutableSet.A("CH");
            char[] cArr = new char[5];
            boolean contains = zze.contains("IABTCF_TCString");
            int zzb = zzof.zzb(zze, "IABTCF_CmpSdkID");
            int zzb2 = zzof.zzb(zze, "IABTCF_PolicyVersion");
            int zzb3 = zzof.zzb(zze, Cookie.IABTCF_GDPR_APPLIES);
            int zzb4 = zzof.zzb(zze, "IABTCF_PurposeOneTreatment");
            int zzb5 = zzof.zzb(zze, "IABTCF_EnableAdvertiserConsentMode");
            String zza = zzof.zza(zze, "IABTCF_PublisherCC");
            ImmutableMap.a b10 = ImmutableMap.b();
            y it = t10.keySet().iterator();
            while (it.hasNext()) {
                com.google.android.gms.internal.measurement.zzkp zzkpVar3 = (com.google.android.gms.internal.measurement.zzkp) it.next();
                int zza2 = zzkpVar3.zza();
                StringBuilder sb2 = new StringBuilder(String.valueOf(zza2).length() + 28);
                sb2.append("IABTCF_PublisherRestrictions");
                sb2.append(zza2);
                String zza3 = zzof.zza(zze, sb2.toString());
                if (!TextUtils.isEmpty(zza3) && zza3.length() >= 755) {
                    int digit = Character.digit(zza3.charAt(MediaPlayer.MEDIA_PLAYER_OPTION_FEED_IN_BEFORE_DECODED), 10);
                    if (digit >= 0 && digit <= com.google.android.gms.internal.measurement.zzkq.values().length && digit != 0) {
                        if (digit != 1) {
                            if (digit != 2) {
                                zzkqVar = com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED;
                            } else {
                                zzkqVar = com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST;
                            }
                        } else {
                            zzkqVar = com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_REQUIRE_CONSENT;
                        }
                    } else {
                        zzkqVar = com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_NOT_ALLOWED;
                    }
                } else {
                    zzkqVar = com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED;
                }
                b10.f(zzkpVar3, zzkqVar);
            }
            ImmutableMap c10 = b10.c();
            String zza4 = zzof.zza(zze, "IABTCF_PurposeConsents");
            String zza5 = zzof.zza(zze, "IABTCF_VendorConsents");
            if (!TextUtils.isEmpty(zza5) && zza5.length() >= 755 && zza5.charAt(MediaPlayer.MEDIA_PLAYER_OPTION_FEED_IN_BEFORE_DECODED) == '1') {
                z10 = true;
            } else {
                z10 = false;
            }
            String zza6 = zzof.zza(zze, "IABTCF_PurposeLegitimateInterests");
            String zza7 = zzof.zza(zze, "IABTCF_VendorLegitimateInterests");
            if (!TextUtils.isEmpty(zza7) && zza7.length() >= 755 && zza7.charAt(MediaPlayer.MEDIA_PLAYER_OPTION_FEED_IN_BEFORE_DECODED) == '1') {
                z11 = true;
            } else {
                z11 = false;
            }
            cArr[0] = '2';
            zzodVar = new zzod(zzof.zzd(t10, c10, A, cArr, zzb, zzb5, zzb3, zzb2, zzb4, zza, zza4, zza6, z10, z11, contains));
        } else {
            zzicVar = zzicVar2;
            zzfxVar = zzfxVar2;
            String zza8 = zzof.zza(zze, "IABTCF_VendorConsents");
            if (!"".equals(zza8) && zza8.length() > 754) {
                hashMap.put("GoogleConsent", String.valueOf(zza8.charAt(MediaPlayer.MEDIA_PLAYER_OPTION_FEED_IN_BEFORE_DECODED)));
            }
            int zzb6 = zzof.zzb(zze, Cookie.IABTCF_GDPR_APPLIES);
            if (zzb6 != -1) {
                hashMap.put("gdprApplies", String.valueOf(zzb6));
            }
            int zzb7 = zzof.zzb(zze, "IABTCF_EnableAdvertiserConsentMode");
            if (zzb7 != -1) {
                hashMap.put("EnableAdvertiserConsentMode", String.valueOf(zzb7));
            }
            int zzb8 = zzof.zzb(zze, "IABTCF_PolicyVersion");
            if (zzb8 != -1) {
                hashMap.put("PolicyVersion", String.valueOf(zzb8));
            }
            String zza9 = zzof.zza(zze, "IABTCF_PurposeConsents");
            if (!"".equals(zza9)) {
                hashMap.put("PurposeConsents", zza9);
            }
            int zzb9 = zzof.zzb(zze, "IABTCF_CmpSdkID");
            if (zzb9 != -1) {
                hashMap.put("CmpSdkID", String.valueOf(zzb9));
            }
            zzodVar = new zzod(hashMap);
        }
        zzicVar.zzaV().zzk().zzb("Tcf preferences read", zzodVar);
        if (zzicVar.zzc().zzp(null, zzfxVar)) {
            zzhh zzd = zzicVar.zzd();
            zzd.zzg();
            String string = zzd.zzd().getString("stored_tcf_param", "");
            HashMap hashMap2 = new HashMap();
            if (TextUtils.isEmpty(string)) {
                zzodVar2 = new zzod(hashMap2);
            } else {
                String[] split = string.split(";");
                int length = split.length;
                int i12 = 0;
                while (i12 < length) {
                    String[] split2 = split[i12].split(ContainerUtils.KEY_VALUE_DELIMITER);
                    if (split2.length >= 2 && zzof.zza.contains(split2[0])) {
                        i10 = 1;
                        hashMap2.put(split2[0], split2[1]);
                    } else {
                        i10 = 1;
                    }
                    i12 += i10;
                }
                zzodVar2 = new zzod(hashMap2);
            }
            if (zzicVar.zzd().zzm(zzodVar)) {
                Bundle zzb10 = zzodVar.zzb();
                zzicVar.zzaV().zzk().zzb("Consent generated from Tcf", zzb10);
                if (zzb10 != Bundle.EMPTY) {
                    zzljVar = this;
                    zzljVar.zzp(zzb10, -30, zzicVar.zzaZ().currentTimeMillis());
                } else {
                    zzljVar = this;
                }
                Bundle bundle = new Bundle();
                bundle.putString("_tcfm", zzodVar.zzd(zzodVar2));
                bundle.putString("_tcfd2", zzodVar.zzc());
                bundle.putString("_tcfd", zzodVar.zze());
                zzljVar.zzF("auto", "_tcf", bundle);
            }
        } else if (zzicVar.zzd().zzm(zzodVar)) {
            Bundle zzb11 = zzodVar.zzb();
            zzicVar.zzaV().zzk().zzb("Consent generated from Tcf", zzb11);
            if (zzb11 != Bundle.EMPTY) {
                zzp(zzb11, -30, zzicVar.zzaZ().currentTimeMillis());
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("_tcfd", zzodVar.zze());
            zzF("auto", "_tcf", bundle2);
        }
    }

    @WorkerThread
    public final void zzE() {
        zzg();
        zzic zzicVar = this.zzu;
        zzicVar.zzaV().zzj().zza("Register tcfPrefChangeListener.");
        if (this.zzs == null) {
            this.zzt = new zzkb(this, this.zzu);
            this.zzs = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                public final /* synthetic */ void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                    zzlj.this.zzag(sharedPreferences, str);
                }
            };
        }
        zzicVar.zzd().zze().registerOnSharedPreferenceChangeListener(this.zzs);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzF(String str, String str2, Bundle bundle) {
        zzg();
        zzG(str, str2, this.zzu.zzaZ().currentTimeMillis(), bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzG(String str, String str2, long j10, Bundle bundle) {
        boolean z10;
        zzg();
        if (this.zzd == null || zzpp.zzZ(str2)) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzH(str, str2, j10, bundle, true, z10, true, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:52:0x012c  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzH(java.lang.String r25, java.lang.String r26, long r27, android.os.Bundle r29, boolean r30, boolean r31, boolean r32, java.lang.String r33) {
        /*
            Method dump skipped, instructions count: 1225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlj.zzH(java.lang.String, java.lang.String, long, android.os.Bundle, boolean, boolean, boolean, java.lang.String):void");
    }

    public final void zzI(String str, String str2, Bundle bundle, String str3) {
        zzic.zzL();
        zzJ("auto", str2, this.zzu.zzaZ().currentTimeMillis(), bundle, false, true, true, str3);
    }

    protected final void zzJ(String str, String str2, long j10, Bundle bundle, boolean z10, boolean z11, boolean z12, String str3) {
        int i10 = zzpp.zza;
        Bundle bundle2 = new Bundle(bundle);
        for (String str4 : bundle2.keySet()) {
            Object obj = bundle2.get(str4);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str4, new Bundle((Bundle) obj));
            } else {
                int i11 = 0;
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    while (i11 < parcelableArr.length) {
                        Parcelable parcelable = parcelableArr[i11];
                        if (parcelable instanceof Bundle) {
                            parcelableArr[i11] = new Bundle((Bundle) parcelable);
                        }
                        i11++;
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    while (i11 < list.size()) {
                        Object obj2 = list.get(i11);
                        if (obj2 instanceof Bundle) {
                            list.set(i11, new Bundle((Bundle) obj2));
                        }
                        i11++;
                    }
                }
            }
        }
        this.zzu.zzaW().zzj(new zzkc(this, str, str2, j10, bundle2, z10, z11, z12, str3));
    }

    public final void zzK(String str, String str2, Object obj, boolean z10) {
        zzL("auto", "_ldl", obj, true, this.zzu.zzaZ().currentTimeMillis());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzL(java.lang.String r17, java.lang.String r18, java.lang.Object r19, boolean r20, long r21) {
        /*
            r16 = this;
            r6 = r16
            r2 = r18
            r0 = r19
            r1 = 0
            r3 = 24
            if (r20 == 0) goto L17
            com.google.android.gms.measurement.internal.zzic r4 = r6.zzu
            com.google.android.gms.measurement.internal.zzpp r4 = r4.zzk()
            int r4 = r4.zzp(r2)
        L15:
            r12 = r4
            goto L41
        L17:
            com.google.android.gms.measurement.internal.zzic r4 = r6.zzu
            com.google.android.gms.measurement.internal.zzpp r4 = r4.zzk()
            java.lang.String r5 = "user property"
            boolean r7 = r4.zzj(r5, r2)
            r8 = 6
            if (r7 != 0) goto L28
        L26:
            r12 = r8
            goto L41
        L28:
            java.lang.String[] r7 = com.google.android.gms.measurement.internal.zzjo.zza
            r9 = 0
            boolean r7 = r4.zzl(r5, r7, r9, r2)
            if (r7 != 0) goto L34
            r4 = 15
            goto L15
        L34:
            com.google.android.gms.measurement.internal.zzic r7 = r4.zzu
            r7.zzc()
            boolean r4 = r4.zzm(r5, r3, r2)
            if (r4 != 0) goto L40
            goto L26
        L40:
            r12 = r1
        L41:
            r4 = 1
            if (r12 == 0) goto L67
            com.google.android.gms.measurement.internal.zzic r0 = r6.zzu
            com.google.android.gms.measurement.internal.zzpp r5 = r0.zzk()
            r0.zzc()
            java.lang.String r14 = r5.zzC(r2, r3, r4)
            if (r2 == 0) goto L57
            int r1 = r18.length()
        L57:
            r15 = r1
            com.google.android.gms.measurement.internal.zzic r0 = r6.zzu
            com.google.android.gms.measurement.internal.zzpo r10 = r6.zzv
            com.google.android.gms.measurement.internal.zzpp r9 = r0.zzk()
            r11 = 0
            java.lang.String r13 = "_ev"
            r9.zzN(r10, r11, r12, r13, r14, r15)
            return
        L67:
            if (r17 != 0) goto L6c
            java.lang.String r5 = "app"
            goto L6e
        L6c:
            r5 = r17
        L6e:
            if (r0 == 0) goto Lc0
            com.google.android.gms.measurement.internal.zzic r7 = r6.zzu
            com.google.android.gms.measurement.internal.zzpp r8 = r7.zzk()
            int r12 = r8.zzK(r2, r0)
            if (r12 == 0) goto Laa
            com.google.android.gms.measurement.internal.zzpp r5 = r7.zzk()
            r7.zzc()
            java.lang.String r14 = r5.zzC(r2, r3, r4)
            boolean r2 = r0 instanceof java.lang.String
            if (r2 != 0) goto L92
            boolean r2 = r0 instanceof java.lang.CharSequence
            if (r2 == 0) goto L90
            goto L92
        L90:
            r15 = r1
            goto L9b
        L92:
            java.lang.String r0 = r19.toString()
            int r1 = r0.length()
            goto L90
        L9b:
            com.google.android.gms.measurement.internal.zzic r0 = r6.zzu
            com.google.android.gms.measurement.internal.zzpo r10 = r6.zzv
            com.google.android.gms.measurement.internal.zzpp r9 = r0.zzk()
            r11 = 0
            java.lang.String r13 = "_ev"
            r9.zzN(r10, r11, r12, r13, r14, r15)
            return
        Laa:
            com.google.android.gms.measurement.internal.zzpp r1 = r7.zzk()
            java.lang.Object r7 = r1.zzL(r2, r0)
            if (r7 == 0) goto Lbf
            r0 = r16
            r1 = r5
            r2 = r18
            r3 = r21
            r5 = r7
            r0.zzM(r1, r2, r3, r5)
        Lbf:
            return
        Lc0:
            r7 = 0
            r0 = r16
            r1 = r5
            r2 = r18
            r3 = r21
            r5 = r7
            r0.zzM(r1, r2, r3, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlj.zzL(java.lang.String, java.lang.String, java.lang.Object, boolean, long):void");
    }

    final void zzM(String str, String str2, long j10, Object obj) {
        this.zzu.zzaW().zzj(new zzkd(this, str, str2, obj, j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzN(String str, String str2, Object obj, long j10) {
        long j11;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        zzb();
        Object obj2 = obj;
        if ("allow_personalized_ads".equals(str2)) {
            if (obj instanceof String) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    String lowerCase = str3.toLowerCase(Locale.ENGLISH);
                    String str4 = "false";
                    if (true != "false".equals(lowerCase)) {
                        j11 = 0;
                    } else {
                        j11 = 1;
                    }
                    zzic zzicVar = this.zzu;
                    Long valueOf = Long.valueOf(j11);
                    zzhg zzhgVar = zzicVar.zzd().zzh;
                    if (valueOf.longValue() == 1) {
                        str4 = "true";
                    }
                    zzhgVar.zzb(str4);
                    obj = valueOf;
                    str2 = "_npa";
                    this.zzu.zzaV().zzk().zzc("Setting user property(FE)", "non_personalized_ads(_npa)", obj);
                    obj2 = obj;
                }
            }
            if (obj == null) {
                this.zzu.zzd().zzh.zzb("unset");
                obj = obj;
                str2 = "_npa";
            }
            this.zzu.zzaV().zzk().zzc("Setting user property(FE)", "non_personalized_ads(_npa)", obj);
            obj2 = obj;
        }
        String str5 = str2;
        Object obj3 = obj2;
        zzic zzicVar2 = this.zzu;
        if (!zzicVar2.zzB()) {
            this.zzu.zzaV().zzk().zza("User property not set since app measurement is disabled");
        } else if (!zzicVar2.zzH()) {
        } else {
            this.zzu.zzt().zzA(new zzpl(str5, j10, obj3, str));
        }
    }

    public final List zzO(boolean z10) {
        zzb();
        zzic zzicVar = this.zzu;
        zzicVar.zzaV().zzk().zza("Getting user properties (FE)");
        if (!zzicVar.zzaW().zze()) {
            zzicVar.zzaU();
            if (zzae.zza()) {
                zzicVar.zzaV().zzb().zza("Cannot get all user properties from main thread");
                return Collections.emptyList();
            }
            AtomicReference atomicReference = new AtomicReference();
            this.zzu.zzaW().zzk(atomicReference, 5000L, "get user properties", new zzkf(this, atomicReference, z10));
            List list = (List) atomicReference.get();
            if (list == null) {
                zzicVar.zzaV().zzb().zzb("Timed out waiting for get user properties, includeInternal", Boolean.valueOf(z10));
                return Collections.emptyList();
            }
            return list;
        }
        zzicVar.zzaV().zzb().zza("Cannot get all user properties from analytics worker thread");
        return Collections.emptyList();
    }

    public final Map zzP(String str, String str2, boolean z10) {
        zzic zzicVar = this.zzu;
        if (zzicVar.zzaW().zze()) {
            zzicVar.zzaV().zzb().zza("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        zzicVar.zzaU();
        if (zzae.zza()) {
            zzicVar.zzaV().zzb().zza("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        this.zzu.zzaW().zzk(atomicReference, 5000L, "get user properties", new zzkl(this, atomicReference, null, str, str2, z10));
        List<zzpl> list = (List) atomicReference.get();
        if (list == null) {
            zzicVar.zzaV().zzb().zzb("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z10));
            return Collections.emptyMap();
        }
        ArrayMap arrayMap = new ArrayMap(list.size());
        for (zzpl zzplVar : list) {
            Object zza = zzplVar.zza();
            if (zza != null) {
                arrayMap.put(zzplVar.zzb, zza);
            }
        }
        return arrayMap;
    }

    public final String zzQ() {
        return (String) this.zzg.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzR(String str) {
        this.zzg.set(str);
    }

    @WorkerThread
    public final void zzS() {
        zzg();
        zzic zzicVar = this.zzu;
        if (!zzicVar.zzd().zzo.zza()) {
            long zza = zzicVar.zzd().zzp.zza();
            zzicVar.zzd().zzp.zzb(1 + zza);
            zzicVar.zzc();
            if (zza >= 5) {
                zzicVar.zzaV().zze().zza("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                zzicVar.zzd().zzo.zzb(true);
                return;
            }
            if (this.zzr == null) {
                this.zzr = new zzkg(this, this.zzu);
            }
            this.zzr.zzb(0L);
            return;
        }
        zzicVar.zzaV().zzj().zza("Deferred Deep Link already retrieved. Not fetching again.");
    }

    public final void zzT(long j10) {
        this.zzg.set(null);
        this.zzu.zzaW().zzj(new zzkh(this, j10));
    }

    @WorkerThread
    public final void zzU() {
        zzg();
        zzb();
        if (this.zzu.zzH()) {
            zzic zzicVar = this.zzu;
            zzal zzc = zzicVar.zzc();
            zzc.zzu.zzaU();
            Boolean zzr = zzc.zzr("google_analytics_deferred_deep_link_enabled");
            if (zzr != null && zzr.booleanValue()) {
                zzicVar.zzaV().zzj().zza("Deferred Deep Link feature enabled.");
                zzicVar.zzaW().zzj(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlh
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzlj.this.zzS();
                    }
                });
            }
            this.zzu.zzt().zzE();
            this.zzc = false;
            zzhh zzd = zzicVar.zzd();
            zzd.zzg();
            String string = zzd.zzd().getString("previous_os_version", null);
            zzd.zzu.zzu().zzw();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor edit = zzd.zzd().edit();
                edit.putString("previous_os_version", str);
                edit.apply();
            }
            if (!TextUtils.isEmpty(string)) {
                zzicVar.zzu().zzw();
                if (!string.equals(str)) {
                    Bundle bundle = new Bundle();
                    bundle.putString("_po", string);
                    zzF("auto", "_ou", bundle);
                }
            }
        }
    }

    @WorkerThread
    public final void zzV(zzjp zzjpVar) {
        zzjp zzjpVar2;
        boolean z10;
        zzg();
        zzb();
        if (zzjpVar != null && zzjpVar != (zzjpVar2 = this.zzd)) {
            if (zzjpVar2 == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            Preconditions.checkState(z10, "EventInterceptor already set.");
        }
        this.zzd = zzjpVar;
    }

    public final void zzW(zzjq zzjqVar) {
        zzb();
        Preconditions.checkNotNull(zzjqVar);
        if (!this.zze.add(zzjqVar)) {
            this.zzu.zzaV().zze().zza("OnEventListener already registered");
        }
    }

    public final void zzX(zzjq zzjqVar) {
        zzb();
        Preconditions.checkNotNull(zzjqVar);
        if (!this.zze.remove(zzjqVar)) {
            this.zzu.zzaV().zze().zza("OnEventListener had not been registered");
        }
    }

    public final int zzY(String str) {
        Preconditions.checkNotEmpty(str);
        this.zzu.zzc();
        return 25;
    }

    public final void zzZ(Bundle bundle) {
        zzaa(bundle, this.zzu.zzaZ().currentTimeMillis());
    }

    public final void zzaa(Bundle bundle, long j10) {
        Preconditions.checkNotNull(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            this.zzu.zzaV().zze().zza("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        Preconditions.checkNotNull(bundle2);
        zzjh.zzb(bundle2, "app_id", String.class, null);
        zzjh.zzb(bundle2, "origin", String.class, null);
        zzjh.zzb(bundle2, "name", String.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.VALUE, Object.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        Preconditions.checkNotEmpty(bundle2.getString("name"));
        Preconditions.checkNotEmpty(bundle2.getString("origin"));
        Preconditions.checkNotNull(bundle2.get(AppMeasurementSdk.ConditionalUserProperty.VALUE));
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, j10);
        String string = bundle2.getString("name");
        Object obj = bundle2.get(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        zzic zzicVar = this.zzu;
        if (zzicVar.zzk().zzp(string) == 0) {
            if (zzicVar.zzk().zzK(string, obj) == 0) {
                Object zzL = zzicVar.zzk().zzL(string, obj);
                if (zzL == null) {
                    zzicVar.zzaV().zzb().zzc("Unable to normalize conditional user property value", zzicVar.zzl().zzc(string), obj);
                    return;
                }
                zzjh.zza(bundle2, zzL);
                long j11 = bundle2.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT);
                if (!TextUtils.isEmpty(bundle2.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME))) {
                    zzicVar.zzc();
                    if (j11 > 15552000000L || j11 < 1) {
                        zzicVar.zzaV().zzb().zzc("Invalid conditional user property timeout", zzicVar.zzl().zzc(string), Long.valueOf(j11));
                        return;
                    }
                }
                long j12 = bundle2.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE);
                zzicVar.zzc();
                if (j12 <= 15552000000L && j12 >= 1) {
                    zzicVar.zzaW().zzj(new zzki(this, bundle2));
                    return;
                } else {
                    zzicVar.zzaV().zzb().zzc("Invalid conditional user property time to live", zzicVar.zzl().zzc(string), Long.valueOf(j12));
                    return;
                }
            }
            zzicVar.zzaV().zzb().zzc("Invalid conditional user property value", zzicVar.zzl().zzc(string), obj);
            return;
        }
        zzicVar.zzaV().zzb().zzb("Invalid conditional user property name", zzicVar.zzl().zzc(string));
    }

    public final void zzab(String str, String str2, Bundle bundle) {
        zzic zzicVar = this.zzu;
        long currentTimeMillis = zzicVar.zzaZ().currentTimeMillis();
        Preconditions.checkNotEmpty(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, currentTimeMillis);
        if (str2 != null) {
            bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str2);
            bundle2.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle);
        }
        zzicVar.zzaW().zzj(new zzkj(this, bundle2));
    }

    public final ArrayList zzac(String str, String str2) {
        zzic zzicVar = this.zzu;
        if (zzicVar.zzaW().zze()) {
            zzicVar.zzaV().zzb().zza("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList(0);
        }
        zzicVar.zzaU();
        if (zzae.zza()) {
            zzicVar.zzaV().zzb().zza("Cannot get conditional user properties from main thread");
            return new ArrayList(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        this.zzu.zzaW().zzk(atomicReference, 5000L, "get conditional user properties", new zzkk(this, atomicReference, null, str, str2));
        List list = (List) atomicReference.get();
        if (list == null) {
            zzicVar.zzaV().zzb().zzb("Timed out waiting for get conditional user properties", null);
            return new ArrayList();
        }
        return zzpp.zzas(list);
    }

    public final String zzad() {
        zzlu zzl = this.zzu.zzs().zzl();
        if (zzl != null) {
            return zzl.zza;
        }
        return null;
    }

    public final String zzae() {
        zzlu zzl = this.zzu.zzs().zzl();
        if (zzl != null) {
            return zzl.zzb;
        }
        return null;
    }

    public final String zzaf() {
        try {
            return zzlt.zza(this.zzu.zzaY(), "google_app_id", this.zzu.zzq());
        } catch (IllegalStateException e10) {
            this.zzu.zzaV().zzb().zzb("getGoogleAppId failed with exception", e10);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzag(SharedPreferences sharedPreferences, String str) {
        zzic zzicVar = this.zzu;
        if (!zzicVar.zzc().zzp(null, zzfy.zzaZ)) {
            if (Objects.equals(str, "IABTCF_TCString")) {
                zzicVar.zzaV().zzk().zza("IABTCF_TCString change picked up in listener.");
                ((zzay) Preconditions.checkNotNull(this.zzt)).zzb(500L);
            }
        } else if (!Objects.equals(str, "IABTCF_TCString") && !Objects.equals(str, Cookie.IABTCF_GDPR_APPLIES) && !Objects.equals(str, "IABTCF_EnableAdvertiserConsentMode")) {
        } else {
            zzicVar.zzaV().zzk().zza("IABTCF_TCString change picked up in listener.");
            ((zzay) Preconditions.checkNotNull(this.zzt)).zzb(500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzah(Bundle bundle) {
        Bundle bundle2;
        int i10;
        if (bundle.isEmpty()) {
            bundle2 = bundle;
        } else {
            zzic zzicVar = this.zzu;
            bundle2 = new Bundle(zzicVar.zzd().zzt.zza());
            Iterator<String> it = bundle.keySet().iterator();
            while (true) {
                i10 = 0;
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                Object obj = bundle.get(next);
                if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                    if (zzicVar.zzk().zzt(obj)) {
                        zzicVar.zzk().zzN(this.zzv, null, 27, null, null, 0);
                    }
                    zzicVar.zzaV().zzh().zzc("Invalid default event parameter type. Name, value", next, obj);
                } else if (zzpp.zzZ(next)) {
                    zzicVar.zzaV().zzh().zzb("Invalid default event parameter name. Name", next);
                } else if (obj == null) {
                    bundle2.remove(next);
                } else if (zzicVar.zzk().zzu("param", next, zzicVar.zzc().zze(null, false), obj)) {
                    zzicVar.zzk().zzM(bundle2, next, obj);
                }
            }
            zzicVar.zzk();
            int zzc = zzicVar.zzc().zzc();
            if (bundle2.size() > zzc) {
                for (String str : new TreeSet(bundle2.keySet())) {
                    i10++;
                    if (i10 > zzc) {
                        bundle2.remove(str);
                    }
                }
                zzicVar.zzk().zzN(this.zzv, null, 26, null, null, 0);
                zzicVar.zzaV().zzh().zza("Too many default event parameters set. Discarding beyond event parameter limit");
            }
        }
        zzic zzicVar2 = this.zzu;
        zzicVar2.zzd().zzt.zzb(bundle2);
        if (bundle.isEmpty() && !zzicVar2.zzc().zzp(null, zzfy.zzaW)) {
            return;
        }
        this.zzu.zzt().zzH(bundle2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzai(int i10) {
        if (this.zzk == null) {
            this.zzk = new zzjx(this, this.zzu);
        }
        this.zzk.zzb(i10 * 1000);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzaj(Boolean bool, boolean z10) {
        zzas(bool, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzak(zzjl zzjlVar, long j10, boolean z10, boolean z11) {
        zzg();
        zzb();
        zzic zzicVar = this.zzu;
        zzjl zzl = zzicVar.zzd().zzl();
        if (j10 <= this.zzq && zzjl.zzu(zzl.zzb(), zzjlVar.zzb())) {
            zzicVar.zzaV().zzi().zzb("Dropped out-of-date consent setting, proposed settings", zzjlVar);
            return;
        }
        zzhh zzd = zzicVar.zzd();
        zzic zzicVar2 = zzd.zzu;
        zzd.zzg();
        int zzb = zzjlVar.zzb();
        if (zzd.zzk(zzb)) {
            zzic zzicVar3 = this.zzu;
            SharedPreferences.Editor edit = zzd.zzd().edit();
            edit.putString("consent_settings", zzjlVar.zzl());
            edit.putInt("consent_source", zzb);
            edit.apply();
            zzicVar.zzaV().zzk().zzb("Setting storage consent(FE)", zzjlVar);
            this.zzq = j10;
            if (zzicVar3.zzt().zzP()) {
                zzicVar3.zzt().zzk(z10);
            } else {
                zzicVar3.zzt().zzj(z10);
            }
            if (z11) {
                zzicVar3.zzt().zzC(new AtomicReference());
                return;
            }
            return;
        }
        zzicVar.zzaV().zzi().zzb("Lower precedence consent source ignored, proposed source", Integer.valueOf(zzjlVar.zzb()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzam(boolean z10) {
        this.zzi = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ int zzan() {
        return this.zzj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzao(int i10) {
        this.zzj = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzay zzap() {
        return this.zzr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ int zzaq(Throwable th2) {
        String message = th2.getMessage();
        this.zzn = false;
        int i10 = 2;
        if (message != null) {
            if (!(th2 instanceof IllegalStateException) && !message.contains("garbage collected") && !th2.getClass().getSimpleName().equals("ServiceUnavailableException")) {
                if ((th2 instanceof SecurityException) && !message.endsWith("READ_DEVICE_CONFIG")) {
                    return 3;
                }
            } else {
                i10 = 1;
                if (message.contains("Background")) {
                    this.zzn = true;
                    return 1;
                }
            }
        }
        return i10;
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    protected final boolean zze() {
        return false;
    }

    public final void zzh() {
        zzic zzicVar = this.zzu;
        if ((zzicVar.zzaY().getApplicationContext() instanceof Application) && this.zza != null) {
            ((Application) zzicVar.zzaY().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.zza);
        }
    }

    public final Boolean zzi() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) this.zzu.zzaW().zzk(atomicReference, 15000L, "boolean test flag value", new zzke(this, atomicReference));
    }

    public final String zzj() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) this.zzu.zzaW().zzk(atomicReference, 15000L, "String test flag value", new zzko(this, atomicReference));
    }

    public final Long zzk() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) this.zzu.zzaW().zzk(atomicReference, 15000L, "long test flag value", new zzkp(this, atomicReference));
    }

    public final Integer zzl() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) this.zzu.zzaW().zzk(atomicReference, 15000L, "int test flag value", new zzkq(this, atomicReference));
    }

    public final Double zzm() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) this.zzu.zzaW().zzk(atomicReference, 15000L, "double test flag value", new zzkr(this, atomicReference));
    }

    public final void zzn(Boolean bool) {
        zzb();
        this.zzu.zzaW().zzj(new zzks(this, bool));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void zzp(Bundle bundle, int i10, long j10) {
        Object obj;
        String str;
        String string;
        zzb();
        zzjl zzjlVar = zzjl.zza;
        zzjk[] zzb = zzjj.STORAGE.zzb();
        int length = zzb.length;
        int i11 = 0;
        while (true) {
            obj = null;
            if (i11 >= length) {
                break;
            }
            String str2 = zzb[i11].zze;
            if (bundle.containsKey(str2) && (string = bundle.getString(str2)) != null) {
                if (string.equals("granted")) {
                    obj = Boolean.TRUE;
                } else if (string.equals("denied")) {
                    obj = Boolean.FALSE;
                }
                if (obj == null) {
                    obj = string;
                    break;
                }
            }
            i11++;
        }
        if (obj != null) {
            zzic zzicVar = this.zzu;
            zzicVar.zzaV().zzh().zzb("Ignoring invalid consent setting", obj);
            zzicVar.zzaV().zzh().zza("Valid consent values are 'granted', 'denied'");
        }
        boolean zze = this.zzu.zzaW().zze();
        zzjl zze2 = zzjl.zze(bundle, i10);
        if (zze2.zzc()) {
            zzs(zze2, zze);
        }
        zzaz zzh = zzaz.zzh(bundle, i10);
        if (zzh.zzd()) {
            zzq(zzh, zze);
        }
        Boolean zzi = zzaz.zzi(bundle);
        if (zzi != null) {
            if (i10 == -30) {
                str = "tcf";
            } else {
                str = MBridgeConstans.DYNAMIC_VIEW_WX_APP;
            }
            String str3 = str;
            if (zze) {
                zzN(str3, "allow_personalized_ads", zzi.toString(), j10);
            } else {
                zzL(str3, "allow_personalized_ads", zzi.toString(), false, j10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzq(zzaz zzazVar, boolean z10) {
        zzkt zzktVar = new zzkt(this, zzazVar);
        if (z10) {
            zzg();
            zzktVar.run();
            return;
        }
        this.zzu.zzaW().zzj(zzktVar);
    }

    public final void zzs(zzjl zzjlVar, boolean z10) {
        boolean z11;
        zzjl zzjlVar2;
        boolean z12;
        boolean z13;
        zzb();
        int zzb = zzjlVar.zzb();
        if (zzb != -10) {
            zzji zzp = zzjlVar.zzp();
            zzji zzjiVar = zzji.UNINITIALIZED;
            if (zzp == zzjiVar && zzjlVar.zzq() == zzjiVar) {
                this.zzu.zzaV().zzh().zza("Ignoring empty consent settings");
                return;
            }
        }
        synchronized (this.zzh) {
            try {
                z11 = false;
                if (zzjl.zzu(zzb, this.zzo.zzb())) {
                    z12 = zzjlVar.zzr(this.zzo);
                    zzjk zzjkVar = zzjk.ANALYTICS_STORAGE;
                    if (zzjlVar.zzo(zzjkVar) && !this.zzo.zzo(zzjkVar)) {
                        z11 = true;
                    }
                    zzjl zzt = zzjlVar.zzt(this.zzo);
                    this.zzo = zzt;
                    zzjlVar2 = zzt;
                    z13 = z11;
                    z11 = true;
                } else {
                    zzjlVar2 = zzjlVar;
                    z12 = false;
                    z13 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (!z11) {
            this.zzu.zzaV().zzi().zzb("Ignoring lower-priority consent settings, proposed settings", zzjlVar2);
            return;
        }
        long andIncrement = this.zzp.getAndIncrement();
        if (z12) {
            this.zzg.set(null);
            zzku zzkuVar = new zzku(this, zzjlVar2, andIncrement, z13);
            if (z10) {
                zzg();
                zzkuVar.run();
                return;
            }
            this.zzu.zzaW().zzl(zzkuVar);
            return;
        }
        zzkv zzkvVar = new zzkv(this, zzjlVar2, andIncrement, z13);
        if (z10) {
            zzg();
            zzkvVar.run();
        } else if (zzb != 30 && zzb != -10) {
            this.zzu.zzaW().zzj(zzkvVar);
        } else {
            this.zzu.zzaW().zzl(zzkvVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzt(Runnable runnable) {
        zzb();
        zzic zzicVar = this.zzu;
        if (!zzicVar.zzaW().zze()) {
            if (!zzicVar.zzaW().zzf()) {
                zzicVar.zzaU();
                if (!zzae.zza()) {
                    zzicVar.zzaV().zzk().zza("[sgtm] Started client-side batch upload work.");
                    boolean z10 = false;
                    int i10 = 0;
                    int i11 = 0;
                    while (!z10) {
                        zzicVar.zzaV().zzk().zza("[sgtm] Getting upload batches from service (FE)");
                        final AtomicReference atomicReference = new AtomicReference();
                        zzicVar.zzaW().zzk(atomicReference, 10000L, "[sgtm] Getting upload batches", new Runnable() { // from class: com.google.android.gms.measurement.internal.zzli
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzlj.this.zzu.zzt().zzx(atomicReference, zzoo.zza(zzls.SGTM_CLIENT));
                            }
                        });
                        zzoq zzoqVar = (zzoq) atomicReference.get();
                        if (zzoqVar == null) {
                            break;
                        }
                        List list = zzoqVar.zza;
                        if (!list.isEmpty()) {
                            zzicVar.zzaV().zzk().zzb("[sgtm] Retrieved upload batches. count", Integer.valueOf(list.size()));
                            i10 += list.size();
                            Iterator it = list.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    zzlr zzar = zzar((zzom) it.next());
                                    if (zzar == zzlr.SUCCESS) {
                                        i11++;
                                    } else if (zzar == zzlr.BACKOFF) {
                                        z10 = true;
                                        break;
                                    }
                                } else {
                                    z10 = false;
                                    break;
                                }
                            }
                        } else {
                            break;
                        }
                    }
                    zzicVar.zzaV().zzk().zzc("[sgtm] Completed client-side batch upload work. total, success", Integer.valueOf(i10), Integer.valueOf(i11));
                    runnable.run();
                    return;
                }
                zzicVar.zzaV().zzb().zza("Cannot retrieve and upload batches from main thread");
                return;
            }
            zzicVar.zzaV().zzb().zza("Cannot retrieve and upload batches from analytics network thread");
            return;
        }
        zzicVar.zzaV().zzb().zza("Cannot retrieve and upload batches from analytics worker thread");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzu(long j10) {
        zzg();
        if (this.zzl == null) {
            this.zzl = new zzju(this, this.zzu);
        }
        this.zzl.zzb(j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzv() {
        zzg();
        zzay zzayVar = this.zzl;
        if (zzayVar != null) {
            zzayVar.zzd();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzw() {
        zzqp.zza();
        zzic zzicVar = this.zzu;
        if (zzicVar.zzc().zzp(null, zzfy.zzaQ)) {
            if (!zzicVar.zzaW().zze()) {
                zzicVar.zzaU();
                if (!zzae.zza()) {
                    zzb();
                    zzicVar.zzaV().zzk().zza("Getting trigger URIs (FE)");
                    final AtomicReference atomicReference = new AtomicReference();
                    zzicVar.zzaW().zzk(atomicReference, 10000L, "get trigger URIs", new Runnable() { // from class: com.google.android.gms.measurement.internal.zzla
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzlj zzljVar = zzlj.this;
                            zzljVar.zzu.zzt().zzw(atomicReference, zzljVar.zzu.zzd().zzi.zza());
                        }
                    });
                    final List list = (List) atomicReference.get();
                    if (list == null) {
                        zzicVar.zzaV().zzd().zza("Timed out waiting for get trigger URIs");
                        return;
                    } else {
                        zzicVar.zzaW().zzj(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlb
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                boolean contains;
                                zzlj zzljVar = zzlj.this;
                                zzljVar.zzg();
                                if (Build.VERSION.SDK_INT < 30) {
                                    return;
                                }
                                List<zzoh> list2 = list;
                                SparseArray zzf = zzljVar.zzu.zzd().zzf();
                                for (zzoh zzohVar : list2) {
                                    int i10 = zzohVar.zzc;
                                    contains = zzf.contains(i10);
                                    if (!contains || ((Long) zzf.get(i10)).longValue() < zzohVar.zzb) {
                                        zzljVar.zzy().add(zzohVar);
                                    }
                                }
                                zzljVar.zzz();
                            }
                        });
                        return;
                    }
                }
                zzicVar.zzaV().zzb().zza("Cannot get trigger URIs from main thread");
                return;
            }
            zzicVar.zzaV().zzb().zza("Cannot get trigger URIs from analytics worker thread");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzx() {
        return this.zzn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(30)
    public final PriorityQueue zzy() {
        if (this.zzm == null) {
            this.zzm = new PriorityQueue(Comparator.comparing(zzlc.zza, zzld.zza));
        }
        return this.zzm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(30)
    @WorkerThread
    public final void zzz() {
        zzoh zzohVar;
        zzg();
        this.zzn = false;
        if (!zzy().isEmpty() && !this.zzi && (zzohVar = (zzoh) zzy().poll()) != null) {
            zzic zzicVar = this.zzu;
            MeasurementManagerFutures zzT = zzicVar.zzk().zzT();
            if (zzT != null) {
                this.zzi = true;
                zzgs zzk = zzicVar.zzaV().zzk();
                String str = zzohVar.zza;
                zzk.zzb("Registering trigger URI", str);
                com.google.common.util.concurrent.e<Unit> registerTriggerAsync = zzT.registerTriggerAsync(Uri.parse(str));
                if (registerTriggerAsync == null) {
                    this.zzi = false;
                    zzy().add(zzohVar);
                    return;
                }
                com.google.common.util.concurrent.b.a(registerTriggerAsync, new zzjw(this, zzohVar), new zzjv(this));
            }
        }
    }
}
