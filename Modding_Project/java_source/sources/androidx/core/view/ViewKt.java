package androidx.core.view;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.Px;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
/* compiled from: View.kt */
@Metadata
@SourceDebugExtension({"SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,414:1\n37#1:415\n53#1:416\n326#1,4:420\n43#2,3:417\n*S KotlinDebug\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt\n*L\n68#1:415\n68#1:416\n310#1:420,4\n232#1:417,3\n*E\n"})
/* loaded from: classes.dex */
public final class ViewKt {
    public static final void doOnAttach(@NotNull final View view, @NotNull final Function1<? super View, Unit> function1) {
        if (view.isAttachedToWindow()) {
            function1.invoke(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.core.view.ViewKt$doOnAttach$1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(@NotNull View view2) {
                    view.removeOnAttachStateChangeListener(this);
                    function1.invoke(view2);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(@NotNull View view2) {
                }
            });
        }
    }

    public static final void doOnDetach(@NotNull final View view, @NotNull final Function1<? super View, Unit> function1) {
        if (!view.isAttachedToWindow()) {
            function1.invoke(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.core.view.ViewKt$doOnDetach$1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(@NotNull View view2) {
                    view.removeOnAttachStateChangeListener(this);
                    function1.invoke(view2);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(@NotNull View view2) {
                }
            });
        }
    }

