package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import java.util.ArrayDeque;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzt extends LinkedHashMap {
    final /* synthetic */ zzv zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzt(zzv zzvVar) {
        Objects.requireNonNull(zzvVar);
        this.zza = zzvVar;
    }

    @Override // java.util.LinkedHashMap
    protected final boolean removeEldestEntry(Map.Entry entry) {
        int i10;
        ArrayDeque arrayDeque;
        int i11;
        zzv zzvVar = this.zza;
        synchronized (zzvVar) {
            try {
                int size = size();
                i10 = zzvVar.zza;
                boolean z10 = false;
                if (size > i10) {
                    arrayDeque = zzvVar.zzf;
                    arrayDeque.add(new Pair((String) entry.getKey(), ((zzu) entry.getValue()).zzb));
                    int size2 = size();
                    i11 = zzvVar.zza;
                    if (size2 > i11) {
                        z10 = true;
                    }
                    return z10;
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
