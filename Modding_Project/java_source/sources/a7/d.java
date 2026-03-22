package a7;

import a7.d;
import android.os.Handler;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: BandwidthMeter.java */
/* loaded from: classes4.dex */
public interface d {

    /* compiled from: BandwidthMeter.java */
    /* loaded from: classes4.dex */
    public interface a {

        /* compiled from: BandwidthMeter.java */
        /* renamed from: a7.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0001a {

            /* renamed from: a  reason: collision with root package name */
            private final CopyOnWriteArrayList<C0002a> f180a = new CopyOnWriteArrayList<>();

            /* JADX INFO: Access modifiers changed from: private */
            /* compiled from: BandwidthMeter.java */
            /* renamed from: a7.d$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            public static final class C0002a {

                /* renamed from: a  reason: collision with root package name */
                private final Handler f181a;

                /* renamed from: b  reason: collision with root package name */
                private final a f182b;

                /* renamed from: c  reason: collision with root package name */
                private boolean f183c;

                public C0002a(Handler handler, a aVar) {
                    this.f181a = handler;
                    this.f182b = aVar;
                }

                public void d() {
                    this.f183c = true;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ void d(C0002a c0002a, int i10, long j10, long j11) {
                c0002a.f182b.onBandwidthSample(i10, j10, j11);
            }

            public void b(Handler handler, a aVar) {
                b7.a.e(handler);
                b7.a.e(aVar);
                e(aVar);
                this.f180a.add(new C0002a(handler, aVar));
            }

            public void c(final int i10, final long j10, final long j11) {
                Iterator<C0002a> it = this.f180a.iterator();
                while (it.hasNext()) {
                    final C0002a next = it.next();
                    if (!next.f183c) {
                        next.f181a.post(new Runnable() { // from class: a7.c
                            @Override // java.lang.Runnable
                            public final void run() {
                                d.a.C0001a.d(d.a.C0001a.C0002a.this, i10, j10, j11);
                            }
                        });
                    }
                }
            }

            public void e(a aVar) {
                Iterator<C0002a> it = this.f180a.iterator();
                while (it.hasNext()) {
                    C0002a next = it.next();
                    if (next.f182b == aVar) {
                        next.d();
                        this.f180a.remove(next);
                    }
                }
            }
        }

        void onBandwidthSample(int i10, long j10, long j11);
    }

    @Nullable
    y a();

    void b(a aVar);

    void f(Handler handler, a aVar);
}
