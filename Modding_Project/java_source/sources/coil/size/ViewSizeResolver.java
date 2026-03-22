package coil.size;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import coil.size.ViewSizeResolver;
import gt.i;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.e;
import n0.c;
import n0.g;
import n0.h;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewSizeResolver.kt */
@Metadata
/* loaded from: classes2.dex */
public interface ViewSizeResolver<T extends View> extends h {

    /* compiled from: ViewSizeResolver.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class DefaultImpls {

        /* compiled from: ViewSizeResolver.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: a  reason: collision with root package name */
            private boolean f4099a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ViewSizeResolver<T> f4100b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ ViewTreeObserver f4101c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ i<g> f4102d;

            /* JADX WARN: Multi-variable type inference failed */
            a(ViewSizeResolver<T> viewSizeResolver, ViewTreeObserver viewTreeObserver, i<? super g> iVar) {
                this.f4100b = viewSizeResolver;
                this.f4101c = viewTreeObserver;
                this.f4102d = iVar;
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                g e10 = DefaultImpls.e(this.f4100b);
                if (e10 != null) {
                    DefaultImpls.g(this.f4100b, this.f4101c, this);
                    if (!this.f4099a) {
                        this.f4099a = true;
                        this.f4102d.resumeWith(Result.d(e10));
                    }
                }
                return true;
            }
        }

        private static <T extends View> c c(ViewSizeResolver<T> viewSizeResolver, int i10, int i11, int i12) {
            if (i10 == -2) {
                return c.b.f62717a;
            }
            int i13 = i10 - i12;
            if (i13 > 0) {
                return n0.a.a(i13);
            }
            int i14 = i11 - i12;
            if (i14 > 0) {
                return n0.a.a(i14);
            }
            return null;
        }

        private static <T extends View> c d(ViewSizeResolver<T> viewSizeResolver) {
            int i10;
            int i11;
            ViewGroup.LayoutParams layoutParams = viewSizeResolver.getView().getLayoutParams();
            if (layoutParams != null) {
                i10 = layoutParams.height;
            } else {
                i10 = -1;
            }
            int height = viewSizeResolver.getView().getHeight();
            if (viewSizeResolver.a()) {
                i11 = viewSizeResolver.getView().getPaddingTop() + viewSizeResolver.getView().getPaddingBottom();
            } else {
                i11 = 0;
            }
            return c(viewSizeResolver, i10, height, i11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends View> g e(ViewSizeResolver<T> viewSizeResolver) {
            c d10;
            c f10 = f(viewSizeResolver);
            if (f10 == null || (d10 = d(viewSizeResolver)) == null) {
                return null;
            }
            return new g(f10, d10);
        }

        private static <T extends View> c f(ViewSizeResolver<T> viewSizeResolver) {
            int i10;
            int i11;
            ViewGroup.LayoutParams layoutParams = viewSizeResolver.getView().getLayoutParams();
            if (layoutParams != null) {
                i10 = layoutParams.width;
            } else {
                i10 = -1;
            }
            int width = viewSizeResolver.getView().getWidth();
            if (viewSizeResolver.a()) {
                i11 = viewSizeResolver.getView().getPaddingLeft() + viewSizeResolver.getView().getPaddingRight();
            } else {
                i11 = 0;
            }
            return c(viewSizeResolver, i10, width, i11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends View> void g(ViewSizeResolver<T> viewSizeResolver, ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            } else {
                viewSizeResolver.getView().getViewTreeObserver().removeOnPreDrawListener(onPreDrawListener);
            }
        }

        @Nullable
        public static <T extends View> Object h(@NotNull final ViewSizeResolver<T> viewSizeResolver, @NotNull rs.c<? super g> cVar) {
            g e10 = e(viewSizeResolver);
            if (e10 != null) {
                return e10;
            }
            e eVar = new e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
            eVar.H();
            final ViewTreeObserver viewTreeObserver = viewSizeResolver.getView().getViewTreeObserver();
            final a aVar = new a(viewSizeResolver, viewTreeObserver, eVar);
            viewTreeObserver.addOnPreDrawListener(aVar);
            eVar.u(new Function1<Throwable, Unit>() { // from class: coil.size.ViewSizeResolver$size$3$1
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
                    ViewSizeResolver.DefaultImpls.g(viewSizeResolver, viewTreeObserver, aVar);
                }
            });
            Object B = eVar.B();
            if (B == kotlin.coroutines.intrinsics.a.f()) {
                f.c(cVar);
            }
            return B;
        }
    }

    boolean a();

    @NotNull
    T getView();
}
