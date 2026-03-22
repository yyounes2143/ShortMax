package io.bidmachine.media3.exoplayer.drm;

import android.os.Looper;
import androidx.annotation.Nullable;
import hn.b2;
import io.bidmachine.media3.exoplayer.drm.DrmSession;
import io.bidmachine.media3.exoplayer.drm.h;
import io.bidmachine.media3.exoplayer.drm.i;
/* compiled from: DrmSessionManager.java */
/* loaded from: classes8.dex */
public interface i {

    /* renamed from: a  reason: collision with root package name */
    public static final i f55868a = new a();

    int a(io.bidmachine.media3.common.a aVar);

    @Nullable
    DrmSession b(@Nullable h.a aVar, io.bidmachine.media3.common.a aVar2);

    void c(Looper looper, b2 b2Var);

    default b d(@Nullable h.a aVar, io.bidmachine.media3.common.a aVar2) {
        return b.f55869a;
    }

    /* compiled from: DrmSessionManager.java */
    /* loaded from: classes8.dex */
    public interface b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f55869a = new b() { // from class: ln.j
            @Override // io.bidmachine.media3.exoplayer.drm.i.b
            public final void release() {
                i.b.c();
            }
        };

        void release();

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void c() {
        }
    }

    default void prepare() {
    }

    default void release() {
    }

    /* compiled from: DrmSessionManager.java */
    /* loaded from: classes8.dex */
    class a implements i {
        a() {
        }

        @Override // io.bidmachine.media3.exoplayer.drm.i
        public int a(io.bidmachine.media3.common.a aVar) {
            if (aVar.f55178s != null) {
                return 1;
            }
            return 0;
        }

        @Override // io.bidmachine.media3.exoplayer.drm.i
        @Nullable
        public DrmSession b(@Nullable h.a aVar, io.bidmachine.media3.common.a aVar2) {
            if (aVar2.f55178s == null) {
                return null;
            }
            return new l(new DrmSession.DrmSessionException(new UnsupportedDrmException(1), 6001));
        }

        @Override // io.bidmachine.media3.exoplayer.drm.i
        public void c(Looper looper, b2 b2Var) {
        }
    }
}
