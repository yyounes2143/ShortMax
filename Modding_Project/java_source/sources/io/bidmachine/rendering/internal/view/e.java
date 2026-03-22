package io.bidmachine.rendering.internal.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.rendering.model.SideType;
import java.util.List;
import rq.n0;
import rq.s;
/* loaded from: classes8.dex */
public class e extends RelativeLayout {

    /* loaded from: classes8.dex */
    public static class a extends RelativeLayout.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        private final int f58493a;

        /* renamed from: b  reason: collision with root package name */
        private final int f58494b;

        /* renamed from: c  reason: collision with root package name */
        private float f58495c;

        /* renamed from: d  reason: collision with root package name */
        private float f58496d;

        public a(int i10, int i11) {
            super(i10, i11);
            this.f58495c = 1.0f;
            this.f58496d = 1.0f;
            this.f58493a = i10;
            this.f58494b = i11;
        }

        @Nullable
        private View b(@NonNull List<tp.f> list, @Nullable String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            for (tp.f fVar : list) {
                if (fVar.h().j().equals(str)) {
                    return fVar.j();
                }
            }
            return null;
        }

        private void e(@Nullable n0 n0Var, @NonNull SideType sideType, int i10, int i11, int i12, @NonNull List<tp.f> list) {
            if (n0Var == null) {
                return;
            }
            View b10 = b(list, n0Var.a());
            if (b10 != null) {
                if (n0Var.b() != sideType) {
                    i10 = i11;
                }
                addRule(i10, b10.getId());
                return;
            }
            addRule(i12);
        }

        private void f(@Nullable n0 n0Var, @Nullable n0 n0Var2, @NonNull List<tp.f> list) {
            e(n0Var, SideType.Left, 5, 1, 9, list);
            e(n0Var2, SideType.Right, 7, 0, 11, list);
        }

        private boolean g(@Nullable n0 n0Var, @Nullable n0 n0Var2, int i10, int i11) {
            if (i11 > 0 && n0Var != null && n0Var2 != null) {
                addRule(i10);
                return true;
            }
            return false;
        }

        private void j(@Nullable n0 n0Var, @Nullable n0 n0Var2, @NonNull List<tp.f> list) {
            e(n0Var, SideType.Top, 6, 3, 10, list);
            e(n0Var2, SideType.Bottom, 8, 2, 12, list);
        }

        public void c(float f10) {
            this.f58496d = f10;
        }

        public void d(@NonNull Context context, @NonNull s sVar, @NonNull List<tp.f> list) {
            i(sVar.m());
            c(sVar.b());
            setMargins(sVar.f(context), sVar.h(context), -sVar.g(context), -sVar.e(context));
            n0 j10 = sVar.j();
            n0 a10 = sVar.a();
            if (!g(j10, a10, 15, sVar.n(context))) {
                j(j10, a10, list);
            }
            n0 d10 = sVar.d();
            n0 i10 = sVar.i();
            if (!g(d10, i10, 14, sVar.c(context))) {
                f(d10, i10, list);
            }
        }

        public void i(float f10) {
            this.f58495c = f10;
        }
    }

    public e(Context context) {
        super(context);
    }

    private void c(int i10, int i11, @NonNull View view, @NonNull a aVar) {
        Integer a10;
        Integer a11;
        float f10 = aVar.f58495c;
        if (f10 > 0.0f && f10 < 1.0f && (a11 = a(aVar.f58493a, i10, view.getMeasuredWidth(), f10)) != null) {
            ((RelativeLayout.LayoutParams) aVar).width = a11.intValue();
        }
        float f11 = aVar.f58496d;
        if (f11 > 0.0f && f11 < 1.0f && (a10 = a(aVar.f58494b, i11, view.getMeasuredHeight(), f11)) != null) {
            ((RelativeLayout.LayoutParams) aVar).height = a10.intValue();
        }
    }

    @Nullable
    @VisibleForTesting
    Integer a(int i10, int i11, int i12, float f10) {
        if (i10 <= 0) {
            if (i10 == -1) {
                i10 = i11;
            } else if (i10 != -2 || i12 == 0) {
                return null;
            } else {
                i10 = i12;
            }
        }
        if (i10 == 0) {
            return null;
        }
        return Integer.valueOf(Math.round(i10 * f10));
    }

    @VisibleForTesting
    void b(int i10, int i11) {
        int size = (View.MeasureSpec.getSize(i10) - getPaddingLeft()) - getPaddingRight();
        int size2 = (View.MeasureSpec.getSize(i11) - getPaddingTop()) - getPaddingBottom();
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            View childAt = getChildAt(i12);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if (layoutParams instanceof a) {
                c(size, size2, childAt, (a) layoutParams);
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        b(i10, i11);
        super.onMeasure(i10, i11);
    }
}
