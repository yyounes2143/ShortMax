package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.webkit.WebViewFeature;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.texturerender.TextureRenderKeys;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdrp implements zzcza, zzcxm, zzcwb, zzdep {
    private final zzdsd zza;
    private final zzdso zzb;
    private final int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdrp(zzdsd zzdsdVar, zzdso zzdsoVar, int i10) {
        this.zza = zzdsdVar;
        this.zzb = zzdsoVar;
        this.zzc = i10;
    }

    private final void zzc(@Nullable Bundle bundle) {
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                long j10 = bundle.getLong(str);
                if (j10 >= 0) {
                    this.zza.zzd(str, String.valueOf(j10));
                }
            }
        }
    }

    private final void zzd(Bundle bundle, zzfyq zzfyqVar) {
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcq)).booleanValue() && bundle != null) {
            bundle.putLong(zzdrr.PUBLIC_API_CALLBACK.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
            zzdsd zzdsdVar = this.zza;
            zzdsdVar.zzc();
            String str2 = "1";
            if (bundle.containsKey("ls")) {
                if (true == bundle.getBoolean("ls")) {
                    str = "1";
                } else {
                    str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                }
                zzdsdVar.zzd("ls", str);
            }
            int size = zzfyqVar.size();
            for (int i10 = 0; i10 < size; i10++) {
                zzdrs zzdrsVar = (zzdrs) zzfyqVar.get(i10);
                long j10 = bundle.getLong(zzdrsVar.zza().zza(), -1L);
                long j11 = bundle.getLong(zzdrsVar.zzb().zza(), -1L);
                if (j10 > 0 && j11 > 0) {
                    zzdsdVar.zzd(zzdrsVar.zzc(), String.valueOf(j11 - j10));
                }
            }
            zzc(bundle.getBundle("client_sig_latency_key"));
            zzc(bundle.getBundle("gms_sig_latency_key"));
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhN)).booleanValue()) {
                if (bundle.containsKey("sod_h")) {
                    if (true != bundle.getBoolean("sod_h")) {
                        str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                    }
                    zzdsdVar.zzd("sod_h", str2);
                }
                if (bundle.containsKey("cmr")) {
                    zzdsdVar.zzd("cmr", String.valueOf(bundle.getInt("cmr")));
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwb
    public final void zzdD(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzdsd zzdsdVar = this.zza;
        zzdsdVar.zzb().put(TextureRenderKeys.KEY_IS_ACTION, "ftl");
        zzdsdVar.zzd("ftl", String.valueOf(zzeVar.zza));
        zzdsdVar.zzd("ed", zzeVar.zzc);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhv)).booleanValue()) {
            zzdsdVar.zzd("emsg", zzeVar.zzb);
        }
        this.zzb.zzg(zzdsdVar.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzcza
    public final void zzdn(zzbvq zzbvqVar) {
        this.zza.zzf(zzbvqVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcza
    public final void zzdo(zzfcn zzfcnVar) {
        this.zza.zze(zzfcnVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00ce  */
    @Override // com.google.android.gms.internal.ads.zzdep
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zze(@androidx.annotation.Nullable com.google.android.gms.ads.nonagon.signalgeneration.zzbk r6) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdrp.zze(com.google.android.gms.ads.nonagon.signalgeneration.zzbk):void");
    }

    @Override // com.google.android.gms.internal.ads.zzdep
    public final void zzf(@Nullable String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhg)).booleanValue()) {
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhN)).booleanValue()) {
            this.zza.zzb().put("sgw", String.valueOf(this.zzc));
        }
        zzdsd zzdsdVar = this.zza;
        zzdsdVar.zzb().put(TextureRenderKeys.KEY_IS_ACTION, "sgf");
        zzdsdVar.zzd("sgf_reason", str);
        this.zzb.zzg(zzdsdVar.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzcxm
    public final void zzu() {
        String str;
        zzdsd zzdsdVar = this.zza;
        zzdsdVar.zzb().put(TextureRenderKeys.KEY_IS_ACTION, "loaded");
        zzd(zzdsdVar.zza(), zzdrs.zzb);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzmZ)).booleanValue()) {
            boolean isFeatureSupported = WebViewFeature.isFeatureSupported(WebViewFeature.MUTE_AUDIO);
            Map zzb = zzdsdVar.zzb();
            if (true != isFeatureSupported) {
                str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            } else {
                str = "1";
            }
            zzb.put("mafe", str);
        }
        this.zzb.zzg(zzdsdVar.zzb());
    }
}
