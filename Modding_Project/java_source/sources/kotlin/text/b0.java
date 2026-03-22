package kotlin.text;
/* compiled from: R8$$SyntheticClass */
/* loaded from: classes8.dex */
public final /* synthetic */ class b0 {
    public static /* synthetic */ long a(long j10, long j11) {
        if (j11 < 0) {
            if ((j10 ^ Long.MIN_VALUE) < (j11 ^ Long.MIN_VALUE)) {
                return 0L;
            }
            return 1L;
        } else if (j10 >= 0) {
            return j10 / j11;
        } else {
            int i10 = 1;
            long j12 = ((j10 >>> 1) / j11) << 1;
            if (((j10 - (j12 * j11)) ^ Long.MIN_VALUE) < (j11 ^ Long.MIN_VALUE)) {
                i10 = 0;
            }
            return j12 + i10;
        }
    }
}
