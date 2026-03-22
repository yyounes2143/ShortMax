package jk;

import android.graphics.Rect;
import android.os.SystemClock;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b0 {

    /* compiled from: ViewExt.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private long f60400a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long f60401b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function1<View, Unit> f60402c;

        /* JADX WARN: Multi-variable type inference failed */
        a(long j10, Function1<? super View, Unit> function1) {
            this.f60401b = j10;
            this.f60402c = function1;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View it) {
            Intrinsics.checkNotNullParameter(it, "it");
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j10 = this.f60400a;
            if (j10 != 0 && elapsedRealtime - j10 < this.f60401b) {
                return;
            }
            this.f60400a = elapsedRealtime;
            this.f60402c.invoke(it);
        }
    }

    public static final void b(@NotNull View view, long j10, @NotNull Function1<? super View, Unit> action) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        view.setOnClickListener(new a(j10, action));
    }

    public static /* synthetic */ void c(View view, long j10, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = 500;
        }
        b(view, j10, function1);
    }

    public static final void d(@Nullable View view) {
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public static final void e(@Nullable View view) {
        if (view != null) {
            view.setVisibility(4);
        }
    }

    public static final void f(@NotNull View view) {
        ViewGroup viewGroup;
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            viewGroup = (ViewGroup) parent;
        } else {
            viewGroup = null;
        }
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
    }

    public static final void g(@NotNull View view, int i10) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams2 = null;
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        } else {
            marginLayoutParams = null;
        }
        if (marginLayoutParams != null) {
            marginLayoutParams.topMargin = i10;
            marginLayoutParams2 = marginLayoutParams;
        }
        view.setLayoutParams(marginLayoutParams2);
    }

    public static final void h(@NotNull View view, int i10, int i11, int i12, int i13) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams2 = null;
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        } else {
            marginLayoutParams = null;
        }
        if (marginLayoutParams != null) {
            marginLayoutParams.setMargins(i10, i11, i12, i13);
            marginLayoutParams2 = marginLayoutParams;
        }
        view.setLayoutParams(marginLayoutParams2);
    }

    public static /* synthetic */ void i(View view, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = 0;
        }
        if ((i14 & 2) != 0) {
            i11 = 0;
        }
        if ((i14 & 4) != 0) {
            i12 = 0;
        }
        if ((i14 & 8) != 0) {
            i13 = 0;
        }
        h(view, i10, i11, i12, i13);
    }

    public static final void j(@NotNull final View view, final float f10) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.post(new Runnable() { // from class: jk.a0
            @Override // java.lang.Runnable
            public final void run() {
                b0.k(view, f10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(View view, float f10) {
        View view2;
        Rect rect = new Rect();
        view.getHitRect(rect);
        int a10 = g.a(f10);
        rect.left -= a10;
        rect.top -= a10;
        rect.right += a10;
        rect.bottom += a10;
        TouchDelegate touchDelegate = new TouchDelegate(rect, view);
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            view2 = (View) parent;
        } else {
            view2 = null;
        }
        if (view2 != null) {
            view2.setTouchDelegate(touchDelegate);
        }
    }

    public static final void l(@Nullable View view) {
        if (view != null) {
            view.setVisibility(0);
        }
    }
}
