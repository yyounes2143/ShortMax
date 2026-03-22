package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzuy {
    private static final AtomicLong zza = new AtomicLong();

    public zzuy(long j10, zzgo zzgoVar, Uri uri, Map map, long j11, long j12, long j13) {
    }

    public static long zza() {
        return zza.getAndIncrement();
    }

    public zzuy(long j10, zzgo zzgoVar, long j11) {
        Uri uri = zzgoVar.zza;
        Collections.emptyMap();
    }
}
