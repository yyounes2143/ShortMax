package u0;

import android.annotation.SuppressLint;
import android.view.animation.Interpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.download.Command;
import java.util.ArrayList;
import java.util.List;
/* compiled from: BaseKeyframeAnimation.java */
/* loaded from: classes2.dex */
public abstract class a<K, A> {

    /* renamed from: c  reason: collision with root package name */
    private final d<K> f67707c;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    protected e1.c<A> f67709e;

    /* renamed from: a  reason: collision with root package name */
    final List<b> f67705a = new ArrayList(1);

    /* renamed from: b  reason: collision with root package name */
    private boolean f67706b = false;

    /* renamed from: d  reason: collision with root package name */
    protected float f67708d = 0.0f;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private A f67710f = null;

    /* renamed from: g  reason: collision with root package name */
    private float f67711g = -1.0f;

    /* renamed from: h  reason: collision with root package name */
    private float f67712h = -1.0f;

    /* compiled from: BaseKeyframeAnimation.java */
    /* loaded from: classes2.dex */
    public interface b {
        void f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BaseKeyframeAnimation.java */
    /* loaded from: classes2.dex */
    public static final class c<T> implements d<T> {
        private c() {
        }

        @Override // u0.a.d
        public e1.a<T> a() {
            throw new IllegalStateException("not implemented");
        }

        @Override // u0.a.d
        public float b() {
            return 0.0f;
        }

        @Override // u0.a.d
        public boolean c(float f10) {
            throw new IllegalStateException("not implemented");
        }

        @Override // u0.a.d
        public boolean d(float f10) {
            return false;
        }

        @Override // u0.a.d
        public float e() {
            return 1.0f;
        }

        @Override // u0.a.d
        public boolean isEmpty() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BaseKeyframeAnimation.java */
    /* loaded from: classes2.dex */
    public interface d<T> {
        e1.a<T> a();

        @FloatRange(from = 0.0d, to = 1.0d)
        float b();

        boolean c(float f10);

        boolean d(float f10);

        @FloatRange(from = 0.0d, to = 1.0d)
        float e();

        boolean isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BaseKeyframeAnimation.java */
    /* loaded from: classes2.dex */
    public static final class e<T> implements d<T> {

        /* renamed from: a  reason: collision with root package name */
        private final List<? extends e1.a<T>> f67713a;

        /* renamed from: c  reason: collision with root package name */
        private e1.a<T> f67715c = null;

        /* renamed from: d  reason: collision with root package name */
        private float f67716d = -1.0f;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private e1.a<T> f67714b = f(0.0f);

        e(List<? extends e1.a<T>> list) {
            this.f67713a = list;
        }

        private e1.a<T> f(float f10) {
            List<? extends e1.a<T>> list = this.f67713a;
            e1.a<T> aVar = list.get(list.size() - 1);
            if (f10 >= aVar.f()) {
                return aVar;
            }
            for (int size = this.f67713a.size() - 2; size >= 1; size--) {
                e1.a<T> aVar2 = this.f67713a.get(size);
                if (this.f67714b != aVar2 && aVar2.a(f10)) {
                    return aVar2;
                }
            }
            return this.f67713a.get(0);
        }

        @Override // u0.a.d
        @NonNull
        public e1.a<T> a() {
            return this.f67714b;
        }

        @Override // u0.a.d
        public float b() {
            return this.f67713a.get(0).f();
        }

        @Override // u0.a.d
        public boolean c(float f10) {
            e1.a<T> aVar = this.f67715c;
            e1.a<T> aVar2 = this.f67714b;
            if (aVar == aVar2 && this.f67716d == f10) {
                return true;
            }
            this.f67715c = aVar2;
            this.f67716d = f10;
            return false;
        }

        @Override // u0.a.d
        public boolean d(float f10) {
            if (this.f67714b.a(f10)) {
                return !this.f67714b.i();
            }
            this.f67714b = f(f10);
            return true;
        }

        @Override // u0.a.d
        public float e() {
            List<? extends e1.a<T>> list = this.f67713a;
            return list.get(list.size() - 1).c();
        }

        @Override // u0.a.d
        public boolean isEmpty() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BaseKeyframeAnimation.java */
    /* loaded from: classes2.dex */
    public static final class f<T> implements d<T> {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final e1.a<T> f67717a;

