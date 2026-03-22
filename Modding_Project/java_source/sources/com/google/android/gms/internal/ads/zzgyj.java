package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Locale;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgyj extends IOException {
    zzgyj() {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgyj(long j10, long j11, int i10, Throwable th2) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(String.format(Locale.US, "Pos: %d, limit: %d, len: %d", Long.valueOf(j10), Long.valueOf(j11), Integer.valueOf(i10))), th2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgyj(Throwable th2) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", th2);
    }
}
