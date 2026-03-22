package com.startshorts.androidplayer.ui.view.guide.core;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.startshorts.androidplayer.ui.view.guide.core.GuideLayout;
import java.util.List;
import jj.c;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Controller.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ij.a f47266a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Activity f47267b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final List<com.startshorts.androidplayer.ui.view.guide.model.a> f47268c;

    /* renamed from: d  reason: collision with root package name */
    private int f47269d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private GuideLayout f47270e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private FrameLayout f47271f;

    /* renamed from: g  reason: collision with root package name */
    private int f47272g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f47273h;

    /* compiled from: Controller.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.ui.view.guide.core.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0646a implements GuideLayout.b {
        C0646a() {
        }

        @Override // com.startshorts.androidplayer.ui.view.guide.core.GuideLayout.b
        public void a(GuideLayout guideLayout) {
            a.this.f();
        }
    }

    public a(@NotNull ij.a builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.f47266a = builder;
        Activity b10 = builder.b();
        this.f47267b = b10;
        this.f47268c = builder.d();
        this.f47272g = -1;
        View c10 = builder.c();
        if (c10 == null) {
            if (b10 != null) {
                c10 = b10.findViewById(16908290);
            } else {
                c10 = null;
            }
        }
        if (c10 != null) {
            if (c10 instanceof FrameLayout) {
                this.f47271f = (FrameLayout) c10;
            } else if (b10 != null) {
                FrameLayout frameLayout = new FrameLayout(b10);
                ViewParent parent = c10.getParent();
                Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                ViewGroup viewGroup = (ViewGroup) parent;
                this.f47272g = viewGroup.indexOfChild(c10);
                viewGroup.removeView(c10);
                int i10 = this.f47272g;
                if (i10 >= 0) {
                    viewGroup.addView(frameLayout, i10, c10.getLayoutParams());
                } else {
                    viewGroup.addView(frameLayout, c10.getLayoutParams());
                }
                frameLayout.addView(c10, new ViewGroup.LayoutParams(-1, -1));
                this.f47271f = frameLayout;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(a aVar) {
        aVar.f47269d = 0;
        jj.a e10 = aVar.f47266a.e();
        if (e10 != null) {
            e10.b(aVar);
        }
        aVar.e();
    }

    private final void e() {
        if (this.f47267b == null) {
            return;
        }
        GuideLayout guideLayout = new GuideLayout(this.f47267b, this.f47268c.get(this.f47269d), this);
        guideLayout.setOnGuideLayoutDismissListener(new C0646a());
        FrameLayout frameLayout = this.f47271f;
        if (frameLayout != null) {
            frameLayout.addView(guideLayout, new FrameLayout.LayoutParams(-1, -1));
        }
        this.f47270e = guideLayout;
        c f10 = this.f47266a.f();
        if (f10 != null) {
            f10.a(this.f47269d);
        }
        this.f47273h = true;
    }

    @Nullable
    public final GuideLayout b() {
        return this.f47270e;
    }

    public final void c() {
        if (this.f47273h) {
            return;
        }
        this.f47273h = true;
        FrameLayout frameLayout = this.f47271f;
        if (frameLayout != null) {
            frameLayout.post(new Runnable() { // from class: ij.b
                @Override // java.lang.Runnable
                public final void run() {
                    com.startshorts.androidplayer.ui.view.guide.core.a.d(com.startshorts.androidplayer.ui.view.guide.core.a.this);
                }
            });
        }
    }

    public final void f() {
        if (this.f47269d < this.f47268c.size() - 1) {
            this.f47269d++;
            e();
            return;
        }
        jj.a e10 = this.f47266a.e();
        if (e10 != null) {
            e10.a(this);
        }
        this.f47273h = false;
    }
}
