package b4;

import com.facebook.imagepipeline.memory.BasePool;
/* compiled from: NoOpPoolStatsTracker.java */
/* loaded from: classes3.dex */
public class z implements f0 {

    /* renamed from: a  reason: collision with root package name */
    private static z f2261a;

    private z() {
    }

    public static synchronized z h() {
        z zVar;
        synchronized (z.class) {
            try {
                if (f2261a == null) {
                    f2261a = new z();
                }
                zVar = f2261a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zVar;
    }

    @Override // b4.f0
    public void c() {
    }

    @Override // b4.f0
    public void d() {
    }

    @Override // b4.f0
    public void a(int i10) {
    }

    @Override // b4.f0
    public void b(int i10) {
    }

    @Override // b4.f0
    public void e(int i10) {
    }

    @Override // b4.f0
    public void f(int i10) {
    }

    @Override // b4.f0
    public void g(BasePool basePool) {
    }
}