    public static final void doOnLayout(@NotNull View view, @NotNull final Function1<? super View, Unit> function1) {
        if (view.isLaidOut() && !view.isLayoutRequested()) {
            function1.invoke(view);
        } else {
            view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.core.view.ViewKt$doOnLayout$$inlined$doOnNextLayout$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(@NotNull View view2, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                    view2.removeOnLayoutChangeListener(this);
                    Function1.this.invoke(view2);
                }
            });
        }
    }

    public static final void doOnNextLayout(@NotNull View view, @NotNull final Function1<? super View, Unit> function1) {
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.core.view.ViewKt$doOnNextLayout$1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(@NotNull View view2, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                view2.removeOnLayoutChangeListener(this);
                function1.invoke(view2);
            }
        });
    }

    @NotNull
    public static final OneShotPreDrawListener doOnPreDraw(@NotNull final View view, @NotNull final Function1<? super View, Unit> function1) {
        return OneShotPreDrawListener.add(view, new Runnable() { // from class: androidx.core.view.ViewKt$doOnPreDraw$1
            @Override // java.lang.Runnable
            public final void run() {
                function1.invoke(view);
            }
        });
    }

    @NotNull
    public static final Bitmap drawToBitmap(@NotNull View view, @NotNull Bitmap.Config config) {
        if (view.isLaidOut()) {
            Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), config);
            Canvas canvas = new Canvas(createBitmap);
            canvas.translate(-view.getScrollX(), -view.getScrollY());
            view.draw(canvas);
            return createBitmap;
        }
        throw new IllegalStateException("View needs to be laid out before calling drawToBitmap()");
    }

    public static /* synthetic */ Bitmap drawToBitmap$default(View view, Bitmap.Config config, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        return drawToBitmap(view, config);
    }

    @NotNull
    public static final Sequence<View> getAllViews(@NotNull View view) {
        return kotlin.sequences.j.b(new ViewKt$allViews$1(view, null));
    }

    @NotNull
    public static final Sequence<ViewParent> getAncestors(@NotNull View view) {
        return kotlin.sequences.j.h(view.getParent(), ViewKt$ancestors$1.INSTANCE);
    }

    public static final int getMarginBottom(@NotNull View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        } else {
            marginLayoutParams = null;
        }
        if (marginLayoutParams != null) {
            return marginLayoutParams.bottomMargin;
        }
        return 0;
    }

    public static final int getMarginEnd(@NotNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return ((ViewGroup.MarginLayoutParams) layoutParams).getMarginEnd();
        }
        return 0;
    }

    public static final int getMarginLeft(@NotNull View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        } else {
            marginLayoutParams = null;
        }
        if (marginLayoutParams != null) {
            return marginLayoutParams.leftMargin;
        }
        return 0;
    }

    public static final int getMarginRight(@NotNull View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        } else {
            marginLayoutParams = null;
        }
        if (marginLayoutParams != null) {
            return marginLayoutParams.rightMargin;
        }
        return 0;
    }

    public static final int getMarginStart(@NotNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return ((ViewGroup.MarginLayoutParams) layoutParams).getMarginStart();
        }
        return 0;
    }

    public static final int getMarginTop(@NotNull View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        } else {
            marginLayoutParams = null;
        }
        if (marginLayoutParams != null) {
            return marginLayoutParams.topMargin;
        }
        return 0;
    }

    public static final boolean isGone(@NotNull View view) {
        if (view.getVisibility() == 8) {
            return true;
        }
        return false;
    }

    public static final boolean isInvisible(@NotNull View view) {
        if (view.getVisibility() == 4) {
            return true;
        }
        return false;
    }

    public static final boolean isVisible(@NotNull View view) {
        if (view.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final Runnable postDelayed(@NotNull View view, long j10, @NotNull final Function0<Unit> function0) {
        Runnable runnable = new Runnable() { // from class: androidx.core.view.ViewKt$postDelayed$runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                function0.invoke();
            }
        };
        view.postDelayed(runnable, j10);
        return runnable;
    }

    @NotNull
    public static final Runnable postOnAnimationDelayed(@NotNull View view, long j10, @NotNull final Function0<Unit> function0) {
        Runnable runnable = new Runnable() { // from class: androidx.core.view.i0
            @Override // java.lang.Runnable
            public final void run() {
                Function0.this.invoke();
            }
        };
        view.postOnAnimationDelayed(runnable, j10);
        return runnable;
    }

    public static final void setGone(@NotNull View view, boolean z10) {
        int i10;
        if (z10) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        view.setVisibility(i10);
    }

    public static final void setInvisible(@NotNull View view, boolean z10) {
        int i10;
        if (z10) {
            i10 = 4;
        } else {
            i10 = 0;
        }
        view.setVisibility(i10);
    }

    public static final void setPadding(@NotNull View view, @Px int i10) {
        view.setPadding(i10, i10, i10, i10);
    }

    public static final void setVisible(@NotNull View view, boolean z10) {
        int i10;
        if (z10) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        view.setVisibility(i10);
    }

    public static final void updateLayoutParams(@NotNull View view, @NotNull Function1<? super ViewGroup.LayoutParams, Unit> function1) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            function1.invoke(layoutParams);
            view.setLayoutParams(layoutParams);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
    }

    public static final /* synthetic */ <T extends ViewGroup.LayoutParams> void updateLayoutParamsTyped(View view, Function1<? super T, Unit> function1) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.reifiedOperationMarker(1, "T");
        function1.invoke(layoutParams);
        view.setLayoutParams(layoutParams);
    }

    public static final void updatePadding(@NotNull View view, @Px int i10, @Px int i11, @Px int i12, @Px int i13) {
        view.setPadding(i10, i11, i12, i13);
    }

    public static /* synthetic */ void updatePadding$default(View view, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = view.getPaddingLeft();
        }
        if ((i14 & 2) != 0) {
            i11 = view.getPaddingTop();
        }
        if ((i14 & 4) != 0) {
            i12 = view.getPaddingRight();
        }
        if ((i14 & 8) != 0) {
            i13 = view.getPaddingBottom();
        }
        view.setPadding(i10, i11, i12, i13);
    }

    public static final void updatePaddingRelative(@NotNull View view, @Px int i10, @Px int i11, @Px int i12, @Px int i13) {
        view.setPaddingRelative(i10, i11, i12, i13);
    }

    public static /* synthetic */ void updatePaddingRelative$default(View view, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = view.getPaddingStart();
        }
        if ((i14 & 2) != 0) {
            i11 = view.getPaddingTop();
        }
        if ((i14 & 4) != 0) {
            i12 = view.getPaddingEnd();
        }
        if ((i14 & 8) != 0) {
            i13 = view.getPaddingBottom();
        }
        view.setPaddingRelative(i10, i11, i12, i13);
    }
}
