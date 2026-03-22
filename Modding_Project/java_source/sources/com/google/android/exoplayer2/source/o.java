package com.google.android.exoplayer2.source;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.y0;
import java.io.IOException;
import p5.t3;
/* compiled from: MediaSource.java */
/* loaded from: classes4.dex */
public interface o {

    /* compiled from: MediaSource.java */
    /* loaded from: classes4.dex */
    public interface a {
        a a(s5.k kVar);

        a b(com.google.android.exoplayer2.upstream.b bVar);

        o c(y0 y0Var);
    }

    /* compiled from: MediaSource.java */
    /* loaded from: classes4.dex */
    public static final class b extends n6.j {
        public b(Object obj) {
            super(obj);
        }

        public b c(Object obj) {
            return new b(super.a(obj));
        }

        public b(Object obj, long j10) {
            super(obj, j10);
        }

        public b(Object obj, long j10, int i10) {
            super(obj, j10, i10);
        }

        public b(Object obj, int i10, int i11, long j10) {
            super(obj, i10, i11, j10);
        }

        public b(n6.j jVar) {
            super(jVar);
        }
    }

    /* compiled from: MediaSource.java */
    /* loaded from: classes4.dex */
    public interface c {
        void a(o oVar, u1 u1Var);
    }

    y0 a();

    @Nullable
    default u1 b() {
        return null;
    }

    default boolean c() {
        return true;
    }

    void d(c cVar);

    void e(p pVar);

    n f(b bVar, a7.b bVar2, long j10);

    void g(c cVar, @Nullable a7.y yVar, t3 t3Var);

    void h(Handler handler, p pVar);

    void i(n nVar);

    void j(c cVar);

    void k(c cVar);

    void m(Handler handler, com.google.android.exoplayer2.drm.h hVar);

    void maybeThrowSourceInfoRefreshError() throws IOException;

    void n(com.google.android.exoplayer2.drm.h hVar);
}
