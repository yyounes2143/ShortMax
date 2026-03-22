package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfkj extends com.google.android.gms.ads.internal.client.zzcj {
    private final zzfkp zza;
    private final zzfkc zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfkj(zzfkp zzfkpVar, zzfkc zzfkcVar) {
        this.zza = zzfkpVar;
        this.zzb = zzfkcVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final int zze(int i10, String str) {
        AdFormat adFormat = AdFormat.getAdFormat(i10);
        if (adFormat == null) {
            return 0;
        }
        return this.zzb.zza(adFormat, str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final Bundle zzf(int i10) {
        Map zzf = this.zzb.zzf(i10);
        Bundle bundle = new Bundle();
        for (Map.Entry entry : zzf.entrySet()) {
            bundle.putByteArray((String) entry.getKey(), SafeParcelableSerializer.serializeToBytes((com.google.android.gms.ads.internal.client.zzfv) entry.getValue()));
        }
        return bundle;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    @Nullable
    public final zzbaw zzg(String str) {
        return this.zzb.zzb(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    @Nullable
    public final zzbaw zzh(String str) {
        return this.zza.zza(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzbx zzi(String str) {
        return this.zzb.zzc(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzbx zzj(String str) {
        return this.zza.zzb(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzfv zzk(int i10, String str) {
        AdFormat adFormat = AdFormat.getAdFormat(i10);
        if (adFormat == null) {
            return null;
        }
        return this.zzb.zzd(adFormat, str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    @Nullable
    public final zzbwv zzl(String str) {
        return this.zzb.zze(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    @Nullable
    public final zzbwv zzm(String str) {
        return this.zza.zzc(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final void zzn(int i10) {
        this.zzb.zzg(i10);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final void zzo(zzbpq zzbpqVar) {
        zzfkp zzfkpVar = this.zza;
        zzfkpVar.zzg(zzbpqVar);
        zzfkpVar.zzi();
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final void zzp(List list, com.google.android.gms.ads.internal.client.zzce zzceVar) {
        this.zza.zzh(list, zzceVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final boolean zzq(int i10, String str) {
        AdFormat adFormat = AdFormat.getAdFormat(i10);
        if (adFormat == null) {
            return false;
        }
        return this.zzb.zzh(adFormat, str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final boolean zzr(int i10, String str) {
        AdFormat adFormat = AdFormat.getAdFormat(i10);
        if (adFormat == null) {
            return false;
        }
        return this.zzb.zzi(adFormat, str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final boolean zzs(String str) {
        return this.zza.zzj(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final boolean zzt(String str) {
        return this.zza.zzk(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final boolean zzu(String str) {
        return this.zza.zzl(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final boolean zzv(String str, com.google.android.gms.ads.internal.client.zzfv zzfvVar, @Nullable com.google.android.gms.ads.internal.client.zzch zzchVar) {
        return this.zzb.zzj(str, zzfvVar, zzchVar);
    }
}
