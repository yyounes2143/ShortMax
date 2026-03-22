package u0;

import androidx.annotation.Nullable;
import java.util.Collections;
/* compiled from: ValueCallbackKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class t<K, A> extends a<K, A> {

    /* renamed from: i  reason: collision with root package name */
    private final A f67784i;

    public t(e1.c<A> cVar) {
        this(cVar, null);
    }

    @Override // u0.a
    float c() {
        return 1.0f;
    }

    @Override // u0.a
    public A h() {
        e1.c<A> cVar = this.f67709e;
        A a10 = this.f67784i;
        return cVar.b(0.0f, 0.0f, a10, a10, f(), f(), f());
    }

    @Override // u0.a
    A i(e1.a<K> aVar, float f10) {
        return h();
    }

    @Override // u0.a
    public void l() {
        if (this.f67709e != null) {
            super.l();
        }
    }

    @Override // u0.a
    public void n(float f10) {
        this.f67708d = f10;
    }

    public t(e1.c<A> cVar, @Nullable A a10) {
        super(Collections.emptyList());
        o(cVar);
        this.f67784i = a10;
    }
}
