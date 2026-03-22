package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.Iterator;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzami  reason: invalid package */
/* loaded from: classes4.dex */
final class zzami implements zzamf {
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamf
    public final int zza(int i10, Object obj, Object obj2) {
        zzamg zzamgVar = (zzamg) obj;
        zzame zzameVar = (zzame) obj2;
        if (zzamgVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzamgVar.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            entry.getKey();
            entry.getValue();
            throw new NoSuchMethodError();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamf
    public final Object zzb(Object obj) {
        return zzamg.zza().zzb();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamf
    public final Object zzc(Object obj) {
        ((zzamg) obj).zzc();
        return obj;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamf
    public final Map<?, ?> zzd(Object obj) {
        return (zzamg) obj;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamf
    public final Map<?, ?> zze(Object obj) {
        return (zzamg) obj;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamf
    public final boolean zzf(Object obj) {
        if (!((zzamg) obj).zzd()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamf
    public final zzamd<?, ?> zza(Object obj) {
        zzame zzameVar = (zzame) obj;
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamf
    public final Object zza(Object obj, Object obj2) {
        zzamg zzamgVar = (zzamg) obj;
        zzamg zzamgVar2 = (zzamg) obj2;
        if (!zzamgVar2.isEmpty()) {
            if (!zzamgVar.zzd()) {
                zzamgVar = zzamgVar.zzb();
            }
            zzamgVar.zza(zzamgVar2);
        }
        return zzamgVar;
    }
}
