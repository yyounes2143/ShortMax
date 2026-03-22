package com.facebook.login.widget;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.facebook.login.w;
import com.facebook.login.x;
import com.facebook.login.y;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ToolTipPopup.kt */
@Metadata
/* loaded from: classes3.dex */
public final class ToolTipPopup {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final a f16673i = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f16674a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<View> f16675b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Context f16676c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private b f16677d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private PopupWindow f16678e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private Style f16679f;

    /* renamed from: g  reason: collision with root package name */
    private long f16680g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final ViewTreeObserver.OnScrollChangedListener f16681h;

    /* compiled from: ToolTipPopup.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum Style {
        BLUE,
        BLACK
    }

    /* compiled from: ToolTipPopup.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ToolTipPopup.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public final class b extends FrameLayout {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ImageView f16682a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final ImageView f16683b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final View f16684c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final ImageView f16685d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ ToolTipPopup f16686e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull ToolTipPopup toolTipPopup, Context context) {
            super(context);
            Intrinsics.checkNotNullParameter(context, "context");
            this.f16686e = toolTipPopup;
            LayoutInflater.from(context).inflate(y.f16701a, this);
            View findViewById = findViewById(x.f16700e);
            Intrinsics.checkNotNull(findViewById, "null cannot be cast to non-null type android.widget.ImageView");
            this.f16682a = (ImageView) findViewById;
            View findViewById2 = findViewById(x.f16698c);
            Intrinsics.checkNotNull(findViewById2, "null cannot be cast to non-null type android.widget.ImageView");
            this.f16683b = (ImageView) findViewById2;
            View findViewById3 = findViewById(x.f16696a);
            Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(R.id.com_facebook_body_frame)");
            this.f16684c = findViewById3;
            View findViewById4 = findViewById(x.f16697b);
            Intrinsics.checkNotNull(findViewById4, "null cannot be cast to non-null type android.widget.ImageView");
            this.f16685d = (ImageView) findViewById4;
        }

        @NotNull
        public final View a() {
            return this.f16684c;
        }

        @NotNull
        public final ImageView b() {
            return this.f16683b;
        }

        @NotNull
        public final ImageView c() {
            return this.f16682a;
        }

        @NotNull
        public final ImageView d() {
            return this.f16685d;
        }

        public final void e() {
            this.f16682a.setVisibility(4);
            this.f16683b.setVisibility(0);
        }

        public final void f() {
            this.f16682a.setVisibility(0);
            this.f16683b.setVisibility(4);
        }
    }

    public ToolTipPopup(@NotNull String text, @NotNull View anchor) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        this.f16674a = text;
        this.f16675b = new WeakReference<>(anchor);
        Context context = anchor.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "anchor.context");
        this.f16676c = context;
        this.f16679f = Style.BLUE;
        this.f16680g = 6000L;
        this.f16681h = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.facebook.login.widget.h
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                ToolTipPopup.f(ToolTipPopup.this);
            }
        };
    }

    private final void e() {
        ViewTreeObserver viewTreeObserver;
        if (o4.a.d(this)) {
            return;
        }
        try {
            l();
            View view = this.f16675b.get();
            if (view != null && (viewTreeObserver = view.getViewTreeObserver()) != null) {
                viewTreeObserver.addOnScrollChangedListener(this.f16681h);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(ToolTipPopup this$0) {
        PopupWindow popupWindow;
        if (o4.a.d(ToolTipPopup.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            if (this$0.f16675b.get() != null && (popupWindow = this$0.f16678e) != null && popupWindow.isShowing()) {
                if (popupWindow.isAboveAnchor()) {
                    b bVar = this$0.f16677d;
                    if (bVar != null) {
                        bVar.e();
                        return;
                    }
                    return;
                }
                b bVar2 = this$0.f16677d;
                if (bVar2 != null) {
                    bVar2.f();
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, ToolTipPopup.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(ToolTipPopup this$0) {
        if (o4.a.d(ToolTipPopup.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.d();
        } catch (Throwable th2) {
            o4.a.b(th2, ToolTipPopup.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(ToolTipPopup this$0, View view) {
        if (o4.a.d(ToolTipPopup.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.d();
        } catch (Throwable th2) {
            o4.a.b(th2, ToolTipPopup.class);
        }
    }

    private final void l() {
        ViewTreeObserver viewTreeObserver;
        if (o4.a.d(this)) {
            return;
        }
        try {
            View view = this.f16675b.get();
            if (view != null && (viewTreeObserver = view.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnScrollChangedListener(this.f16681h);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final void m() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            PopupWindow popupWindow = this.f16678e;
            if (popupWindow != null && popupWindow.isShowing()) {
                if (popupWindow.isAboveAnchor()) {
                    b bVar = this.f16677d;
                    if (bVar != null) {
                        bVar.e();
                        return;
                    }
                    return;
                }
                b bVar2 = this.f16677d;
                if (bVar2 != null) {
                    bVar2.f();
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void d() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            l();
            PopupWindow popupWindow = this.f16678e;
            if (popupWindow != null) {
                popupWindow.dismiss();
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void g(long j10) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            this.f16680g = j10;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void h(@NotNull Style style) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(style, "style");
            this.f16679f = style;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void i() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (this.f16675b.get() != null) {
                b bVar = new b(this, this.f16676c);
                this.f16677d = bVar;
                View findViewById = bVar.findViewById(x.f16699d);
                Intrinsics.checkNotNull(findViewById, "null cannot be cast to non-null type android.widget.TextView");
                ((TextView) findViewById).setText(this.f16674a);
                if (this.f16679f == Style.BLUE) {
                    bVar.a().setBackgroundResource(w.f16627g);
                    bVar.b().setImageResource(w.f16628h);
                    bVar.c().setImageResource(w.f16629i);
                    bVar.d().setImageResource(w.f16630j);
                } else {
                    bVar.a().setBackgroundResource(w.f16623c);
                    bVar.b().setImageResource(w.f16624d);
                    bVar.c().setImageResource(w.f16625e);
                    bVar.d().setImageResource(w.f16626f);
                }
                Context context = this.f16676c;
                Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.app.Activity");
                View decorView = ((Activity) context).getWindow().getDecorView();
                Intrinsics.checkNotNullExpressionValue(decorView, "window.decorView");
                int width = decorView.getWidth();
                int height = decorView.getHeight();
                e();
                bVar.measure(View.MeasureSpec.makeMeasureSpec(width, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(height, Integer.MIN_VALUE));
                PopupWindow popupWindow = new PopupWindow(bVar, bVar.getMeasuredWidth(), bVar.getMeasuredHeight());
                this.f16678e = popupWindow;
                popupWindow.showAsDropDown(this.f16675b.get());
                m();
                if (this.f16680g > 0) {
                    bVar.postDelayed(new Runnable() { // from class: com.facebook.login.widget.i
                        @Override // java.lang.Runnable
                        public final void run() {
                            ToolTipPopup.j(ToolTipPopup.this);
                        }
                    }, this.f16680g);
                }
                popupWindow.setTouchable(true);
                bVar.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.login.widget.j
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ToolTipPopup.k(ToolTipPopup.this, view);
                    }
                });
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }
}
