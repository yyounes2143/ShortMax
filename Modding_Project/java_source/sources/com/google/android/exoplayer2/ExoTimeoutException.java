package com.google.android.exoplayer2;
/* loaded from: classes4.dex */
public final class ExoTimeoutException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    public final int f17180a;

    public ExoTimeoutException(int i10) {
        super(b(i10));
        this.f17180a = i10;
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
