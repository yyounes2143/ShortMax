package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbah {
    private final int zza;
    private final zzbae zzb = new zzbaj();

    public zzbah(int i10) {
        this.zza = i10;
    }

    public final String zza(ArrayList arrayList) {
        StringBuilder sb2 = new StringBuilder();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            sb2.append(((String) arrayList.get(i10)).toLowerCase(Locale.US));
            sb2.append('\n');
        }
        String[] split = sb2.toString().split("\n");
        if (split.length == 0) {
            return "";
        }
        zzbag zzbagVar = new zzbag();
        int i11 = this.zza;
        PriorityQueue priorityQueue = new PriorityQueue(i11, new zzbaf(this));
        for (String str : split) {
            String[] zzb = zzbai.zzb(str, false);
            if (zzb.length != 0) {
                zzbam.zzc(zzb, i11, 6, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                zzbagVar.zzb.write(this.zzb.zzb(((zzbal) it.next()).zzb));
            } catch (IOException e10) {
                int i12 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Error while writing hash to byteStream", e10);
            }
        }
        return zzbagVar.toString();
    }
}
