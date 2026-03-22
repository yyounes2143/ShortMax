package kj;

import android.graphics.RectF;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.startshorts.androidplayer.ui.view.guide.model.HighLight;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RelativeGuide.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private HighLight f60732a;

    /* renamed from: b  reason: collision with root package name */
    private int f60733b;

    /* renamed from: c  reason: collision with root package name */
    private int f60734c;

    /* renamed from: d  reason: collision with root package name */
    private int f60735d;

    /* compiled from: RelativeGuide.kt */
    @Metadata
    /* renamed from: kj.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0848a {

        /* renamed from: a  reason: collision with root package name */
        private int f60736a;

        /* renamed from: b  reason: collision with root package name */
        private int f60737b;

        /* renamed from: c  reason: collision with root package name */
        private int f60738c;

        /* renamed from: d  reason: collision with root package name */
        private int f60739d;

        /* renamed from: e  reason: collision with root package name */
        private int f60740e;

        public final int a() {
            return this.f60739d;
        }

        public final int b() {
            return this.f60740e;
        }

        public final int c() {
            return this.f60736a;
        }

        public final int d() {
            return this.f60738c;
        }

        public final int e() {
            return this.f60737b;
        }

        public final void f(int i10) {
            this.f60739d = i10;
        }

        public final void g(int i10) {
            this.f60740e = i10;
        }

        public final void h(int i10) {
            this.f60736a = i10;
        }

        public final void i(int i10) {
            this.f60738c = i10;
        }

        public final void j(int i10) {
            this.f60737b = i10;
        }

        @NotNull
        public String toString() {
            return "MarginInfo{leftMargin=" + this.f60736a + ", topMargin=" + this.f60737b + ", rightMargin=" + this.f60738c + ", bottomMargin=" + this.f60739d + ", gravity=" + this.f60740e + '}';
        }
    }

    private final C0848a b(int i10, ViewGroup viewGroup, View view) {
        C0848a c0848a = new C0848a();
        HighLight highLight = this.f60732a;
        Intrinsics.checkNotNull(highLight);
        RectF a10 = highLight.a(viewGroup);
        if (i10 != 3) {
            if (i10 != 5) {
                if (i10 != 48) {
                    if (i10 == 80) {
                        Intrinsics.checkNotNull(a10);
                        c0848a.j((int) (a10.bottom + this.f60734c));
                        c0848a.h((int) a10.left);
                    }
                } else {
                    c0848a.g(80);
                    Intrinsics.checkNotNull(a10);
                    c0848a.f((int) ((viewGroup.getHeight() - a10.top) + this.f60734c));
                    c0848a.h((int) a10.left);
                }
            } else {
                Intrinsics.checkNotNull(a10);
                c0848a.h((int) (a10.right + this.f60734c));
                c0848a.j((int) a10.top);
            }
        } else {
            c0848a.g(5);
            Intrinsics.checkNotNull(a10);
            c0848a.i((int) ((viewGroup.getWidth() - a10.left) + this.f60734c));
            c0848a.j((int) a10.top);
        }
        return c0848a;
    }

    @NotNull
    public final View a(@NotNull ViewGroup viewGroup, @Nullable com.startshorts.androidplayer.ui.view.guide.core.a aVar) {
        Intrinsics.checkNotNullParameter(viewGroup, "viewGroup");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.f60733b, viewGroup, false);
        d(inflate);
        e(inflate, aVar);
        ViewGroup.LayoutParams layoutParams = inflate.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        int i10 = this.f60735d;
        Intrinsics.checkNotNull(inflate);
        C0848a b10 = b(i10, viewGroup, inflate);
        c(b10, viewGroup, inflate);
        layoutParams2.gravity = b10.b();
        layoutParams2.leftMargin += b10.c();
        layoutParams2.topMargin += b10.e();
        layoutParams2.rightMargin += b10.d();
        layoutParams2.bottomMargin += b10.a();
        inflate.setLayoutParams(layoutParams2);
        return inflate;
    }

    public final void f(@Nullable HighLight highLight) {
        this.f60732a = highLight;
    }

    @c
    protected final void d(@Nullable View view) {
    }

    protected final void e(@Nullable View view, @Nullable com.startshorts.androidplayer.ui.view.guide.core.a aVar) {
    }

    protected final void c(@Nullable C0848a c0848a, @Nullable ViewGroup viewGroup, @Nullable View view) {
    }
}
