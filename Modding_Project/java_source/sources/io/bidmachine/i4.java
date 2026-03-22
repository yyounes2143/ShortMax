package io.bidmachine;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import io.bidmachine.i4;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InstallInfoProvider.java */
/* loaded from: classes7.dex */
public class i4 {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicLong f54480a = new AtomicLong(0);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long c() {
        return f54480a.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public static void d(@NonNull final Context context) {
        new Thread(new vm.a() { // from class: io.bidmachine.h4
            @Override // fr.h
            public final void s() {
                i4.e(context);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(Context context) throws Throwable {
        new b(context).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: InstallInfoProvider.java */
    /* loaded from: classes7.dex */
    public static class b {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final InstallReferrerClient f54481a;

        b(@NonNull Context context) {
            this.f54481a = InstallReferrerClient.newBuilder(context).build();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long c(@NonNull InstallReferrerClient installReferrerClient) {
            try {
                long installBeginTimestampSeconds = installReferrerClient.getInstallReferrer().getInstallBeginTimestampSeconds();
                if (installBeginTimestampSeconds != 0) {
                    return installBeginTimestampSeconds * 1000;
                }
            } catch (Exception e10) {
                io.bidmachine.core.a.m(e10);
            }
            return 0L;
        }

        void d() {
            try {
                this.f54481a.startConnection(new a());
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: InstallInfoProvider.java */
        /* loaded from: classes7.dex */
        public class a implements InstallReferrerStateListener {
            private a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: c */
            public void b(int i10) {
                if (i10 == 0) {
                    AtomicLong atomicLong = i4.f54480a;
                    b bVar = b.this;
                    atomicLong.set(bVar.c(bVar.f54481a));
                }
                b.this.f54481a.endConnection();
            }

            @Override // com.android.installreferrer.api.InstallReferrerStateListener
            public void onInstallReferrerSetupFinished(final int i10) {
                new Thread(new vm.a() { // from class: io.bidmachine.j4
                    @Override // fr.h
                    public final void s() {
                        i4.b.a.this.b(i10);
                    }
                }).start();
            }

            @Override // com.android.installreferrer.api.InstallReferrerStateListener
            public void onInstallReferrerServiceDisconnected() {
            }
        }
    }
}
