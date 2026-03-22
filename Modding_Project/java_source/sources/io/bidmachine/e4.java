package io.bidmachine;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import io.bidmachine.SessionManager;
import io.bidmachine.c4;
import io.bidmachine.e4;
import io.bidmachine.protobuf.InitResponse;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InitialRequestLoader.java */
/* loaded from: classes7.dex */
public final class e4 {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f54437a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final String f54438b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final d f54439c;
    @NonNull
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    final SessionManager.a f54440d;
    @Nullable
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    c4 f54441e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final Object f54442f;
    @NonNull
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    c4.c f54443g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InitialRequestLoader.java */
    /* loaded from: classes7.dex */
    public static class b {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final InitResponse f54444a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final String f54445b;

        public b(@NonNull InitResponse initResponse, @NonNull String str) {
            this.f54444a = initResponse;
            this.f54445b = str;
        }

        @NonNull
        public InitResponse a() {
            return this.f54444a;
        }

        @NonNull
        public String b() {
            return this.f54445b;
        }
    }

    /* compiled from: InitialRequestLoader.java */
    /* loaded from: classes7.dex */
    private class c implements c4.c {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final String f54446a;

        public c(@NonNull String str) {
            this.f54446a = str;
        }

        @Override // io.bidmachine.core.NetworkRequest.b
        /* renamed from: b */
        public void a(@Nullable fr.a aVar) {
            e4 e4Var = e4.this;
            final d dVar = e4Var.f54439c;
            Objects.requireNonNull(dVar);
            e4Var.g(new Executable() { // from class: io.bidmachine.f4
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    e4.d.this.b((e4.b) obj);
                }
            });
        }

        @Override // io.bidmachine.core.NetworkRequest.b
        /* renamed from: c */
        public void onSuccess(@Nullable InitResponse initResponse) {
            e4.this.d();
            if (initResponse == null) {
                return;
            }
            m2.y(e4.this.f54437a, initResponse, this.f54446a);
            e4.this.f54439c.a(new b(initResponse, this.f54446a));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InitialRequestLoader.java */
    /* loaded from: classes7.dex */
    public interface d {
        void a(@NonNull b bVar);

        void b(@NonNull b bVar);

        void c(@NonNull b bVar);
    }

    /* compiled from: InitialRequestLoader.java */
    /* loaded from: classes7.dex */
    private class e implements SessionManager.a {
        private e() {
        }

        @Override // io.bidmachine.SessionManager.a
        public void a(@NonNull SessionManager.Status status) {
            if (status != SessionManager.Status.START) {
                return;
            }
            e4.this.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e4(@NonNull Context context, @NonNull String str, @NonNull d dVar) {
        e eVar = new e();
        this.f54440d = eVar;
        this.f54441e = null;
        this.f54442f = new Object();
        SessionManager sessionManager = SessionManager.get();
        this.f54437a = context;
        this.f54438b = str;
        this.f54439c = dVar;
        this.f54443g = new c(sessionManager.getSessionId());
        sessionManager.addObserver(eVar);
    }

    @NonNull
    @VisibleForTesting
    c4 c() {
        return new c4(this.f54437a, this.f54438b, UrlProvider.getInitUrlQueue());
    }

    @VisibleForTesting
    void d() {
        synchronized (this.f54442f) {
            try {
                c4 c4Var = this.f54441e;
                if (c4Var == null) {
                    return;
                }
                c4Var.p();
                this.f54441e = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public void e() {
        synchronized (this.f54442f) {
            d();
            c4 c10 = c();
            this.f54441e = c10;
            c10.s(this.f54443g);
            this.f54441e.r();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public void f() {
        final d dVar = this.f54439c;
        Objects.requireNonNull(dVar);
        g(new Executable() { // from class: io.bidmachine.d4
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                e4.d.this.c((e4.b) obj);
            }
        });
    }

    @VisibleForTesting
    void g(@NonNull Executable<b> executable) {
        InitResponse f10 = m2.f(this.f54437a);
        String g10 = m2.g(this.f54437a);
        if (f10 != null) {
            executable.execute(new b(f10, g10));
        }
    }
}
