package z6;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.u1;
import o5.o0;
/* compiled from: TrackSelector.java */
/* loaded from: classes4.dex */
public abstract class h0 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private a f71422a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private a7.d f71423b;

    /* compiled from: TrackSelector.java */
    /* loaded from: classes4.dex */
    public interface a {
        void onTrackSelectionsInvalidated();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final a7.d a() {
        return (a7.d) b7.a.i(this.f71423b);
    }

    public f0 b() {
        return f0.A;
    }

    @CallSuper
    public void c(a aVar, a7.d dVar) {
        this.f71422a = aVar;
        this.f71423b = dVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        a aVar = this.f71422a;
        if (aVar != null) {
            aVar.onTrackSelectionsInvalidated();
        }
    }

    public boolean e() {
        return false;
    }

    public abstract void f(@Nullable Object obj);

    @CallSuper
    public void g() {
        this.f71422a = null;
        this.f71423b = null;
    }

    public abstract i0 h(o0[] o0VarArr, n6.w wVar, o.b bVar, u1 u1Var) throws ExoPlaybackException;

    public void i(com.google.android.exoplayer2.audio.a aVar) {
    }

    public void j(f0 f0Var) {
    }
}
