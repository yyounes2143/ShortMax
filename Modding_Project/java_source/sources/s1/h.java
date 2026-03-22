package s1;

import android.view.MotionEvent;
import android.view.View;
import com.facebook.appevents.codeless.internal.EventBinding;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RCTCodelessLoggingEventListener.kt */
@Metadata
/* loaded from: classes3.dex */
public final class h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final h f66231a = new h();

    /* compiled from: RCTCodelessLoggingEventListener.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements View.OnTouchListener {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final EventBinding f66232a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference<View> f66233b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final WeakReference<View> f66234c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final View.OnTouchListener f66235d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f66236e;

        public a(@NotNull EventBinding mapping, @NotNull View rootView, @NotNull View hostView) {
            Intrinsics.checkNotNullParameter(mapping, "mapping");
            Intrinsics.checkNotNullParameter(rootView, "rootView");
            Intrinsics.checkNotNullParameter(hostView, "hostView");
            this.f66232a = mapping;
            this.f66233b = new WeakReference<>(hostView);
            this.f66234c = new WeakReference<>(rootView);
            this.f66235d = t1.d.h(hostView);
            this.f66236e = true;
        }

        public final boolean a() {
            return this.f66236e;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(@NotNull View view, @NotNull MotionEvent motionEvent) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
            View view2 = this.f66234c.get();
            View view3 = this.f66233b.get();
            if (view2 != null && view3 != null && motionEvent.getAction() == 1) {
                b.d(this.f66232a, view2, view3);
            }
            View.OnTouchListener onTouchListener = this.f66235d;
            if (onTouchListener != null && onTouchListener.onTouch(view, motionEvent)) {
                return true;
            }
            return false;
        }
    }

    private h() {
    }

    @NotNull
    public static final a a(@NotNull EventBinding mapping, @NotNull View rootView, @NotNull View hostView) {
        if (o4.a.d(h.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(mapping, "mapping");
            Intrinsics.checkNotNullParameter(rootView, "rootView");
            Intrinsics.checkNotNullParameter(hostView, "hostView");
            return new a(mapping, rootView, hostView);
        } catch (Throwable th2) {
            o4.a.b(th2, h.class);
            return null;
        }
    }
}
