package yp;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Typeface;
import android.view.View;
import android.widget.TextView;
import io.bidmachine.rendering.model.FontStyleType;
import jq.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.e;
import rq.j;
import tp.c0;
import up.c;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public final class a extends up.a {
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    public static final C0979a f71121s = new C0979a(null);
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final TextView f71122r;

    @Metadata
    /* renamed from: yp.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0979a {
        public /* synthetic */ C0979a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0979a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull Context context, @NotNull lq.a repository, @NotNull rq.a adElementParams, @NotNull c adFormListener, @NotNull b eventCallback, @Nullable io.bidmachine.rendering.internal.detector.brokencreative.a aVar) {
        super(context, repository, adElementParams, adFormListener, eventCallback, aVar);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        this.f71122r = new TextView(context);
    }

    @Override // up.a
    @NotNull
    public View D() {
        return this.f71122r;
    }

    @Override // tp.f
    @SuppressLint({"WrongConstant"})
    public void c() {
        Integer r10;
        this.f71122r.setText(h().n());
        Integer o10 = A().o();
        if (o10 != null) {
            this.f71122r.setTextColor(o10.intValue());
        }
        Float j10 = A().j();
        if (j10 != null && j10.floatValue() > 0.0f) {
            this.f71122r.setTextSize(1, j10.floatValue());
        }
        FontStyleType k10 = A().k();
        if (k10 != null) {
            this.f71122r.setTypeface(Typeface.create(Typeface.DEFAULT, k10.getTypeface()));
        }
        Integer s10 = A().s();
        if (s10 != null && s10.intValue() > 0) {
            this.f71122r.setMaxLines(s10.intValue());
        }
        if (A().r(B()) != null) {
            this.f71122r.setLineSpacing(r10.intValue(), 1.0f);
        }
        this.f71122r.setGravity(A().q().getValue() | 16);
        Integer n10 = A().n();
        if (n10 != null) {
            int intValue = n10.intValue();
            float j11 = s.j(B(), 1.0f);
            this.f71122r.setShadowLayer(s.j(B(), 1.0f), j11, j11, intValue);
        }
        this.f71122r.setIncludeFontPadding(false);
        z().a(this);
    }

    @Override // up.a
    protected void w(@NotNull View view, @Nullable c0 c0Var) {
        Intrinsics.checkNotNullParameter(view, "view");
        int h10 = e.h(A(), B(), 0, 2, null);
        j e10 = A().e(B());
        if (c0Var != null) {
            c0Var.a(this.f71122r, Integer.valueOf(h10), e10);
            return;
        }
        TextView textView = this.f71122r;
        io.bidmachine.rendering.internal.j jVar = new io.bidmachine.rendering.internal.j();
        jVar.j(e.d(A(), 0, 1, null));
        jVar.e(h10);
        if (e10 != null) {
            io.bidmachine.rendering.internal.j.i(jVar, e10.b(), e10.a(), 0.0f, 0.0f, 12, null);
            this.f71122r.setPadding(e10.b(), e10.b() - s.j(B(), 2.0f), e10.b(), e10.b() + s.j(B(), 2.0f));
        }
        textView.setBackground(jVar);
    }
}
