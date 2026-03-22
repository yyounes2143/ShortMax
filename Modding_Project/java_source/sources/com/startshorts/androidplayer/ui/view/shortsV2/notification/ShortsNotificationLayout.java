package com.startshorts.androidplayer.ui.view.shortsV2.notification;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import com.startshorts.androidplayer.R$anim;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.view.shortsV2.notification.ShortsNotificationLayout;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsNotificationLayout.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ShortsNotificationLayout extends LinearLayout implements zj.a {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f47900b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Object f47901a;

    /* compiled from: ShortsNotificationLayout.kt */
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
    public ShortsNotificationLayout(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(ShortsNotificationLayout shortsNotificationLayout, View view) {
        shortsNotificationLayout.o(view);
        return Unit.f60915a;
    }

    /* JADX WARN: Type inference failed for: r2v6, types: [T, android.view.View] */
    /* JADX WARN: Type inference failed for: r3v1, types: [T, android.view.View] */
    private final void j() {
        try {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            ?? childAt = getChildAt(0);
            if (childAt == 0) {
                return;
            }
            objectRef.element = childAt;
            if (Intrinsics.areEqual(childAt.getTag(), "removing")) {
                ((View) objectRef.element).clearAnimation();
                o((View) objectRef.element);
                ?? childAt2 = getChildAt(0);
                if (childAt2 == 0) {
                    return;
                }
                objectRef.element = childAt2;
            }
            ((View) objectRef.element).setTag("removing");
            m(this, (View) objectRef.element, true, R$anim.anim_immersion_notification_fade_out, null, new Function0() { // from class: ak.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit k10;
                    k10 = ShortsNotificationLayout.k(ShortsNotificationLayout.this, objectRef);
                    return k10;
                }
            }, 8, null);
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("ShortsNotificationLayout", "removeView failed -> " + e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(ShortsNotificationLayout shortsNotificationLayout, Ref.ObjectRef objectRef) {
        shortsNotificationLayout.o((View) objectRef.element);
        return Unit.f60915a;
    }

    private final void l(View view, boolean z10, int i10, yd.a aVar, Function0<Unit> function0) {
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

    static /* synthetic */ void m(ShortsNotificationLayout shortsNotificationLayout, View view, boolean z10, int i10, yd.a aVar, Function0 function0, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            aVar = null;
        }
        yd.a aVar2 = aVar;
        Function0 function02 = function0;
        if ((i11 & 16) != 0) {
            function02 = new Function0() { // from class: ak.d
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit n10;
                    n10 = ShortsNotificationLayout.n();
                    return n10;
                }
            };
        }
        shortsNotificationLayout.l(view, z10, i10, aVar2, function02);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n() {
        return Unit.f60915a;
    }

    private final void o(View view) {
        if (Intrinsics.areEqual(this, view.getParent())) {
            removeView(view);
        }
    }

    @Override // zj.a
    public void a(int i10) {
        setVisibility(i10);
    }

    @Override // zj.a
    public void e(@NotNull ShortsEpisode episode) {
        Intrinsics.checkNotNullParameter(episode, "episode");
    }

    public final void f(@NotNull ak.a view, @NotNull LinearLayout.LayoutParams layoutParams, @Nullable yd.a aVar) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
        synchronized (this.f47901a) {
            try {
                try {
                    if (view instanceof View) {
                        if (getChildCount() >= 2) {
                            j();
                        }
                        addView((View) view, layoutParams);
                        m(this, (View) view, true, R$anim.anim_immersion_notification_in, aVar, null, 16, null);
                    } else {
                        Logger.f41511a.e("ShortsNotificationLayout", "view is not View");
                    }
                } catch (Exception e10) {
                    Logger logger = Logger.f41511a;
                    logger.e("ShortsNotificationLayout", "addView failed -> " + e10.getMessage());
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    public final View g(@NotNull ShortsNotificationType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if ((childAt instanceof ak.a) && ((ak.a) childAt).getType() == type) {
                return childAt;
            }
        }
        return null;
    }

    public final void h(@NotNull ShortsNotificationType type, boolean z10, @Nullable yd.a aVar) {
        Intrinsics.checkNotNullParameter(type, "type");
        synchronized (this.f47901a) {
            try {
                final View g10 = g(type);
                if (g10 != null) {
                    l(g10, z10, R$anim.anim_immersion_notification_out, aVar, new Function0() { // from class: ak.c
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit i10;
                            i10 = ShortsNotificationLayout.i(ShortsNotificationLayout.this, g10);
                            return i10;
                        }
                    });
                }
            } catch (Exception e10) {
                Logger logger = Logger.f41511a;
                logger.e("ShortsNotificationLayout", "removeView failed -> " + e10.getMessage());
            }
            Unit unit = Unit.f60915a;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortsNotificationLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsNotificationLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47901a = new Object();
    }

    /* compiled from: ShortsNotificationLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f47902a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f47903b;

        b(View view, yd.a aVar, Function0<Unit> function0) {
            this.f47902a = view;
            this.f47903b = function0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(Function0 function0) {
            function0.invoke();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
            View view = this.f47902a;
            final Function0<Unit> function0 = this.f47903b;
            view.post(new Runnable() { // from class: ak.e
                @Override // java.lang.Runnable
                public final void run() {
                    ShortsNotificationLayout.b.b(Function0.this);
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
