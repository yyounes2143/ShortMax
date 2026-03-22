package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.internal.ads.zzbfj;
import com.google.android.gms.internal.ads.zzdso;
import com.mbridge.msdk.MBridgeConstans;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzp extends QueryInfoGenerationCallback {
    private final zzo zza;
    private final zzdso zzb;
    private final boolean zzc;
    private final int zzd;
    private final long zze = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
    @Nullable
    private final Boolean zzf;

    public zzp(zzo zzoVar, boolean z10, int i10, @Nullable Boolean bool, zzdso zzdsoVar) {
        this.zza = zzoVar;
        this.zzc = z10;
        this.zzd = i10;
        this.zzf = bool;
        this.zzb = zzdsoVar;
    }

    private static long zza() {
        return com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() + ((Long) zzbfj.zzh.zze()).longValue();
    }

    private final long zzb() {
        return com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - this.zze;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onFailure(String str) {
        String str2;
        Pair pair = new Pair("sgf_reason", str);
        Pair pair2 = new Pair("se", "query_g");
        Pair pair3 = new Pair("ad_format", AdFormat.BANNER.name());
        Pair pair4 = new Pair("rtype", Integer.toString(6));
        Pair pair5 = new Pair("scar", "true");
        Pair pair6 = new Pair("lat_ms", Long.toString(zzb()));
        int i10 = this.zzd;
        Pair pair7 = new Pair("sgpc_rn", Integer.toString(i10));
        Pair pair8 = new Pair("sgpc_lsu", String.valueOf(this.zzf));
        boolean z10 = this.zzc;
        if (true != z10) {
            str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        } else {
            str2 = "1";
        }
        zzaa.zzd(this.zzb, null, "sgpcf", pair, pair2, pair3, pair4, pair5, pair6, pair7, pair8, new Pair("tpc", str2));
        this.zza.zzf(z10, new zzq(null, str, zza(), i10));
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onSuccess(QueryInfo queryInfo) {
        String str;
        Pair pair = new Pair("se", "query_g");
        Pair pair2 = new Pair("ad_format", AdFormat.BANNER.name());
        Pair pair3 = new Pair("rtype", Integer.toString(6));
        Pair pair4 = new Pair("scar", "true");
        Pair pair5 = new Pair("lat_ms", Long.toString(zzb()));
        int i10 = this.zzd;
        Pair pair6 = new Pair("sgpc_rn", Integer.toString(i10));
        Pair pair7 = new Pair("sgpc_lsu", String.valueOf(this.zzf));
        boolean z10 = this.zzc;
        if (true != z10) {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        } else {
            str = "1";
        }
        zzaa.zzd(this.zzb, null, "sgpcs", pair, pair2, pair3, pair4, pair5, pair6, pair7, new Pair("tpc", str));
        this.zza.zzf(z10, new zzq(queryInfo, "", zza(), i10));
    }
}
