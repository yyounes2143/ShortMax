package com.amazonaws.retry;

import com.amazonaws.AbortedException;
import com.amazonaws.AmazonServiceException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
/* loaded from: classes2.dex */
public class RetryUtils {
    public static boolean a(AmazonServiceException amazonServiceException) {
        if (amazonServiceException == null) {
            return false;
        }
        String b10 = amazonServiceException.b();
        if (!"RequestTimeTooSkewed".equals(b10) && !"RequestExpired".equals(b10) && !"InvalidSignatureException".equals(b10) && !"SignatureDoesNotMatch".equals(b10)) {
            return false;
        }
        return true;
    }

    public static boolean b(Throwable th2) {
        if (th2 instanceof AbortedException) {
            return true;
        }
        if (th2.getCause() != null) {
            Throwable cause = th2.getCause();
            if ((cause instanceof InterruptedException) || ((cause instanceof InterruptedIOException) && !(cause instanceof SocketTimeoutException))) {
                return true;
            }
            return false;
        }
        return false;
    }

    public static boolean c(AmazonServiceException amazonServiceException) {
        if (amazonServiceException == null) {
            return false;
        }
        String b10 = amazonServiceException.b();
        if (!"Throttling".equals(b10) && !"ThrottlingException".equals(b10) && !"ProvisionedThroughputExceededException".equals(b10)) {
            return false;
        }
        return true;
    }
}
