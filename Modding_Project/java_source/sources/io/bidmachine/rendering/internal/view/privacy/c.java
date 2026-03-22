package io.bidmachine.rendering.internal.view.privacy;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
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
public final class c extends LinearLayout {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final i f58508a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final i f58509b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final i f58510c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final i f58511d;

    @Metadata
    /* loaded from: classes8.dex */
    static final class a extends Lambda implements Function0<LinearLayout> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: b */
        public final LinearLayout invoke() {
            return (LinearLayout) c.this.findViewById(pp.c.f64972a);
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    static final class b extends Lambda implements Function0<View> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: b */
        public final View invoke() {
            return c.this.findViewById(pp.c.f64973b);
        }
    }

    @Metadata
    /* renamed from: io.bidmachine.rendering.internal.view.privacy.c$c  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    static final class C0823c extends Lambda implements Function0<TextView> {
        C0823c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: b */
        public final TextView invoke() {
            return (TextView) c.this.findViewById(pp.c.f64974c);
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    static final class d extends Lambda implements Function0<TextView> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: b */
        public final TextView invoke() {
            return (TextView) c.this.findViewById(pp.c.f64975d);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f58508a = kotlin.c.b(new d());
        this.f58509b = kotlin.c.b(new C0823c());
        this.f58510c = kotlin.c.b(new b());
        this.f58511d = kotlin.c.b(new a());
        View.inflate(context, pp.d.f64976a, this);
        setOrientation(1);
        setBackgroundResource(pp.b.f64971b);
        int j10 = s.j(context, 16.0f);
        setPadding(j10, j10, j10, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(Function0 clickListener, View view) {
        Intrinsics.checkNotNullParameter(clickListener, "$clickListener");
        clickListener.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(Function0 clickListener, View view) {
        Intrinsics.checkNotNullParameter(clickListener, "$clickListener");
        clickListener.invoke();
    }

    private final LinearLayout getActionButtonsContainer() {
        Object value = this.f58511d.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-actionButtonsContainer>(...)");
        return (LinearLayout) value;
    }

    private final View getCloseButton() {
        Object value = this.f58510c.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-closeButton>(...)");
        return (View) value;
    }

    private final TextView getSubtitleTextView() {
        Object value = this.f58509b.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-subtitleTextView>(...)");
        return (TextView) value;
    }

    private final TextView getTitleTextView() {
        Object value = this.f58508a.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-titleTextView>(...)");
        return (TextView) value;
    }

    public final void c() {
        getActionButtonsContainer().removeAllViews();
    }

    public final void d(@NotNull String title, @Nullable Drawable drawable, @NotNull final Function0<Unit> clickListener) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(clickListener, "clickListener");
        LinearLayout actionButtonsContainer = getActionButtonsContainer();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        io.bidmachine.rendering.internal.view.privacy.a aVar = new io.bidmachine.rendering.internal.view.privacy.a(context);
        aVar.setText(title);
        aVar.setActionIcon(drawable);
        aVar.setOnClickListener(new View.OnClickListener() { // from class: pq.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                io.bidmachine.rendering.internal.view.privacy.c.e(Function0.this, view);
            }
        });
        actionButtonsContainer.addView(aVar, -1, -2);
    }

    public final void setOnCloseButtonClickListener(@NotNull final Function0<Unit> clickListener) {
        Intrinsics.checkNotNullParameter(clickListener, "clickListener");
        getCloseButton().setOnClickListener(new View.OnClickListener() { // from class: pq.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                io.bidmachine.rendering.internal.view.privacy.c.f(Function0.this, view);
            }
        });
    }

    public final void setSubtitle(@NotNull String subtitle) {
        Intrinsics.checkNotNullParameter(subtitle, "subtitle");
        getSubtitleTextView().setText(subtitle);
    }

    public final void setTitle(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        getTitleTextView().setText(title);
    }
}
