package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.List;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzalv  reason: invalid package */
/* loaded from: classes4.dex */
final class zzalv implements zzalw {
    private static <E> zzalm<E> zzc(Object obj, long j10) {
        return (zzalm) zzanz.zze(obj, j10);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalw
    public final <L> List<L> zza(Object obj, long j10) {
        zzalm zzc = zzc(obj, j10);
        if (zzc.zzc()) {
            return zzc;
        }
        int size = zzc.size();
        zzalm zza = zzc.zza(size == 0 ? 10 : size << 1);
        zzanz.zza(obj, j10, zza);
        return zza;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalw
    public final void zzb(Object obj, long j10) {
        zzc(obj, j10).zzb();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalw
    public final <E> void zza(Object obj, Object obj2, long j10) {
        zzalm<E> zzc = zzc(obj, j10);
        zzalm<E> zzc2 = zzc(obj2, j10);
        int size = zzc.size();
        int size2 = zzc2.size();
        zzalm<E> zzalmVar = zzc;
        zzalmVar = zzc;
        if (size > 0 && size2 > 0) {
            boolean zzc3 = zzc.zzc();
            zzalm<E> zzalmVar2 = zzc;
            if (!zzc3) {
                zzalmVar2 = zzc.zza(size2 + size);
            }
            zzalmVar2.addAll(zzc2);
            zzalmVar = zzalmVar2;
        }
        if (size > 0) {
            zzc2 = zzalmVar;
        }
        zzanz.zza(obj, j10, zzc2);
    }
}
