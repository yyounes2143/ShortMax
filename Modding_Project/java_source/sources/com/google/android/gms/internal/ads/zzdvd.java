package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdvd {
    private final zzdun zza;
    private final zzdpw zzb;
    private final Object zzc = new Object();
    @GuardedBy("lock")
    private final List zzd = new ArrayList();
    @GuardedBy("lock")
    private boolean zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdvd(zzdun zzdunVar, zzdpw zzdpwVar) {
        this.zza = zzdunVar;
        this.zzb = zzdpwVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzd(List list) {
        String str;
        boolean z10;
        zzdpv zza;
        zzbse zzbseVar;
        synchronized (this.zzc) {
            try {
                if (this.zze) {
                    return;
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    zzbmd zzbmdVar = (zzbmd) it.next();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjL)).booleanValue()) {
                        zzdpv zza2 = this.zzb.zza(zzbmdVar.zza);
                        if (zza2 != null && (zzbseVar = zza2.zzc) != null) {
                            str = zzbseVar.toString();
                        }
                        str = "";
                    } else {
                        str = "";
                    }
                    String str2 = str;
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjM)).booleanValue() || (zza = this.zzb.zza(zzbmdVar.zza)) == null || !zza.zzd) {
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                    List list2 = this.zzd;
                    String str3 = zzbmdVar.zza;
                    list2.add(new zzdvc(str3, str2, this.zzb.zzb(str3), zzbmdVar.zzb ? 1 : 0, zzbmdVar.zzd, zzbmdVar.zzc, z10));
                }
                this.zze = true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final JSONArray zza() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        synchronized (this.zzc) {
            try {
                if (!this.zze) {
                    zzdun zzdunVar = this.zza;
                    if (zzdunVar.zzt()) {
                        zzd(zzdunVar.zzg());
                    } else {
                        zzc();
                    }
                }
                for (zzdvc zzdvcVar : this.zzd) {
                    jSONArray.put(zzdvcVar.zza());
                }
            } finally {
            }
        }
        return jSONArray;
    }

    public final void zzc() {
        this.zza.zzs(new zzdvb(this));
    }
}
