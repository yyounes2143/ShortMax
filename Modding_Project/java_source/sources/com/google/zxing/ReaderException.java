package com.google.zxing;
/* loaded from: classes5.dex */
public abstract class ReaderException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    protected static final boolean f21708a;

    /* renamed from: b  reason: collision with root package name */
    protected static final StackTraceElement[] f21709b;

    static {
        boolean z10;
        if (System.getProperty("surefire.test.class.path") != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        f21708a = z10;
        f21709b = new StackTraceElement[0];
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return null;
    }
}
