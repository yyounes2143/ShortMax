package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import androidx.collection.SieveCacheKt;
import java.util.PriorityQueue;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbam {
    @VisibleForTesting
    static long zza(long j10, int i10) {
        long zza;
        if (i10 == 1) {
            return j10;
        }
        int i11 = i10 >> 1;
        long j11 = (j10 * j10) % 1073807359;
        if ((i10 & 1) == 0) {
            zza = zza(j11, i11);
        } else {
            zza = j10 * (zza(j11, i11) % 1073807359);
        }
        return zza % 1073807359;
    }

    @VisibleForTesting
    static String zzb(String[] strArr, int i10, int i11) {
        int i12 = i11 + i10;
        if (strArr.length < i12) {
            int i13 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to construct shingle");
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            int i14 = i12 - 1;
            if (i10 < i14) {
                sb2.append(strArr[i10]);
                sb2.append(' ');
                i10++;
            } else {
                sb2.append(strArr[i14]);
                return sb2.toString();
            }
        }
    }

    public static void zzc(String[] strArr, int i10, int i11, PriorityQueue priorityQueue) {
        int length = strArr.length;
        if (length < 6) {
            zzd(i10, zze(strArr, 0, length), zzb(strArr, 0, length), length, priorityQueue);
            return;
        }
        long zze = zze(strArr, 0, 6);
        zzd(i10, zze, zzb(strArr, 0, 6), 6, priorityQueue);
        int i12 = 1;
        while (true) {
            int length2 = strArr.length;
            if (i12 < length2 - 5) {
                long zza = zzbai.zza(strArr[i12 - 1]);
                String zzb = zzb(strArr, i12, 6);
                zze = ((((((zze + 1073807359) - ((zza(16785407L, 5) * ((zza + SieveCacheKt.NodeLinkMask) % 1073807359)) % 1073807359)) % 1073807359) * 16785407) % 1073807359) + ((zzbai.zza(strArr[i12 + 5]) + SieveCacheKt.NodeLinkMask) % 1073807359)) % 1073807359;
                zzd(i10, zze, zzb, length2, priorityQueue);
                i12++;
            } else {
                return;
            }
        }
    }

    @VisibleForTesting
    static void zzd(int i10, long j10, String str, int i11, PriorityQueue priorityQueue) {
        zzbal zzbalVar = new zzbal(j10, str, i11);
        if ((priorityQueue.size() != i10 || (((zzbal) priorityQueue.peek()).zzc <= zzbalVar.zzc && ((zzbal) priorityQueue.peek()).zza <= zzbalVar.zza)) && !priorityQueue.contains(zzbalVar)) {
            priorityQueue.add(zzbalVar);
            if (priorityQueue.size() > i10) {
                priorityQueue.poll();
            }
        }
    }

    private static long zze(String[] strArr, int i10, int i11) {
        long zza = (zzbai.zza(strArr[0]) + SieveCacheKt.NodeLinkMask) % 1073807359;
        for (int i12 = 1; i12 < i11; i12++) {
            zza = (((zza * 16785407) % 1073807359) + ((zzbai.zza(strArr[i12]) + SieveCacheKt.NodeLinkMask) % 1073807359)) % 1073807359;
        }
        return zza;
    }
}