        /* renamed from: b  reason: collision with root package name */
        private float f67718b = -1.0f;

        f(List<? extends e1.a<T>> list) {
            this.f67717a = list.get(0);
        }

        @Override // u0.a.d
        public e1.a<T> a() {
            return this.f67717a;
        }

        @Override // u0.a.d
        public float b() {
            return this.f67717a.f();
        }

        @Override // u0.a.d
        public boolean c(float f10) {
            if (this.f67718b == f10) {
                return true;
            }
            this.f67718b = f10;
            return false;
        }

        @Override // u0.a.d
        public boolean d(float f10) {
            return !this.f67717a.i();
        }

        @Override // u0.a.d
        public float e() {
            return this.f67717a.c();
        }

        @Override // u0.a.d
        public boolean isEmpty() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(List<? extends e1.a<K>> list) {
        this.f67707c = q(list);
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    @SuppressLint({Command.HTTP_HEADER_RANGE})
    private float g() {
        if (this.f67711g == -1.0f) {
            this.f67711g = this.f67707c.b();
        }
        return this.f67711g;
    }

    private static <T> d<T> q(List<? extends e1.a<T>> list) {
        if (list.isEmpty()) {
            return new c();
        }
        if (list.size() == 1) {
            return new f(list);
        }
        return new e(list);
    }

    public void a(b bVar) {
        this.f67705a.add(bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e1.a<K> b() {
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.b("BaseKeyframeAnimation#getCurrentKeyframe");
        }
        e1.a<K> a10 = this.f67707c.a();
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.c("BaseKeyframeAnimation#getCurrentKeyframe");
        }
        return a10;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    @SuppressLint({Command.HTTP_HEADER_RANGE})
    float c() {
        if (this.f67712h == -1.0f) {
            this.f67712h = this.f67707c.e();
        }
        return this.f67712h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float d() {
        Interpolator interpolator;
        e1.a<K> b10 = b();
        if (b10 != null && !b10.i() && (interpolator = b10.f50726d) != null) {
            return interpolator.getInterpolation(e());
        }
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float e() {
        if (this.f67706b) {
            return 0.0f;
        }
        e1.a<K> b10 = b();
        if (b10.i()) {
            return 0.0f;
        }
        return (this.f67708d - b10.f()) / (b10.c() - b10.f());
    }

    public float f() {
        return this.f67708d;
    }

    public A h() {
        A i10;
        float e10 = e();
        if (this.f67709e == null && this.f67707c.c(e10) && !p()) {
            return this.f67710f;
        }
        e1.a<K> b10 = b();
        Interpolator interpolator = b10.f50727e;
        if (interpolator != null && b10.f50728f != null) {
            i10 = j(b10, e10, interpolator.getInterpolation(e10), b10.f50728f.getInterpolation(e10));
        } else {
            i10 = i(b10, d());
        }
        this.f67710f = i10;
        return i10;
    }

    abstract A i(e1.a<K> aVar, float f10);

    protected A j(e1.a<K> aVar, float f10, float f11, float f12) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    public boolean k() {
        if (this.f67709e != null) {
            return true;
        }
        return false;
    }

    public void l() {
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.b("BaseKeyframeAnimation#notifyListeners");
        }
        for (int i10 = 0; i10 < this.f67705a.size(); i10++) {
            this.f67705a.get(i10).f();
        }
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.c("BaseKeyframeAnimation#notifyListeners");
        }
    }

    public void m() {
        this.f67706b = true;
    }

    public void n(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.b("BaseKeyframeAnimation#setProgress");
        }
        if (this.f67707c.isEmpty()) {
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.c("BaseKeyframeAnimation#setProgress");
                return;
            }
            return;
        }
        if (f10 < g()) {
            f10 = g();
        } else if (f10 > c()) {
            f10 = c();
        }
        if (f10 == this.f67708d) {
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.c("BaseKeyframeAnimation#setProgress");
                return;
            }
            return;
        }
        this.f67708d = f10;
        if (this.f67707c.d(f10)) {
            l();
        }
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.c("BaseKeyframeAnimation#setProgress");
        }
    }

    public void o(@Nullable e1.c<A> cVar) {
        e1.c<A> cVar2 = this.f67709e;
        if (cVar2 != null) {
            cVar2.c(null);
        }
        this.f67709e = cVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }

    protected boolean p() {
        return false;
    }
}
