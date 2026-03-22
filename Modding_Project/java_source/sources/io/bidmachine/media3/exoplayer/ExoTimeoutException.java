package io.bidmachine.media3.exoplayer;
/* loaded from: classes8.dex */
public final class ExoTimeoutException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    public final int f55388a;

    public ExoTimeoutException(int i10) {
        super(b(i10));
        this.f55388a = i10;
    }

    private static String b(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return "Undefined timeout.";
                }
                return "Detaching surface timed out.";
            }
            return "Setting foreground mode timed out.";
        }
        return "Player release timed out.";
    }
}
