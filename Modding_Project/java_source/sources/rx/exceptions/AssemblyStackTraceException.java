package rx.exceptions;
/* loaded from: classes8.dex */
public final class AssemblyStackTraceException extends RuntimeException {
    @Override // java.lang.Throwable
    public synchronized Throwable fillInStackTrace() {
        return this;
    }
}
