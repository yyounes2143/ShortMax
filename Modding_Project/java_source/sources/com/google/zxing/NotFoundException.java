package com.google.zxing;
/* loaded from: classes5.dex */
public final class NotFoundException extends ReaderException {

    /* renamed from: c  reason: collision with root package name */
    private static final NotFoundException f21707c;

    static {
        NotFoundException notFoundException = new NotFoundException();
        f21707c = notFoundException;
        notFoundException.setStackTrace(ReaderException.f21709b);
    }

    private NotFoundException() {
    }
}
