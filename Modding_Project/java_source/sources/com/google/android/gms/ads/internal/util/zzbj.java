package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzapl;
import com.google.android.gms.internal.ads.zzaqh;
import com.google.android.gms.internal.ads.zzaqi;
import com.google.android.gms.internal.ads.zzari;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbj extends zzari {
    final /* synthetic */ byte[] zza;
    final /* synthetic */ Map zzb;
    final /* synthetic */ com.google.android.gms.ads.internal.util.client.zzl zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbj(zzbo zzboVar, int i10, String str, zzaqi zzaqiVar, zzaqh zzaqhVar, byte[] bArr, Map map, com.google.android.gms.ads.internal.util.client.zzl zzlVar) {
        super(i10, str, zzaqiVar, zzaqhVar);
        this.zza = bArr;
        this.zzb = map;
        this.zzc = zzlVar;
        Objects.requireNonNull(zzboVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaqd
    public final Map zzl() throws zzapl {
        Map map = this.zzb;
        if (map == null) {
            return Collections.emptyMap();
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzari, com.google.android.gms.internal.ads.zzaqd
    public final /* bridge */ /* synthetic */ void zzo(Object obj) {
        zzo((String) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzaqd
    public final byte[] zzx() throws zzapl {
        byte[] bArr = this.zza;
        if (bArr == null) {
            return null;
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzari
    public final void zzz(String str) {
        this.zzc.zzg(str);
        super.zzo(str);
    }
}
