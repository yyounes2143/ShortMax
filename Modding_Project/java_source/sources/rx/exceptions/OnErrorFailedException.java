package rx.exceptions;
/* loaded from: classes8.dex */
public class OnErrorFailedException extends RuntimeException {
    public OnErrorFailedException(String str, Throwable th2) {
        super(str, th2 == null ? new NullPointerException() : th2);
    }
}
