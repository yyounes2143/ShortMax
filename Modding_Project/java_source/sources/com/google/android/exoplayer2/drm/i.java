package com.google.android.exoplayer2.drm;

import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.h;
import com.google.android.exoplayer2.drm.i;
import com.google.android.exoplayer2.v0;
import p5.t3;
/* compiled from: DrmSessionManager.java */
/* loaded from: classes4.dex */
public interface i {

    /* renamed from: a  reason: collision with root package name */
    public static final i f17585a;
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    public static final i f17586b;

    static {
        a aVar = new a();
        f17585a = aVar;
        f17586b = aVar;
    }

    void a(Looper looper, t3 t3Var);

    @Nullable
    DrmSession b(@Nullable h.a aVar, v0 v0Var);

    default b c(@Nullable h.a aVar, v0 v0Var) {
        return b.f17587a;
    }

    int d(v0 v0Var);

    /* compiled from: DrmSessionManager.java */
    /* loaded from: classes4.dex */
    public interface b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f17587a = new b() { // from class: s5.j
            @Override // com.google.android.exoplayer2.drm.i.b
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
    /* loaded from: classes4.dex */
    class a implements i {
        a() {
        }

        @Override // com.google.android.exoplayer2.drm.i
        @Nullable
        public DrmSession b(@Nullable h.a aVar, v0 v0Var) {
            if (v0Var.f19160o == null) {
                return null;
            }
            return new l(new DrmSession.DrmSessionException(new UnsupportedDrmException(1), 6001));
        }

        @Override // com.google.android.exoplayer2.drm.i
        public int d(v0 v0Var) {
            if (v0Var.f19160o != null) {
                return 1;
            }
            return 0;
        }

        @Override // com.google.android.exoplayer2.drm.i
        public void a(Looper looper, t3 t3Var) {
        }
    }
}
