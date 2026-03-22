package a8;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import z7.g;
/* compiled from: BlockingAnalyticsEventLogger.java */
/* loaded from: classes5.dex */
public class c implements b, a {

    /* renamed from: a  reason: collision with root package name */
    private final e f312a;

    /* renamed from: b  reason: collision with root package name */
    private final int f313b;

    /* renamed from: c  reason: collision with root package name */
    private final TimeUnit f314c;

    /* renamed from: e  reason: collision with root package name */
    private CountDownLatch f316e;

    /* renamed from: d  reason: collision with root package name */
    private final Object f315d = new Object();

    /* renamed from: f  reason: collision with root package name */
    private boolean f317f = false;

    public c(@NonNull e eVar, int i10, TimeUnit timeUnit) {
        this.f312a = eVar;
        this.f313b = i10;
        this.f314c = timeUnit;
    }

    @Override // a8.a
    public void a(@NonNull String str, @Nullable Bundle bundle) {
        synchronized (this.f315d) {
            try {
                g f10 = g.f();
                f10.i("Logging event " + str + " to Firebase Analytics with params " + bundle);
                this.f316e = new CountDownLatch(1);
                this.f317f = false;
                this.f312a.a(str, bundle);
                g.f().i("Awaiting app exception callback from Analytics...");
                try {
                    if (this.f316e.await(this.f313b, this.f314c)) {
                        this.f317f = true;
                        g.f().i("App exception callback received from Analytics listener.");
                    } else {
                        g.f().k("Timeout exceeded while awaiting app exception callback from Analytics listener.");
                    }
                } catch (InterruptedException unused) {
                    g.f().d("Interrupted while awaiting app exception callback from Analytics listener.");
                }
                this.f316e = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // a8.b
    public void onEvent(@NonNull String str, @NonNull Bundle bundle) {
        CountDownLatch countDownLatch = this.f316e;
        if (countDownLatch != null && "_ae".equals(str)) {
            countDownLatch.countDown();
        }
    }
}
