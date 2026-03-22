package wn;

import android.os.Handler;
import androidx.annotation.Nullable;
import en.o;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import wn.d;
/* compiled from: BandwidthMeter.java */
/* loaded from: classes8.dex */
public interface d {

    /* compiled from: BandwidthMeter.java */
    /* loaded from: classes8.dex */
    public interface a {

        /* compiled from: BandwidthMeter.java */
        /* renamed from: wn.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public static final class C0962a {

            /* renamed from: a  reason: collision with root package name */
            private final CopyOnWriteArrayList<C0963a> f69981a = new CopyOnWriteArrayList<>();

            /* JADX INFO: Access modifiers changed from: private */
            /* compiled from: BandwidthMeter.java */
            /* renamed from: wn.d$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes8.dex */
            public static final class C0963a {

                /* renamed from: a  reason: collision with root package name */
                private final Handler f69982a;

                /* renamed from: b  reason: collision with root package name */
                private final a f69983b;

                /* renamed from: c  reason: collision with root package name */
                private boolean f69984c;

                public C0963a(Handler handler, a aVar) {
                    this.f69982a = handler;
                    this.f69983b = aVar;
                }

                public void d() {
                    this.f69984c = true;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ void d(C0963a c0963a, int i10, long j10, long j11) {
                c0963a.f69983b.onBandwidthSample(i10, j10, j11);
            }

            public void b(Handler handler, a aVar) {
                cn.a.e(handler);
                cn.a.e(aVar);
                e(aVar);
                this.f69981a.add(new C0963a(handler, aVar));
            }

            public void c(final int i10, final long j10, final long j11) {
                Iterator<C0963a> it = this.f69981a.iterator();
                while (it.hasNext()) {
                    final C0963a next = it.next();
                    if (!next.f69984c) {
                        next.f69982a.post(new Runnable() { // from class: wn.c
                            @Override // java.lang.Runnable
                            public final void run() {
                                d.a.C0962a.d(d.a.C0962a.C0963a.this, i10, j10, j11);
                            }
                        });
                    }
                }
            }

            public void e(a aVar) {
                Iterator<C0963a> it = this.f69981a.iterator();
                while (it.hasNext()) {
                    C0963a next = it.next();
                    if (next.f69983b == aVar) {
                        next.d();
                        this.f69981a.remove(next);
                    }
                }
            }
        }

        void onBandwidthSample(int i10, long j10, long j11);
    }

    @Nullable
    o a();

    void d(a aVar);

    default long e() {
        return -9223372036854775807L;
    }

    long getBitrateEstimate();

    void h(Handler handler, a aVar);
}
