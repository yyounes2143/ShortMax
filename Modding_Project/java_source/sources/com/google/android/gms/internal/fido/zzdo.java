package com.google.android.gms.internal.fido;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
public final class zzdo extends zzdr {
    private final int zza;
    private final zzbg zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdo(zzbg zzbgVar) throws zzdh {
        zzbgVar.getClass();
        this.zzb = zzbgVar;
        zzcb it = zzbgVar.entrySet().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            int zzb = ((zzdr) entry.getKey()).zzb();
            i10 = i10 < zzb ? zzb : i10;
            int zzb2 = ((zzdr) entry.getValue()).zzb();
            if (i10 < zzb2) {
                i10 = zzb2;
            }
        }
        int i11 = i10 + 1;
        this.zza = i11;
        if (i11 <= 4) {
            return;
        }
        throw new zzdh("Exceeded cutoff limit for max depth of cbor value");
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        int compareTo;
        int size;
        int size2;
        zzdr zzdrVar = (zzdr) obj;
        if (zzdr.zzd((byte) -96) != zzdrVar.zza()) {
            size2 = zzdrVar.zza();
            size = zzdr.zzd((byte) -96);
        } else {
            zzdo zzdoVar = (zzdo) zzdrVar;
            if (this.zzb.size() != zzdoVar.zzb.size()) {
                size = this.zzb.size();
                size2 = zzdoVar.zzb.size();
            } else {
                zzcb it = this.zzb.entrySet().iterator();
                zzcb it2 = zzdoVar.zzb.entrySet().iterator();
                do {
                    if (!it.hasNext() && !it2.hasNext()) {
                        return 0;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    Map.Entry entry2 = (Map.Entry) it2.next();
                    int compareTo2 = ((zzdr) entry.getKey()).compareTo((zzdr) entry2.getKey());
                    if (compareTo2 != 0) {
                        return compareTo2;
                    }
                    compareTo = ((zzdr) entry.getValue()).compareTo((zzdr) entry2.getValue());
                } while (compareTo == 0);
                return compareTo;
            }
        }
        return size - size2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzdo.class != obj.getClass()) {
            return false;
        }
        return this.zzb.equals(((zzdo) obj).zzb);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zzdr.zzd((byte) -96)), this.zzb});
    }

    public final String toString() {
        if (this.zzb.isEmpty()) {
            return JsonUtils.EMPTY_JSON;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        zzcb it = this.zzb.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(((zzdr) entry.getKey()).toString().replace("\n", "\n  "), ((zzdr) entry.getValue()).toString().replace("\n", "\n  "));
        }
        zzag zza = zzag.zza(",\n  ");
        StringBuilder sb2 = new StringBuilder("{\n  ");
        try {
            zzaf.zza(sb2, linkedHashMap.entrySet().iterator(), zza, " : ");
            sb2.append("\n}");
            return sb2.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // com.google.android.gms.internal.fido.zzdr
    protected final int zza() {
        return zzdr.zzd((byte) -96);
    }

    @Override // com.google.android.gms.internal.fido.zzdr
    protected final int zzb() {
        return this.zza;
    }

    public final zzbg zzc() {
        return this.zzb;
    }
}
