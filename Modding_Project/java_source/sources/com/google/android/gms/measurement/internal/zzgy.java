package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import java.net.URL;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
@WorkerThread
/* loaded from: classes5.dex */
public final class zzgy implements Runnable {
    final /* synthetic */ zzgz zza;
    private final URL zzb;
    private final byte[] zzc;
    private final zzgw zzd;
    private final String zze;
    private final Map zzf;

    public zzgy(zzgz zzgzVar, String str, URL url, byte[] bArr, Map map, zzgw zzgwVar) {
        Objects.requireNonNull(zzgzVar);
        this.zza = zzgzVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(zzgwVar);
        this.zzb = url;
        this.zzc = bArr;
        this.zzd = zzgwVar;
        this.zze = str;
        this.zzf = map;
    }

    /* JADX WARN: Not initialized variable reg: 11, insn: 0x00fd: MOVE  (r8 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:51:0x00fc */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x0100: MOVE  (r10 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:52:0x00ff */
    /* JADX WARN: Removed duplicated region for block: B:74:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0123 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0161 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgy.run():void");
    }
}
