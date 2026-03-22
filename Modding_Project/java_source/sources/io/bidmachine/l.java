package io.bidmachine;

import androidx.annotation.VisibleForTesting;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: AdRequestExecutor.java */
/* loaded from: classes7.dex */
class l extends ThreadPoolExecutor {

    /* renamed from: a  reason: collision with root package name */
    private static volatile l f55044a;

    @VisibleForTesting
    l(int i10) {
        super(i10, i10, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
    }

    public static l a() {
        if (f55044a == null) {
            synchronized (l.class) {
                try {
                    if (f55044a == null) {
                        f55044a = new l(Runtime.getRuntime().availableProcessors() * 2);
                    }
                } finally {
                }
            }
        }
        return f55044a;
    }
}
