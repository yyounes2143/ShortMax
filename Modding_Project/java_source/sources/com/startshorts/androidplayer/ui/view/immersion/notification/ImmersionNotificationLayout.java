package com.startshorts.androidplayer.ui.view.immersion.notification;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import com.startshorts.androidplayer.R$anim;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.view.immersion.notification.ImmersionNotificationLayout;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionNotificationLayout.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImmersionNotificationLayout extends LinearLayout {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f47382b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Object f47383a;

    /* compiled from: ImmersionNotificationLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionNotificationLayout(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(ImmersionNotificationLayout immersionNotificationLayout, View view) {
        immersionNotificationLayout.m(view);
        return Unit.f60915a;
    }

    /* JADX WARN: Type inference failed for: r2v6, types: [T, android.view.View] */
    /* JADX WARN: Type inference failed for: r3v1, types: [T, android.view.View] */
    private final void h() {
        try {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            ?? childAt = getChildAt(0);
            if (childAt == 0) {
                return;
            }
            objectRef.element = childAt;
            if (Intrinsics.areEqual(childAt.getTag(), "removing")) {
                ((View) objectRef.element).clearAnimation();
                m((View) objectRef.element);
                ?? childAt2 = getChildAt(0);
                if (childAt2 == 0) {
                    return;
                }
                objectRef.element = childAt2;
            }
            ((View) objectRef.element).setTag("removing");
            k(this, (View) objectRef.element, true, R$anim.anim_immersion_notification_fade_out, null, new Function0() { // from class: oj.c
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit i10;
                    i10 = ImmersionNotificationLayout.i(ImmersionNotificationLayout.this, objectRef);
                    return i10;
                }
            }, 8, null);
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("ImmersionNotificationLayout", "removeView failed -> " + e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(ImmersionNotificationLayout immersionNotificationLayout, Ref.ObjectRef objectRef) {
        immersionNotificationLayout.m((View) objectRef.element);
        return Unit.f60915a;
    }

    private final void j(View view, boolean z10, int i10, yd.a aVar, Function0<Unit> function0) {
        if (!z10) {
            function0.invoke();
            return;
        }
        Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), i10);
        loadAnimation.setFillBefore(true);
        loadAnimation.setFillAfter(true);
        loadAnimation.setAnimationListener(new b(view, aVar, function0));
        view.startAnimation(loadAnimation);
    }

    static /* synthetic */ void k(ImmersionNotificationLayout immersionNotificationLayout, View view, boolean z10, int i10, yd.a aVar, Function0 function0, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            aVar = null;
        }
        yd.a aVar2 = aVar;
        Function0 function02 = function0;
        if ((i11 & 16) != 0) {
            function02 = new Function0() { // from class: oj.d
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit l10;
                    l10 = ImmersionNotificationLayout.l();
                    return l10;
                }
            };
        }
        immersionNotificationLayout.j(view, z10, i10, aVar2, function02);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l() {
        return Unit.f60915a;
    }

    private final void m(View view) {
        if (Intrinsics.areEqual(this, view.getParent())) {
            removeView(view);
        }
    }

    public final void d(@NotNull oj.a view, @NotNull LinearLayout.LayoutParams layoutParams, @Nullable yd.a aVar) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
        synchronized (this.f47383a) {
            try {
                try {
                    if (view instanceof View) {
                        if (getChildCount() >= 2) {
                            h();
                        }
                        addView((View) view, layoutParams);
                        k(this, (View) view, true, R$anim.anim_immersion_notification_in, aVar, null, 16, null);
                    } else {
                        Logger.f41511a.e("ImmersionNotificationLayout", "view is not View");
                    }
                } catch (Exception e10) {
                    Logger logger = Logger.f41511a;
                    logger.e("ImmersionNotificationLayout", "addView failed -> " + e10.getMessage());
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    public final View e(@NotNull ImmersionNotificationType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if ((childAt instanceof oj.a) && ((oj.a) childAt).getType() == type) {
                return childAt;
            }
        }
        return null;
    }

    public final void f(@NotNull ImmersionNotificationType type, boolean z10, @Nullable yd.a aVar) {
        Intrinsics.checkNotNullParameter(type, "type");
        synchronized (this.f47383a) {
            try {
                final View e10 = e(type);
                if (e10 != null) {
                    j(e10, z10, R$anim.anim_immersion_notification_out, aVar, new Function0() { // from class: oj.b
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit g10;
                            g10 = ImmersionNotificationLayout.g(ImmersionNotificationLayout.this, e10);
                            return g10;
                        }
                    });
                }
            } catch (Exception e11) {
                Logger logger = Logger.f41511a;
                logger.e("ImmersionNotificationLayout", "removeView failed -> " + e11.getMessage());
            }
            Unit unit = Unit.f60915a;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionNotificationLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionNotificationLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47383a = new Object();
    }

    /* compiled from: ImmersionNotificationLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f47384a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f47385b;

        b(View view, yd.a aVar, Function0<Unit> function0) {
            this.f47384a = view;
            this.f47385b = function0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(Function0 function0) {
            function0.invoke();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
            View view = this.f47384a;
            final Function0<Unit> function0 = this.f47385b;
            view.post(new Runnable() { // from class: oj.e
                @Override // java.lang.Runnable
                public final void run() {
                    ImmersionNotificationLayout.b.b(Function0.this);
                }
            });
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }
}
