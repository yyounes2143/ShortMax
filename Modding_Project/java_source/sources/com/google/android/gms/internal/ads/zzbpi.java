package com.google.android.gms.internal.ads;

import java.util.UUID;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbpi implements zzgcu {
    private final String zza = "google.afma.activeView.handleUpdate";
    private final com.google.common.util.concurrent.e zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbpi(com.google.common.util.concurrent.e eVar, String str, zzbop zzbopVar, zzboo zzbooVar) {
        this.zzb = eVar;
    }

    public static /* synthetic */ com.google.common.util.concurrent.e zzb(zzbpi zzbpiVar, Object obj, zzboj zzbojVar) {
        zzcak zzcakVar = new zzcak();
        com.google.android.gms.ads.internal.zzv.zzr();
        String uuid = UUID.randomUUID().toString();
        zzbke.zzo.zzc(uuid, new zzbph(zzbpiVar, zzcakVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", uuid);
        jSONObject.put("args", (JSONObject) obj);
        zzbojVar.zzp(zzbpiVar.zza, jSONObject);
        return zzcakVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final com.google.common.util.concurrent.e zza(Object obj) throws Exception {
        return zzc(obj);
    }

    public final com.google.common.util.concurrent.e zzc(final Object obj) {
        return zzgdn.zzn(this.zzb, new zzgcu() { // from class: com.google.android.gms.internal.ads.zzbpg
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final com.google.common.util.concurrent.e zza(Object obj2) {
                return zzbpi.zzb(zzbpi.this, obj, (zzboj) obj2);
            }
        }, zzcaf.zzg);
    }
}
