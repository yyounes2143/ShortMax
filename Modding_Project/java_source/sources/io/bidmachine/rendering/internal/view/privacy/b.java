package io.bidmachine.rendering.internal.view.privacy;

import android.content.Context;
import android.graphics.Insets;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import io.bidmachine.rendering.internal.view.privacy.b;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public final class b extends FrameLayout {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final i f58503a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private Function0<Unit> f58504b;

    @Metadata
    /* loaded from: classes8.dex */
    static final class a extends Lambda implements Function0<Unit> {
        a() {
            super(0);
        }

        public final void a() {
            b.this.getOnCloseClickListener().invoke();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f58503a = kotlin.c.b(new c(context));
        this.f58504b = C0822b.f58506d;
        setOnClickListener(new View.OnClickListener() { // from class: pq.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                io.bidmachine.rendering.internal.view.privacy.b.e(io.bidmachine.rendering.internal.view.privacy.b.this, view);
            }
        });
        io.bidmachine.rendering.internal.view.privacy.c privacySheetView = getPrivacySheetView();
        privacySheetView.setOnCloseButtonClickListener(new a());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 81;
        Unit unit = Unit.f60915a;
        addView(privacySheetView, layoutParams);
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsets c(b this$0, int i10, View view, WindowInsets insets) {
        Rect rect;
        int systemBars;
        Insets insets2;
        int i11;
        int i12;
        int i13;
        int i14;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(insets, "insets");
        if (Build.VERSION.SDK_INT >= 30) {
            systemBars = WindowInsets.Type.systemBars();
            insets2 = insets.getInsets(systemBars);
            i11 = insets2.left;
            i12 = insets2.top;
            i13 = insets2.right;
            i14 = insets2.bottom;
            rect = new Rect(i11, i12, i13, i14);
        } else {
            rect = new Rect(insets.getSystemWindowInsetLeft(), insets.getSystemWindowInsetTop(), insets.getSystemWindowInsetRight(), insets.getSystemWindowInsetBottom());
        }
        this$0.getPrivacySheetView().setPadding(this$0.getPrivacySheetView().getPaddingLeft(), this$0.getPrivacySheetView().getPaddingTop(), this$0.getPrivacySheetView().getPaddingRight(), i10 + rect.bottom);
        this$0.setPadding(0, rect.top, 0, 0);
        return insets;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(b this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f58504b.invoke();
    }

    private final void g() {
        final int paddingBottom = getPrivacySheetView().getPaddingBottom();
        setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: pq.b
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                WindowInsets c10;
                c10 = io.bidmachine.rendering.internal.view.privacy.b.c(io.bidmachine.rendering.internal.view.privacy.b.this, paddingBottom, view, windowInsets);
                return c10;
            }
        });
    }

    private final io.bidmachine.rendering.internal.view.privacy.c getPrivacySheetView() {
        return (io.bidmachine.rendering.internal.view.privacy.c) this.f58503a.getValue();
    }

    public final void d() {
        getPrivacySheetView().c();
    }

    public final void f(@NotNull String title, @Nullable Drawable drawable, @NotNull Function0<Unit> clickListener) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(clickListener, "clickListener");
        getPrivacySheetView().d(title, drawable, clickListener);
    }

    @NotNull
    public final Function0<Unit> getOnCloseClickListener() {
        return this.f58504b;
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(@NotNull View child, int i10, int i11, int i12, int i13) {
        Intrinsics.checkNotNullParameter(child, "child");
        int size = View.MeasureSpec.getSize(i10);
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        int j10 = s.j(context, 600.0f);
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "context");
        if (size >= s.j(context2, 32.0f) + j10) {
            i10 = View.MeasureSpec.makeMeasureSpec(j10, 1073741824);
        }
        super.measureChildWithMargins(child, i10, i11, i12, i13);
    }

    public final void setOnCloseClickListener(@NotNull Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.f58504b = function0;
    }

    public final void setSubtitle(@NotNull String subtitle) {
        Intrinsics.checkNotNullParameter(subtitle, "subtitle");
        getPrivacySheetView().setSubtitle(subtitle);
    }

    public final void setTitle(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        getPrivacySheetView().setTitle(title);
    }

    @Metadata
    /* renamed from: io.bidmachine.rendering.internal.view.privacy.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    static final class C0822b extends Lambda implements Function0<Unit> {

        /* renamed from: d  reason: collision with root package name */
        public static final C0822b f58506d = new C0822b();

        C0822b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    static final class c extends Lambda implements Function0<io.bidmachine.rendering.internal.view.privacy.c> {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Context f58507d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Context context) {
            super(0);
            this.f58507d = context;
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: d */
        public final io.bidmachine.rendering.internal.view.privacy.c invoke() {
            io.bidmachine.rendering.internal.view.privacy.c cVar = new io.bidmachine.rendering.internal.view.privacy.c(this.f58507d);
            cVar.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.rendering.internal.view.privacy.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    b.c.e(view);
                }
            });
            return cVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(View view) {
        }
    }
}
