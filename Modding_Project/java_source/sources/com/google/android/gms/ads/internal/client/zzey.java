package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdInspectorError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.OnAdInspectorClosedListener;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.preload.PreloadCallback;
import com.google.android.gms.ads.preload.PreloadConfiguration;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbmd;
import com.google.android.gms.internal.ads.zzbml;
import com.google.android.gms.internal.ads.zzbmm;
import com.google.android.gms.internal.ads.zzfwg;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzey {
    public static final Set zza = new HashSet(Arrays.asList(AdFormat.APP_OPEN_AD, AdFormat.INTERSTITIAL, AdFormat.REWARDED));
    private static zzey zzb;
    private zzep zzc;
    private zzfc zzd;
    private zzeo zze;
    private zzdb zzl;
    private final Object zzf = new Object();
    private final Object zzg = new Object();
    private boolean zzi = false;
    private boolean zzj = false;
    private final Object zzk = new Object();
    @Nullable
    private OnAdInspectorClosedListener zzm = null;
    @NonNull
    private RequestConfiguration zzn = new RequestConfiguration.Builder().build();
    private final ArrayList zzh = new ArrayList();

    private zzey() {
    }

    public static InitializationStatus zzA(List list) {
        AdapterStatus.State state;
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzbmd zzbmdVar = (zzbmd) it.next();
            String str = zzbmdVar.zza;
            if (zzbmdVar.zzb) {
                state = AdapterStatus.State.READY;
            } else {
                state = AdapterStatus.State.NOT_READY;
            }
            hashMap.put(str, new zzbml(state, zzbmdVar.zzd, zzbmdVar.zzc));
        }
        return new zzbmm(hashMap);
    }

    private final void zzB(@Nullable String str) {
        try {
            this.zzl.zzk();
            this.zzl.zzl(null, ObjectWrapper.wrap(null));
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzk("MobileAdsSettingManager initialization failed", e10);
        }
    }

    private final void zzC(Context context) {
        if (this.zzl == null) {
            this.zzl = (zzdb) new zzau(zzbb.zza(), context).zzd(context, false);
        }
    }

    private final void zzD(@NonNull RequestConfiguration requestConfiguration) {
        try {
            this.zzl.zzu(new zzfx(requestConfiguration));
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to set request configuration parcel.", e10);
        }
    }

    public static zzey zzf() {
        zzey zzeyVar;
        synchronized (zzey.class) {
            try {
                if (zzb == null) {
                    zzb = new zzey();
                }
                zzeyVar = zzb;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzeyVar;
    }

    public static /* synthetic */ void zzl(zzey zzeyVar, String str) {
        synchronized (zzeyVar.zzk) {
            zzeyVar.zzB(null);
        }
    }

    public static /* synthetic */ void zzm(zzey zzeyVar, String str) {
        synchronized (zzeyVar.zzk) {
            zzeyVar.zzB(null);
        }
    }

    public final float zza() {
        synchronized (this.zzk) {
            zzdb zzdbVar = this.zzl;
            float f10 = 1.0f;
            if (zzdbVar == null) {
                return 1.0f;
            }
            try {
                f10 = zzdbVar.zze();
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to get app volume.", e10);
            }
            return f10;
        }
    }

    @NonNull
    public final RequestConfiguration zzc() {
        return this.zzn;
    }

    public final InitializationStatus zze() {
        boolean z10;
        InitializationStatus zzA;
        synchronized (this.zzk) {
            try {
                if (this.zzl != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                Preconditions.checkState(z10, "MobileAds.initialize() must be called prior to getting initialization status.");
                try {
                    zzA = zzA(this.zzl.zzg());
                } catch (RemoteException unused) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to get Initialization status.");
                    return new InitializationStatus() { // from class: com.google.android.gms.ads.internal.client.zzeq
                        @Override // com.google.android.gms.ads.initialization.InitializationStatus
                        public final Map getAdapterStatusMap() {
                            HashMap hashMap = new HashMap();
                            hashMap.put("com.google.android.gms.ads.MobileAds", new zzeu(zzey.this));
                            return hashMap;
                        }
                    };
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzA;
    }

    @Nullable
    public final com.google.android.gms.ads.preload.zzb zzg(AdFormat adFormat) {
        AdFormat adFormat2 = AdFormat.BANNER;
        int ordinal = adFormat.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 5) {
                    return null;
                }
                return this.zze;
            }
            return this.zzd;
        }
        return this.zzc;
    }

    public final Status zzh(@NonNull Context context, @NonNull List list, @NonNull PreloadCallback preloadCallback) {
        boolean z10;
        Status status;
        zzbde.zza(context);
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            PreloadConfiguration preloadConfiguration = (PreloadConfiguration) it.next();
            String str = String.valueOf(preloadConfiguration.getAdFormat()) + "#" + preloadConfiguration.getAdUnitId();
            hashMap.put(str, Integer.valueOf(((Integer) com.google.android.gms.ads.internal.util.client.zzf.zzi(hashMap, str, 0)).intValue() + 1));
        }
        Iterator it2 = hashMap.entrySet().iterator();
        while (true) {
            if (it2.hasNext()) {
                if (((Integer) ((Map.Entry) it2.next()).getValue()).intValue() > 1) {
                    hashSet.add("Preload configurations include duplicated ad unit IDs and ad format combinations");
                    z10 = true;
                    break;
                }
            } else {
                z10 = false;
                break;
            }
        }
        HashMap hashMap2 = new HashMap();
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            PreloadConfiguration preloadConfiguration2 = (PreloadConfiguration) it3.next();
            AdFormat adFormat = preloadConfiguration2.getAdFormat();
            if (!zza.contains(preloadConfiguration2.getAdFormat())) {
                hashSet.add("PreloadConfiguration ad format is not supported:".concat(String.valueOf(preloadConfiguration2.getAdFormat())));
            } else {
                hashMap2.put(adFormat, Integer.valueOf(((Integer) com.google.android.gms.ads.internal.util.client.zzf.zzi(hashMap2, adFormat, 0)).intValue() + 1));
                if (preloadConfiguration2.getBufferSize() > 15) {
                    hashSet.add(String.format(Locale.US, "Preload configurations' buffer size exceeds the maximum limit %d for %s", 15, adFormat.name()));
                } else if (preloadConfiguration2.getBufferSize() < 0) {
                    hashSet.add(String.format(Locale.US, "Preload configurations' buffer size less than 0 for %s", adFormat.name()));
                }
            }
            z10 = true;
        }
        EnumMap enumMap = new EnumMap(AdFormat.class);
        enumMap.put((EnumMap) AdFormat.APP_OPEN_AD, (AdFormat) ((Integer) zzbd.zzc().zzb(zzbde.zzeO)));
        enumMap.put((EnumMap) AdFormat.INTERSTITIAL, (AdFormat) ((Integer) zzbd.zzc().zzb(zzbde.zzeM)));
        enumMap.put((EnumMap) AdFormat.REWARDED, (AdFormat) ((Integer) zzbd.zzc().zzb(zzbde.zzeN)));
        for (Map.Entry entry : hashMap2.entrySet()) {
            AdFormat adFormat2 = (AdFormat) entry.getKey();
            int intValue = ((Integer) entry.getValue()).intValue();
            Integer num = (Integer) com.google.android.gms.ads.internal.util.client.zzf.zzi(enumMap, adFormat2, 0);
            if (intValue > num.intValue()) {
                hashSet.add(String.format(Locale.US, "Preload configurations' size exceeds the maximum limit %d for %s", num, adFormat2.name()));
                z10 = true;
            }
        }
        if (z10) {
            StringBuilder sb2 = new StringBuilder();
            Iterator it4 = hashSet.iterator();
            while (it4.hasNext()) {
                sb2.append((String) it4.next());
                if (it4.hasNext()) {
                    sb2.append(", ");
                }
            }
            String sb3 = sb2.toString();
            com.google.android.gms.ads.internal.util.client.zzo.zzg(sb3);
            status = new Status(13, sb3);
        } else {
            status = Status.RESULT_SUCCESS;
        }
        String statusMessage = status.getStatusMessage();
        if (statusMessage == null) {
            statusMessage = "";
        }
        Preconditions.checkArgument(status.isSuccess(), statusMessage);
        synchronized (this.zzg) {
            ArrayList arrayList = new ArrayList();
            Iterator it5 = list.iterator();
            while (it5.hasNext()) {
                arrayList.add(com.google.android.gms.ads.internal.util.client.zzf.zze(context, (PreloadConfiguration) it5.next(), 1));
            }
            try {
                com.google.android.gms.ads.zzb.zza(context).zzp(arrayList, new zzet(this, preloadCallback));
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to start preload.", e10);
                return Status.RESULT_INTERNAL_ERROR;
            }
        }
        return Status.RESULT_SUCCESS;
    }

    public final String zzj() {
        boolean z10;
        String zzc;
        synchronized (this.zzk) {
            try {
                if (this.zzl != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                Preconditions.checkState(z10, "MobileAds.initialize() must be called prior to getting version string.");
                try {
                    zzc = zzfwg.zzc(this.zzl.zzf());
                } catch (RemoteException e10) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to get internal version.", e10);
                    return "";
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzc;
    }

    public final void zzp(Context context) {
        synchronized (this.zzk) {
            zzC(context);
            try {
                this.zzl.zzi();
            } catch (RemoteException unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to disable mediation adapter initialization.");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x007e A[Catch: all -> 0x005d, TryCatch #1 {all -> 0x005d, RemoteException -> 0x0060, blocks: (B:88:0x0034, B:90:0x0054, B:100:0x006d, B:102:0x007e, B:104:0x0090, B:111:0x00d3, B:112:0x00e8, B:105:0x00a0, B:107:0x00ae, B:109:0x00c0, B:110:0x00cb, B:97:0x0062, B:99:0x0068), top: B:120:0x0034 }] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x00ae A[Catch: all -> 0x005d, TryCatch #1 {all -> 0x005d, RemoteException -> 0x0060, blocks: (B:88:0x0034, B:90:0x0054, B:100:0x006d, B:102:0x007e, B:104:0x0090, B:111:0x00d3, B:112:0x00e8, B:105:0x00a0, B:107:0x00ae, B:109:0x00c0, B:110:0x00cb, B:97:0x0062, B:99:0x0068), top: B:120:0x0034 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzq(android.content.Context r3, @androidx.annotation.Nullable java.lang.String r4, @androidx.annotation.Nullable com.google.android.gms.ads.initialization.OnInitializationCompleteListener r5) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.client.zzey.zzq(android.content.Context, java.lang.String, com.google.android.gms.ads.initialization.OnInitializationCompleteListener):void");
    }

    public final void zzr(Context context, OnAdInspectorClosedListener onAdInspectorClosedListener) {
        synchronized (this.zzk) {
            zzC(context);
            this.zzm = onAdInspectorClosedListener;
            try {
                this.zzl.zzm(new zzev(null));
            } catch (RemoteException unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to open the ad inspector.");
                if (onAdInspectorClosedListener != null) {
                    onAdInspectorClosedListener.onAdInspectorClosed(new AdInspectorError(0, "Ad inspector had an internal error.", MobileAds.ERROR_DOMAIN));
                }
            }
        }
    }

    public final void zzs(Context context, String str) {
        boolean z10;
        synchronized (this.zzk) {
            if (this.zzl != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            Preconditions.checkState(z10, "MobileAds.initialize() must be called prior to opening debug menu.");
            try {
                this.zzl.zzn(ObjectWrapper.wrap(context), str);
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to open debug menu.", e10);
            }
        }
    }

    public final void zzt(Class cls) {
        synchronized (this.zzk) {
            try {
                this.zzl.zzh(cls.getCanonicalName());
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to register RtbAdapter", e10);
            }
        }
    }

    public final void zzu(boolean z10) {
        boolean z11;
        synchronized (this.zzk) {
            if (this.zzl != null) {
                z11 = true;
            } else {
                z11 = false;
            }
            Preconditions.checkState(z11, "MobileAds.initialize() must be called prior to setting app muted state.");
            try {
                this.zzl.zzp(z10);
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to set app mute state.", e10);
            }
        }
    }

    public final void zzv(float f10) {
        boolean z10;
        boolean z11 = true;
        if (f10 >= 0.0f && f10 <= 1.0f) {
            z10 = true;
        } else {
            z10 = false;
        }
        Preconditions.checkArgument(z10, "The app volume must be a value between 0 and 1 inclusive.");
        synchronized (this.zzk) {
            if (this.zzl == null) {
                z11 = false;
            }
            Preconditions.checkState(z11, "MobileAds.initialize() must be called prior to setting the app volume.");
            try {
                this.zzl.zzq(f10);
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to set app volume.", e10);
            }
        }
    }

    public final void zzw(String str) {
        boolean z10;
        synchronized (this.zzk) {
            if (this.zzl != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            Preconditions.checkState(z10, "MobileAds.initialize() must be called prior to setting the plugin.");
            try {
                this.zzl.zzt(str);
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to set plugin.", e10);
            }
        }
    }

    public final void zzx(@NonNull RequestConfiguration requestConfiguration) {
        boolean z10;
        if (requestConfiguration != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        Preconditions.checkArgument(z10, "Null passed to setRequestConfiguration.");
        synchronized (this.zzk) {
            try {
                RequestConfiguration requestConfiguration2 = this.zzn;
                this.zzn = requestConfiguration;
                if (this.zzl == null) {
                    return;
                }
                if (requestConfiguration2.getTagForChildDirectedTreatment() != requestConfiguration.getTagForChildDirectedTreatment() || requestConfiguration2.getTagForUnderAgeOfConsent() != requestConfiguration.getTagForUnderAgeOfConsent()) {
                    zzD(requestConfiguration);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean zzy() {
        synchronized (this.zzk) {
            zzdb zzdbVar = this.zzl;
            boolean z10 = false;
            if (zzdbVar == null) {
                return false;
            }
            try {
                z10 = zzdbVar.zzv();
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to get app mute state.", e10);
            }
            return z10;
        }
    }

    public final boolean zzz(boolean z10) {
        boolean z11;
        String str;
        synchronized (this.zzk) {
            try {
                if (this.zzl != null) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                Preconditions.checkState(z11, "MobileAds.initialize() must be called prior to enable/disable the publisher first-party ID.");
                try {
                    this.zzl.zzj(z10);
                } catch (RemoteException e10) {
                    if (z10) {
                        str = "enable";
                    } else {
                        str = "disable";
                    }
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to " + str + " the publisher first-party ID.", e10);
                    return false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return true;
    }
}
