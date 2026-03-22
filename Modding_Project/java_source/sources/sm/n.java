package sm;

import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
/* loaded from: classes7.dex */
public class n {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f66446a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final a f66447b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f66448c = false;

    /* renamed from: d  reason: collision with root package name */
    private float f66449d = 0.0f;

    /* renamed from: e  reason: collision with root package name */
    private long f66450e = 0;

    /* renamed from: f  reason: collision with root package name */
    private long f66451f = 0;

    /* renamed from: g  reason: collision with root package name */
    private final ViewTreeObserver.OnGlobalLayoutListener f66452g;

    /* renamed from: h  reason: collision with root package name */
    private final Runnable f66453h;

    /* loaded from: classes7.dex */
    public interface a {
        void a(float f10, long j10, long j11);

        void b();
    }

    /* loaded from: classes7.dex */
    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            n.this.a();
        }
    }

    /* loaded from: classes7.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            long j10 = n.this.f66451f;
            if (n.this.f66446a.isShown()) {
                j10 = Math.min(n.this.f66450e, j10 + 16);
                n.this.b(j10);
                n.this.f66447b.a((((float) n.this.f66451f) * 100.0f) / ((float) n.this.f66450e), n.this.f66451f, n.this.f66450e);
            }
            if (j10 >= n.this.f66450e) {
                n.this.f66447b.b();
            } else {
                n.this.f66446a.postDelayed(this, 16L);
            }
        }
    }

    public n(@NonNull View view, @NonNull a aVar) {
        b bVar = new b();
        this.f66452g = bVar;
        this.f66453h = new c();
        this.f66446a = view;
        this.f66447b = aVar;
        view.getViewTreeObserver().addOnGlobalLayoutListener(bVar);
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        boolean isShown = this.f66446a.isShown();
        if (this.f66448c == isShown) {
            return;
        }
        this.f66448c = isShown;
        if (!isShown) {
            m();
        } else if (j()) {
            l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(long j10) {
        this.f66451f = j10;
    }

    public void h() {
        m();
        this.f66446a.getViewTreeObserver().removeGlobalOnLayoutListener(this.f66452g);
    }

    public boolean j() {
        long j10 = this.f66450e;
        if (j10 != 0 && this.f66451f < j10) {
            return true;
        }
        return false;
    }

    public void k(float f10) {
        if (this.f66449d == f10) {
            return;
        }
        this.f66449d = f10;
        this.f66450e = f10 * 1000.0f;
        l();
    }

    public void l() {
        if (this.f66446a.isShown() && this.f66450e != 0) {
            this.f66446a.postDelayed(this.f66453h, 16L);
        }
    }

    public void m() {
        this.f66446a.removeCallbacks(this.f66453h);
    }
}
