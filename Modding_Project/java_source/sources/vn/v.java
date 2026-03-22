package vn;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import io.bidmachine.media3.exoplayer.ExoPlaybackException;
import io.bidmachine.media3.exoplayer.h2;
import io.bidmachine.media3.exoplayer.i2;
import io.bidmachine.media3.exoplayer.source.r;
import sn.x;
import zm.a0;
import zm.d0;
/* compiled from: TrackSelector.java */
/* loaded from: classes8.dex */
public abstract class v {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private a f69170a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private wn.d f69171b;

    /* JADX INFO: Access modifiers changed from: protected */
    public final wn.d a() {
        return (wn.d) cn.a.i(this.f69171b);
    }

    public d0 c() {
        return d0.F;
    }

    @Nullable
    public i2.a d() {
        return null;
    }

    @CallSuper
    public void e(a aVar, wn.d dVar) {
        this.f69170a = aVar;
        this.f69171b = dVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f() {
        a aVar = this.f69170a;
        if (aVar != null) {
            aVar.onTrackSelectionsInvalidated();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void g(h2 h2Var) {
        a aVar = this.f69170a;
        if (aVar != null) {
            aVar.b(h2Var);
        }
    }

    public boolean h() {
        return false;
    }

    public abstract void i(@Nullable Object obj);

    @CallSuper
    public void j() {
        this.f69170a = null;
        this.f69171b = null;
    }

    public abstract w k(i2[] i2VarArr, x xVar, r.b bVar, a0 a0Var) throws ExoPlaybackException;

    /* compiled from: TrackSelector.java */
    /* loaded from: classes8.dex */
    public interface a {
        void onTrackSelectionsInvalidated();

        default void b(h2 h2Var) {
        }
    }

    public void l(zm.c cVar) {
    }

    public void m(d0 d0Var) {
    }
}
