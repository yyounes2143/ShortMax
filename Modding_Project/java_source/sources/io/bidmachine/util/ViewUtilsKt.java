package io.bidmachine.util;

import android.app.Activity;
import android.content.Context;
import android.graphics.Insets;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowInsets;
import androidx.annotation.RequiresApi;
import gt.i;
import io.bidmachine.util.ViewUtilsKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.m;
import yq.n;
import yq.t;
/* compiled from: ViewUtils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ViewUtilsKt {

    /* compiled from: ViewUtils.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements View.OnLayoutChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f58679a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ i<View> f58680b;

        /* JADX WARN: Multi-variable type inference failed */
        a(View view, i<? super View> iVar) {
            this.f58679a = view;
            this.f58680b = iVar;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(@NotNull View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            Intrinsics.checkNotNullParameter(view, "view");
            this.f58679a.removeOnLayoutChangeListener(this);
            this.f58680b.resumeWith(Result.d(view));
        }
    }

    /* compiled from: ViewUtils.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b implements m {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f58683a;

        b(View view) {
            this.f58683a = view;
        }

        @Override // yq.m
        public void s() {
            this.f58683a.setVisibility(8);
        }
    }

    /* compiled from: ViewUtils.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class c implements m {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f58684a;

        c(View view) {
            this.f58684a = view;
        }

        @Override // yq.m
        public void s() {
            this.f58684a.setVisibility(0);
        }
    }

    public static final void b(@NotNull ViewGroup viewGroup, @NotNull View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Intrinsics.checkNotNullParameter(view, "view");
        try {
            viewGroup.removeAllViews();
            Unit unit = Unit.f60915a;
        } catch (Throwable unused) {
        }
        c(viewGroup, view, layoutParams);
    }

    public static final void c(@NotNull ViewGroup viewGroup, @NotNull View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Intrinsics.checkNotNullParameter(view, "view");
        try {
            k(view);
            if (layoutParams != null) {
                viewGroup.addView(view, layoutParams);
            } else {
                viewGroup.addView(view);
            }
            Unit unit = Unit.f60915a;
        } catch (Throwable unused) {
        }
    }

    @Nullable
    public static final Object d(@NotNull final View view, @NotNull rs.c<? super View> cVar) {
        e eVar = new e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        if (view.isLaidOut() && !view.isLayoutRequested()) {
            eVar.resumeWith(Result.d(view));
        } else {
            final a aVar = new a(view, eVar);
            eVar.u(new Function1<Throwable, Unit>() { // from class: io.bidmachine.util.ViewUtilsKt$awaitLayout$2$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                    invoke2(th2);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Throwable th2) {
                    view.removeOnLayoutChangeListener(aVar);
                }
            });
            view.addOnLayoutChangeListener(aVar);
        }
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            f.c(cVar);
        }
        return B;
    }

    @Nullable
    public static final Activity e(@NotNull View view) {
        Context context;
        Intrinsics.checkNotNullParameter(view, "<this>");
        View f10 = f(view);
        if (f10 != null) {
            context = f10.getContext();
        } else {
            context = null;
        }
        if (!(context instanceof Activity)) {
            return null;
        }
        return (Activity) context;
    }

    @Nullable
    public static final View f(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        View view2 = null;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            view2 = (View) parent;
            if (view2.getId() == 16908290) {
                break;
            }
        }
        return view2;
    }

    @Nullable
    public static final Window g(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Activity e10 = e(view);
        if (e10 != null) {
            return e10.getWindow();
        }
        return null;
    }

    @NotNull
    public static final Rect h(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return new Rect(iArr[0], iArr[1], view.getWidth() + iArr[0], view.getHeight() + iArr[1]);
    }

    public static final void i(@Nullable View view) {
        if (view == null) {
            return;
        }
        n.b(new b(view));
    }

    public static final boolean j(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return t.e(view.getVisibility());
    }

    @Nullable
    public static final Unit k(@NotNull View view) {
        ViewGroup viewGroup;
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            viewGroup = (ViewGroup) parent;
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            return null;
        }
        viewGroup.removeView(view);
        return Unit.f60915a;
    }

    public static final void l(@Nullable View view, @Nullable Integer num) {
        if (view != null && num != null) {
            try {
                view.setBackgroundColor(num.intValue());
                Unit unit = Unit.f60915a;
            } catch (Throwable unused) {
            }
        }
    }

    @RequiresApi(api = 30)
    public static final void m(@NotNull View view, final int i10) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: yq.u
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                WindowInsets n10;
                n10 = ViewUtilsKt.n(i10, view2, windowInsets);
                return n10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsets n(int i10, View selfView, WindowInsets windowInsets) {
        Insets insets;
        int i11;
        int i12;
        int i13;
        int i14;
        Intrinsics.checkNotNullParameter(selfView, "selfView");
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        insets = windowInsets.getInsets(i10);
        Intrinsics.checkNotNullExpressionValue(insets, "windowInsets.getInsets(typeInsets)");
        i11 = insets.left;
        i12 = insets.top;
        i13 = insets.right;
        i14 = insets.bottom;
        selfView.setPadding(i11, i12, i13, i14);
        return windowInsets;
    }

    public static final void o(@Nullable View view) {
        if (view == null) {
            return;
        }
        n.b(new c(view));
    }
}
