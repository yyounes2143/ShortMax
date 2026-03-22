package com.google.zxing;
/* loaded from: classes5.dex */
public final class FormatException extends ReaderException {

    /* renamed from: c  reason: collision with root package name */
    private static final FormatException f21706c;

    static {
        FormatException formatException = new FormatException();
        f21706c = formatException;
        formatException.setStackTrace(ReaderException.f21709b);
    }

    private FormatException() {
    }

    public static FormatException b() {
        if (ReaderException.f21708a) {
            return new FormatException();
        }
        return f21706c;
    }
}
