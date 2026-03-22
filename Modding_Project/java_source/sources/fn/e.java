package fn;

import androidx.annotation.CallSuper;
/* compiled from: DecoderOutputBuffer.java */
/* loaded from: classes8.dex */
public abstract class e extends fn.a {

    /* renamed from: b  reason: collision with root package name */
    public long f51841b;

    /* renamed from: c  reason: collision with root package name */
    public int f51842c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f51843d;

    /* compiled from: DecoderOutputBuffer.java */
    /* loaded from: classes8.dex */
    public interface a<S extends e> {
        void a(S s10);
    }

    @Override // fn.a
    @CallSuper
    public void b() {
        super.b();
        this.f51841b = 0L;
        this.f51842c = 0;
        this.f51843d = false;
    }

    public abstract void l();
}
