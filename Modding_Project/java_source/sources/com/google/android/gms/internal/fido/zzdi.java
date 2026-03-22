package com.google.android.gms.internal.fido;

import com.applovin.shadow.okhttp3.HttpUrl;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
public final class zzdi extends zzdr {
    private final zzaz zza;
    private final int zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdi(zzaz zzazVar) throws zzdh {
        zzazVar.getClass();
        this.zza = zzazVar;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            zzaz zzazVar2 = this.zza;
            if (i10 >= zzazVar2.size()) {
                break;
            }
            int zzb = ((zzdr) zzazVar2.get(i10)).zzb();
            if (i11 < zzb) {
                i11 = zzb;
            }
            i10++;
        }
        int i12 = i11 + 1;
        this.zzb = i12;
        if (i12 <= 4) {
            return;
        }
        throw new zzdh("Exceeded cutoff limit for max depth of cbor value");
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzdr zzdrVar = (zzdr) obj;
        if (zzdr.zzd(ByteCompanionObject.MIN_VALUE) != zzdrVar.zza()) {
            return zzdr.zzd(ByteCompanionObject.MIN_VALUE) - zzdrVar.zza();
        }
        zzdi zzdiVar = (zzdi) zzdrVar;
        zzaz zzazVar = this.zza;
        int size = zzazVar.size();
        zzaz zzazVar2 = zzdiVar.zza;
        if (size != zzazVar2.size()) {
            return zzazVar.size() - zzazVar2.size();
        }
        int i10 = 0;
        while (true) {
            zzaz zzazVar3 = this.zza;
            if (i10 >= zzazVar3.size()) {
                return 0;
            }
            int compareTo = ((zzdr) zzazVar3.get(i10)).compareTo((zzdr) zzdiVar.zza.get(i10));
            if (compareTo != 0) {
                return compareTo;
            }
            i10++;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzdi.class != obj.getClass()) {
            return false;
        }
        return this.zza.equals(((zzdi) obj).zza);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zzdr.zzd(ByteCompanionObject.MIN_VALUE)), this.zza});
    }

    public final String toString() {
        if (this.zza.isEmpty()) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        ArrayList arrayList = new ArrayList();
        zzaz zzazVar = this.zza;
        int size = zzazVar.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(((zzdr) zzazVar.get(i10)).toString().replace("\n", "\n  "));
        }
        zzag zza = zzag.zza(",\n  ");
        StringBuilder sb2 = new StringBuilder("[\n  ");
        try {
            zza.zzb(sb2, arrayList.iterator());
            sb2.append("\n]");
            return sb2.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.fido.zzdr
    public final int zza() {
        return zzdr.zzd(ByteCompanionObject.MIN_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.fido.zzdr
    public final int zzb() {
        return this.zzb;
    }
}
