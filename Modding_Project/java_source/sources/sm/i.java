package sm;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.utils.IabElementStyle;
/* loaded from: classes7.dex */
public abstract class i<T extends View> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final View.OnClickListener f66437a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    protected T f66438b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    protected IabElementStyle f66439c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f66440d = false;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final Runnable f66441e = new a();
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final Animator.AnimatorListener f66442f = new b();

    /* loaded from: classes7.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i.this.f66440d = false;
            i iVar = i.this;
            T t10 = iVar.f66438b;
            if (t10 != null && iVar.f66439c != null) {
                t10.animate().alpha(0.0f).setDuration(400L).setListener(i.this.f66442f).withLayer();
            }
        }
    }

    /* loaded from: classes7.dex */
    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            super.onAnimationCancel(animator);
            animator.removeAllListeners();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            boolean z10;
            super.onAnimationEnd(animator);
            T t10 = i.this.f66438b;
            if (t10 != null) {
                if (t10.getAlpha() != 0.0f) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                t10.setClickable(z10);
            }
        }
    }

    public i(@Nullable View.OnClickListener onClickListener) {
        this.f66437a = onClickListener;
    }

    protected ViewGroup.MarginLayoutParams b(@NonNull Context context, @NonNull IabElementStyle iabElementStyle) {
        return new ViewGroup.MarginLayoutParams(iabElementStyle.H(context).intValue(), iabElementStyle.n(context).intValue());
    }

    protected void d(@NonNull T t10, @NonNull IabElementStyle iabElementStyle) {
        if (t10 instanceof h) {
            ((h) t10).setStyle(iabElementStyle);
        }
    }

    protected boolean e(@NonNull T t10, @NonNull IabElementStyle iabElementStyle, @NonNull IabElementStyle iabElementStyle2) {
        return !TextUtils.equals(iabElementStyle.F(), iabElementStyle2.F());
    }

    public void g(@NonNull Context context, @NonNull ViewGroup viewGroup, @Nullable IabElementStyle iabElementStyle) {
        RelativeLayout.LayoutParams layoutParams;
        IabElementStyle iabElementStyle2;
        IabElementStyle g10 = j(context, iabElementStyle).g(iabElementStyle);
        if (!g10.L().booleanValue()) {
            l();
            return;
        }
        if (viewGroup instanceof FrameLayout) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(b(context, g10));
            g10.b(layoutParams2);
            layoutParams = layoutParams2;
        } else if (viewGroup instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(b(context, g10));
            g10.f(layoutParams3);
            layoutParams = layoutParams3;
        } else {
            throw new IllegalArgumentException("Parent should be instance of FrameLayout or RelativeLayout");
        }
        g10.d(context, layoutParams);
        T t10 = this.f66438b;
        if (t10 != null && (iabElementStyle2 = this.f66439c) != null && !e(t10, iabElementStyle2, g10)) {
            this.f66438b.setLayoutParams(layoutParams);
            this.f66438b.setVisibility(0);
        } else {
            q.J(this.f66438b);
            T h10 = h(context, g10);
            this.f66438b = h10;
            viewGroup.addView(h10, layoutParams);
        }
        this.f66438b.setAlpha(g10.y().floatValue());
        g10.e(context, this.f66438b);
        this.f66438b.setOnClickListener(this.f66437a);
        this.f66439c = g10;
        d(this.f66438b, g10);
        c(context, this.f66438b, g10);
    }

    @NonNull
    abstract T h(@NonNull Context context, @NonNull IabElementStyle iabElementStyle);

    public void i() {
        T t10 = this.f66438b;
        if (t10 != null) {
            t10.bringToFront();
        }
    }

    @NonNull
    protected abstract IabElementStyle j(@NonNull Context context, @Nullable IabElementStyle iabElementStyle);

    public void k() {
        this.f66440d = false;
        T t10 = this.f66438b;
        if (t10 != null && this.f66439c != null) {
            t10.animate().cancel();
            this.f66438b.removeCallbacks(this.f66441e);
            this.f66438b.setClickable(true);
            this.f66438b.setAlpha(this.f66439c.y().floatValue());
        }
    }

    public void l() {
        if (this.f66438b != null) {
            k();
            q.J(this.f66438b);
            this.f66438b = null;
            this.f66439c = null;
        }
    }

    public void m() {
        T t10;
        if (n() && (t10 = this.f66438b) != null && this.f66439c != null) {
            c(t10.getContext(), this.f66438b, this.f66439c);
        }
    }

    public boolean n() {
        if (this.f66438b != null) {
            return true;
        }
        return false;
    }

    public void o(int i10) {
        T t10 = this.f66438b;
        if (t10 != null) {
            t10.setVisibility(i10);
        }
    }

    public void p() {
        IabElementStyle iabElementStyle;
        Float q10;
        if (!this.f66440d && this.f66438b != null && (iabElementStyle = this.f66439c) != null && (q10 = iabElementStyle.q()) != null && q10.floatValue() != 0.0f) {
            this.f66440d = true;
            this.f66438b.postDelayed(this.f66441e, q10.floatValue() * 1000.0f);
        }
    }

    public void q() {
        if (this.f66438b != null && this.f66439c != null) {
            k();
            p();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(@NonNull Context context, @NonNull T t10, @NonNull IabElementStyle iabElementStyle) {
    }
}
