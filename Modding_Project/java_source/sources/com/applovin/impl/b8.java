package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.graphics.Insets;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowInsets;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
/* loaded from: classes2.dex */
public abstract class b8 {
    public static void a(View view, long j10, Runnable runnable) {
        view.setVisibility(4);
        view.bringToFront();
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(j10);
        alphaAnimation.setAnimationListener(new a(view, runnable));
        view.startAnimation(alphaAnimation);
    }

    public static void c(View view) {
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(view);
        }
    }

    public static boolean b(int i10) {
        return i10 == 0;
    }

    public static void b(View view, long j10, Runnable runnable) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(j10);
        alphaAnimation.setAnimationListener(new b(view, runnable));
        view.startAnimation(alphaAnimation);
    }

    public static boolean a(int i10, int i11) {
        return b(i10) != b(i11);
    }

    public static Activity b(View view, com.applovin.impl.sdk.k kVar) {
        if (view == null) {
            return null;
        }
        for (int i10 = 0; i10 < 1000; i10++) {
            try {
                Context context = view.getContext();
                if (context instanceof Activity) {
                    return (Activity) context;
                }
                ViewParent parent = view.getParent();
                if (!(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } catch (Throwable th2) {
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    kVar.O().a("ViewUtils", "Encountered error while retrieving activity from view", th2);
                }
            }
        }
        return null;
    }

    public static String a(int i10) {
        if (i10 == 0) {
            return "VISIBLE";
        }
        if (i10 == 4) {
            return "INVISIBLE";
        }
        if (i10 == 8) {
            return "GONE";
        }
        return String.valueOf(i10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0031, code lost:
        if ((r2 & 16) == 16) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0061, code lost:
        if ((r2 & 1) == 1) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] a(int r2, int r3, int r4) {
        /*
            if (r2 != 0) goto L7
            int[] r2 = new int[]{r3, r4}
            return r2
        L7:
            r0 = r2 & 119(0x77, float:1.67E-43)
            r1 = 119(0x77, float:1.67E-43)
            if (r0 != r1) goto L14
            r2 = 13
            int[] r2 = new int[]{r2}
            return r2
        L14:
            r0 = r2 & 112(0x70, float:1.57E-43)
            r1 = 112(0x70, float:1.57E-43)
            if (r0 != r1) goto L1b
            goto L33
        L1b:
            r0 = r2 & 48
            r1 = 48
            if (r0 != r1) goto L24
            r3 = 10
            goto L35
        L24:
            r0 = r2 & 80
            r1 = 80
            if (r0 != r1) goto L2d
            r3 = 12
            goto L35
        L2d:
            r0 = r2 & 16
            r1 = 16
            if (r0 != r1) goto L35
        L33:
            r3 = 15
        L35:
            r0 = r2 & 7
            r1 = 7
            if (r0 != r1) goto L3b
            goto L63
        L3b:
            r0 = 8388611(0x800003, float:1.1754948E-38)
            r1 = r2 & r0
            if (r1 != r0) goto L45
            r4 = 20
            goto L65
        L45:
            r0 = r2 & 3
            r1 = 3
            if (r0 != r1) goto L4d
            r4 = 9
            goto L65
        L4d:
            r0 = 8388613(0x800005, float:1.175495E-38)
            r1 = r2 & r0
            if (r1 != r0) goto L57
            r4 = 21
            goto L65
        L57:
            r0 = r2 & 5
            r1 = 5
            if (r0 != r1) goto L5f
            r4 = 11
            goto L65
        L5f:
            r0 = 1
            r2 = r2 & r0
            if (r2 != r0) goto L65
        L63:
            r4 = 14
        L65:
            int[] r2 = new int[]{r4, r3}
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.b8.a(int, int, int):int[]");
    }

    public static View b(View view) {
        View rootView;
        if (view == null || (rootView = view.getRootView()) == null) {
            return null;
        }
        View findViewById = rootView.findViewById(16908290);
        return findViewById != null ? findViewById : rootView;
    }

    public static void a(View view, final com.applovin.impl.sdk.k kVar) {
        if (view == null || kVar == null || !o0.b()) {
            return;
        }
        view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.applovin.impl.v8
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                WindowInsets a10;
                a10 = b8.a(com.applovin.impl.sdk.k.this, view2, windowInsets);
                return a10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ WindowInsets a(com.applovin.impl.sdk.k kVar, View view, WindowInsets windowInsets) {
        Insets insets;
        int i10;
        int i11;
        int i12;
        int i13;
        WindowInsets windowInsets2;
        insets = windowInsets.getInsets(((Integer) kVar.a(v4.f10348s2)).intValue());
        i10 = insets.left;
        i11 = insets.top;
        i12 = insets.right;
        i13 = insets.bottom;
        view.setPadding(i10, i11, i12, i13);
        windowInsets2 = WindowInsets.CONSUMED;
        return windowInsets2;
    }

    public static boolean a(View view, Activity activity) {
        if (activity != null && view != null) {
            Window window = activity.getWindow();
            if (window != null) {
                return a(view, window.getDecorView());
            }
            View findViewById = activity.findViewById(16908290);
            if (findViewById != null) {
                return a(view, findViewById.getRootView());
            }
        }
        return false;
    }

    /* loaded from: classes2.dex */
    class a implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f7595a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Runnable f7596b;

        a(View view, Runnable runnable) {
            this.f7595a = view;
            this.f7596b = runnable;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            Runnable runnable = this.f7596b;
            if (runnable != null) {
                runnable.run();
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            this.f7595a.setVisibility(0);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }
    }

    /* loaded from: classes2.dex */
    class b implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f7597a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Runnable f7598b;

        b(View view, Runnable runnable) {
            this.f7597a = view;
            this.f7598b = runnable;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f7597a.setVisibility(4);
            Runnable runnable = this.f7598b;
            if (runnable != null) {
                runnable.run();
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            this.f7597a.setVisibility(0);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }
    }

    private static boolean a(View view, View view2) {
        if (view == view2) {
            return true;
        }
        if (view2 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view2;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                if (a(view, viewGroup.getChildAt(i10))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String a(View view) {
        return view.getClass().getName() + '@' + Integer.toHexString(view.hashCode());
    }
}
