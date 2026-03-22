package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzdso;
import com.google.android.gms.internal.ads.zzgdj;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzat implements zzgdj {
    final /* synthetic */ zzau zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzat(zzau zzauVar) {
        Objects.requireNonNull(zzauVar);
        this.zza = zzauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        zzdso zzdsoVar;
        AtomicInteger atomicInteger;
        AtomicBoolean atomicBoolean;
        AtomicInteger atomicInteger2;
        com.google.android.gms.ads.internal.zzv.zzp().zzw(th2, "SignalGeneratorImpl.initializeWebViewForSignalCollection");
        zzau zzauVar = this.zza;
        zzdsoVar = zzauVar.zzp;
        Pair pair = new Pair("sgf_reason", th2.getMessage());
        Pair pair2 = new Pair("se", "query_g");
        Pair pair3 = new Pair("ad_format", AdFormat.BANNER.name());
        Pair pair4 = new Pair("rtype", Integer.toString(6));
        Pair pair5 = new Pair("scar", "true");
        atomicInteger = zzauVar.zzH;
        zzaa.zzd(zzdsoVar, null, "sgf", pair, pair2, pair3, pair4, pair5, new Pair("sgi_rn", Integer.toString(atomicInteger.get())));
        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to initialize webview for loading SDKCore. ", th2);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkf)).booleanValue()) {
            atomicBoolean = zzauVar.zzG;
            if (!atomicBoolean.get()) {
                atomicInteger2 = zzauVar.zzH;
                if (atomicInteger2.getAndIncrement() < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkg)).intValue()) {
                    zzauVar.zzT();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(@Nullable Object obj) {
        zzdso zzdsoVar;
        AtomicInteger atomicInteger;
        AtomicBoolean atomicBoolean;
        zzbk zzbkVar = (zzbk) obj;
        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zze("Initialized webview successfully for SDKCore.");
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkf)).booleanValue()) {
            zzau zzauVar = this.zza;
            zzdsoVar = zzauVar.zzp;
            Pair pair = new Pair("se", "query_g");
            Pair pair2 = new Pair("ad_format", AdFormat.BANNER.name());
            Pair pair3 = new Pair("rtype", Integer.toString(6));
            Pair pair4 = new Pair("scar", "true");
            atomicInteger = zzauVar.zzH;
            zzaa.zzd(zzdsoVar, null, "sgs", pair, pair2, pair3, pair4, new Pair("sgi_rn", Integer.toString(atomicInteger.get())));
            atomicBoolean = zzauVar.zzG;
            atomicBoolean.set(true);
        }
    }
}
