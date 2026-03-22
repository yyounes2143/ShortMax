package io.bidmachine.iab.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.utils.IabElementStyle;
import sm.e;
import sm.f;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes7.dex */
public class CloseableLayout extends FrameLayout {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final d f54981a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private e f54982b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private f f54983c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private c f54984d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private a f54985e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private IabElementStyle f54986f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private IabElementStyle f54987g;

    /* loaded from: classes7.dex */
    public interface a {
        void a();

        void b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CloseableLayout.this.f54985e != null) {
                CloseableLayout.this.f54985e.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public class c implements Runnable {
        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CloseableLayout.this.f54983c != null) {
                long j10 = CloseableLayout.this.f54981a.f54993d;
                if (CloseableLayout.this.isShown()) {
                    j10 += 50;
                    CloseableLayout.this.f54981a.a(j10);
                    CloseableLayout.this.f54983c.r((int) ((100 * j10) / CloseableLayout.this.f54981a.f54992c), (int) Math.ceil((CloseableLayout.this.f54981a.f54992c - j10) / 1000.0d));
                }
                if (j10 >= CloseableLayout.this.f54981a.f54992c) {
                    CloseableLayout.this.j();
                    if (CloseableLayout.this.f54981a.f54991b > 0.0f && CloseableLayout.this.f54985e != null) {
                        CloseableLayout.this.f54985e.b();
                        return;
                    }
                    return;
                }
                CloseableLayout.this.postDelayed(this, 50L);
            }
        }

        /* synthetic */ c(CloseableLayout closeableLayout, b bVar) {
            this();
        }
    }

    public CloseableLayout(@NonNull Context context) {
        super(context);
        this.f54981a = new d(null);
    }

    private void e() {
        if (!isShown()) {
            return;
        }
        h();
        c cVar = new c(this, null);
        this.f54984d = cVar;
        postDelayed(cVar, 50L);
    }

    private void h() {
        c cVar = this.f54984d;
        if (cVar != null) {
            removeCallbacks(cVar);
            this.f54984d = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.f54981a.j()) {
            e eVar = this.f54982b;
            if (eVar != null) {
                eVar.l();
            }
            if (this.f54983c == null) {
                this.f54983c = new f(null);
            }
            this.f54983c.g(getContext(), this, this.f54987g);
            e();
            return;
        }
        h();
        if (this.f54982b == null) {
            this.f54982b = new e(new b());
        }
        this.f54982b.g(getContext(), this, this.f54986f);
        f fVar = this.f54983c;
        if (fVar != null) {
            fVar.l();
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
        e eVar = this.f54982b;
        if (eVar != null) {
            eVar.i();
        }
        f fVar = this.f54983c;
        if (fVar != null) {
            fVar.i();
        }
    }

    public long getOnScreenTimeMs() {
        return this.f54981a.h();
    }

    public boolean k() {
        return this.f54981a.e();
    }

    public boolean m() {
        return this.f54981a.l();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        boolean z10;
        super.onVisibilityChanged(view, i10);
        if (i10 != 0) {
            h();
        } else if (this.f54981a.j() && this.f54981a.l()) {
            e();
        }
        d dVar = this.f54981a;
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        dVar.c(z10);
    }

    public void setCloseClickListener(@Nullable a aVar) {
        this.f54985e = aVar;
    }

    public void setCloseStyle(@Nullable IabElementStyle iabElementStyle) {
        this.f54986f = iabElementStyle;
        e eVar = this.f54982b;
        if (eVar != null && eVar.n()) {
            this.f54982b.g(getContext(), this, iabElementStyle);
        }
    }

    public void setCloseVisibility(boolean z10, float f10) {
        if (this.f54981a.f54990a == z10 && this.f54981a.f54991b == f10) {
            return;
        }
        this.f54981a.d(z10, f10);
        if (!z10) {
            e eVar = this.f54982b;
            if (eVar != null) {
                eVar.l();
            }
            f fVar = this.f54983c;
            if (fVar != null) {
                fVar.l();
            }
            h();
            return;
        }
        j();
    }

    public void setCountDownStyle(@Nullable IabElementStyle iabElementStyle) {
        this.f54987g = iabElementStyle;
        f fVar = this.f54983c;
        if (fVar != null && fVar.n()) {
            this.f54983c.g(getContext(), this, iabElementStyle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private boolean f54990a;

        /* renamed from: b  reason: collision with root package name */
        private float f54991b;

        /* renamed from: c  reason: collision with root package name */
        private long f54992c;

        /* renamed from: d  reason: collision with root package name */
        private long f54993d;

        /* renamed from: e  reason: collision with root package name */
        private long f54994e;

        /* renamed from: f  reason: collision with root package name */
        private long f54995f;

        private d() {
            this.f54990a = false;
            this.f54991b = 0.0f;
            this.f54992c = 0L;
            this.f54993d = 0L;
            this.f54994e = 0L;
            this.f54995f = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(boolean z10) {
            if (this.f54994e > 0) {
                this.f54995f += System.currentTimeMillis() - this.f54994e;
            }
            if (z10) {
                this.f54994e = System.currentTimeMillis();
            } else {
                this.f54994e = 0L;
            }
        }

        public void a(long j10) {
            this.f54993d = j10;
        }

        public void d(boolean z10, float f10) {
            this.f54990a = z10;
            this.f54991b = f10;
            this.f54992c = f10 * 1000.0f;
            this.f54993d = 0L;
        }

        public boolean e() {
            long j10 = this.f54992c;
            if (j10 != 0 && this.f54993d < j10) {
                return false;
            }
            return true;
        }

        public long h() {
            long j10 = this.f54995f;
            if (this.f54994e > 0) {
                return System.currentTimeMillis() - this.f54994e;
            }
            return j10;
        }

        public boolean j() {
            long j10 = this.f54992c;
            if (j10 != 0 && this.f54993d < j10) {
                return true;
            }
            return false;
        }

        public boolean l() {
            return this.f54990a;
        }

        /* synthetic */ d(b bVar) {
            this();
        }
    }
}
