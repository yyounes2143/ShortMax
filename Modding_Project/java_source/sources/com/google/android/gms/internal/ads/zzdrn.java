package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsCallback;
import com.google.android.gms.ads.MobileAds;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadService;
import com.ss.texturerender.TextureRenderKeys;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdrn implements zzdax, com.google.android.gms.ads.internal.client.zza, zzcws, zzcwc, zzcyo {
    private final Context zzc;
    private final zzfdo zzd;
    private final zzdsj zze;
    private final zzfcn zzf;
    private final zzfca zzg;
    private final zzeca zzh;
    private final String zzi;
    @Nullable
    private Boolean zzk;
    private long zzj = -1;
    @VisibleForTesting
    final AtomicBoolean zza = new AtomicBoolean(false);
    @VisibleForTesting
    final AtomicBoolean zzb = new AtomicBoolean(false);
    private final boolean zzl = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgZ)).booleanValue();

    public zzdrn(Context context, zzfdo zzfdoVar, zzdsj zzdsjVar, zzfcn zzfcnVar, zzfca zzfcaVar, zzeca zzecaVar, String str) {
        this.zzc = context;
        this.zzd = zzfdoVar;
        this.zze = zzdsjVar;
        this.zzf = zzfcnVar;
        this.zzg = zzfcaVar;
        this.zzh = zzecaVar;
        this.zzi = str;
    }

    private final zzdsi zzf(String str) {
        String str2;
        zzfcn zzfcnVar = this.zzf;
        zzfcm zzfcmVar = zzfcnVar.zzb;
        zzdsi zza = this.zze.zza();
        zza.zzd(zzfcmVar.zzb);
        zzfca zzfcaVar = this.zzg;
        zza.zzc(zzfcaVar);
        zza.zzb(TextureRenderKeys.KEY_IS_ACTION, str);
        zza.zzb("ad_format", this.zzi.toUpperCase(Locale.ROOT));
        List list = zzfcaVar.zzt;
        if (!list.isEmpty()) {
            zza.zzb("ancn", (String) list.get(0));
        }
        if (zzfcaVar.zzb()) {
            if (true != com.google.android.gms.ads.internal.zzv.zzp().zzA(this.zzc)) {
                str2 = "offline";
            } else {
                str2 = CustomTabsCallback.ONLINE_EXTRAS_KEY;
            }
            zza.zzb("device_connectivity", str2);
            zza.zzb("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis()));
            zza.zzb("offline_ad", "1");
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhg)).booleanValue()) {
            boolean zzf = com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzf(zzfcnVar);
            zza.zzb("scar", String.valueOf(zzf));
            if (zzf) {
                com.google.android.gms.ads.internal.client.zzm zzmVar = zzfcnVar.zza.zza.zzd;
                zza.zzb("ragent", zzmVar.zzp);
                zza.zzb("rtype", com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzb(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(zzmVar)));
            }
        }
        return zza;
    }

    private final void zzg(zzdsi zzdsiVar) {
        if (this.zzg.zzb()) {
            this.zzh.zzd(new zzecc(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis(), this.zzf.zzb.zzb.zzb, zzdsiVar.zze(), 2));
            return;
        }
        zzdsiVar.zzj();
    }

    private final boolean zzh() {
        int i10 = this.zzg.zzb;
        if (i10 != 2 && i10 != 5 && i10 != 6 && i10 != 7) {
            return false;
        }
        return true;
    }

    private final boolean zzi() {
        String str;
        if (this.zzk == null) {
            synchronized (this) {
                if (this.zzk == null) {
                    String str2 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbF);
                    com.google.android.gms.ads.internal.zzv.zzr();
                    try {
                        str = com.google.android.gms.ads.internal.util.zzs.zzq(this.zzc);
                    } catch (RemoteException unused) {
                        str = null;
                    }
                    boolean z10 = false;
                    if (str2 != null && str != null) {
                        try {
                            z10 = Pattern.matches(str2, str);
                        } catch (RuntimeException e10) {
                            com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "CsiActionsListener.isPatternMatched");
                        }
                    }
                    this.zzk = Boolean.valueOf(z10);
                }
            }
        }
        return this.zzk.booleanValue();
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        if (!this.zzg.zzb()) {
            return;
        }
        zzg(zzf("click"));
    }

    @Override // com.google.android.gms.internal.ads.zzcwc
    public final void zzc(com.google.android.gms.ads.internal.client.zze zzeVar) {
        com.google.android.gms.ads.internal.client.zze zzeVar2;
        if (!this.zzl) {
            return;
        }
        zzdsi zzf = zzf("ifts");
        zzf.zzb("reason", "adapter");
        int i10 = zzeVar.zza;
        String str = zzeVar.zzb;
        if (zzeVar.zzc.equals(MobileAds.ERROR_DOMAIN) && (zzeVar2 = zzeVar.zzd) != null && !zzeVar2.zzc.equals(MobileAds.ERROR_DOMAIN)) {
            com.google.android.gms.ads.internal.client.zze zzeVar3 = zzeVar.zzd;
            i10 = zzeVar3.zza;
            str = zzeVar3.zzb;
        }
        if (i10 >= 0) {
            zzf.zzb("arec", String.valueOf(i10));
        }
        String zza = this.zzd.zza(str);
        if (zza != null) {
            zzf.zzb("areec", zza);
        }
        zzf.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzcwc
    public final void zzd() {
        if (!this.zzl) {
            return;
        }
        zzdsi zzf = zzf("ifts");
        zzf.zzb("reason", "blocked");
        zzf.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzdp() {
        if (!zzi()) {
            return;
        }
        zzf("adapter_shown").zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzdq() {
        String str;
        if (!zzi()) {
            return;
        }
        zzdsi zzf = zzf("adapter_impression");
        zzf.zzb("imp_type", String.valueOf(this.zzg.zze));
        boolean z10 = this.zzb.get();
        String str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        if (z10) {
            zzf.zzb("po", "1");
            zzf.zzb("pil", String.valueOf(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - this.zzj));
        } else {
            zzf.zzb("po", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznL)).booleanValue() && zzh()) {
            com.google.android.gms.ads.internal.zzv.zzr();
            if (true != com.google.android.gms.ads.internal.util.zzs.zzH(this.zzc)) {
                str = "1";
            } else {
                str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            }
            zzf.zzb(DownloadService.KEY_FOREGROUND, str);
            if (true == this.zza.get()) {
                str2 = "1";
            }
            zzf.zzb("fg_show", str2);
        }
        zzf.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzcwc
    public final void zze(zzdgm zzdgmVar) {
        if (!this.zzl) {
            return;
        }
        zzdsi zzf = zzf("ifts");
        zzf.zzb("reason", "exception");
        if (!TextUtils.isEmpty(zzdgmVar.getMessage())) {
            zzf.zzb("msg", zzdgmVar.getMessage());
        }
        zzf.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzcws
    public final void zzt() {
        String str;
        if (!zzi() && !this.zzg.zzb()) {
            return;
        }
        zzdsi zzf = zzf("impression");
        zzf.zzb("imp_type", String.valueOf(this.zzg.zze));
        if (this.zzj > 0) {
            zzf.zzb("p_imp_l", String.valueOf(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - this.zzj));
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznL)).booleanValue() && zzh()) {
            com.google.android.gms.ads.internal.zzv.zzr();
            boolean zzH = com.google.android.gms.ads.internal.util.zzs.zzH(this.zzc);
            String str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            if (true != zzH) {
                str = "1";
            } else {
                str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            }
            zzf.zzb(DownloadService.KEY_FOREGROUND, str);
            if (true == this.zza.get()) {
                str2 = "1";
            }
            zzf.zzb("fg_show", str2);
        }
        zzg(zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzcyo
    public final void zzv() {
        String str;
        if (!zzi()) {
            return;
        }
        this.zzb.set(true);
        this.zzj = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
        zzdsi zzf = zzf("presentation");
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznL)).booleanValue() && zzh()) {
            AtomicBoolean atomicBoolean = this.zza;
            com.google.android.gms.ads.internal.zzv.zzr();
            atomicBoolean.set(!com.google.android.gms.ads.internal.util.zzs.zzH(this.zzc));
            if (true != atomicBoolean.get()) {
                str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            } else {
                str = "1";
            }
            zzf.zzb(DownloadService.KEY_FOREGROUND, str);
        }
        zzf.zzj();
    }
}
