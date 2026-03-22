package s1;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import androidx.annotation.RestrictTo;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.codeless.internal.EventBinding;
import com.facebook.v;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CodelessLoggingEventListener.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f66192a = new b();

    /* compiled from: CodelessLoggingEventListener.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements View.OnClickListener {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private EventBinding f66193a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<View> f66194b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private WeakReference<View> f66195c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private View.OnClickListener f66196d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f66197e;

        public a(@NotNull EventBinding mapping, @NotNull View rootView, @NotNull View hostView) {
            Intrinsics.checkNotNullParameter(mapping, "mapping");
            Intrinsics.checkNotNullParameter(rootView, "rootView");
            Intrinsics.checkNotNullParameter(hostView, "hostView");
            this.f66193a = mapping;
            this.f66194b = new WeakReference<>(hostView);
            this.f66195c = new WeakReference<>(rootView);
            this.f66196d = t1.d.g(hostView);
            this.f66197e = true;
        }

        public final boolean a() {
            return this.f66197e;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(@NotNull View view) {
            if (o4.a.d(this)) {
                return;
            }
            try {
                Intrinsics.checkNotNullParameter(view, "view");
                View.OnClickListener onClickListener = this.f66196d;
                if (onClickListener != null) {
                    onClickListener.onClick(view);
                }
                View view2 = this.f66195c.get();
                View view3 = this.f66194b.get();
                if (view2 != null && view3 != null) {
                    EventBinding eventBinding = this.f66193a;
                    Intrinsics.checkNotNull(eventBinding, "null cannot be cast to non-null type com.facebook.appevents.codeless.internal.EventBinding");
                    b.d(eventBinding, view2, view3);
                }
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }
    }

    /* compiled from: CodelessLoggingEventListener.kt */
    @Metadata
    /* renamed from: s1.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0919b implements AdapterView.OnItemClickListener {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private EventBinding f66198a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<AdapterView<?>> f66199b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private WeakReference<View> f66200c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private AdapterView.OnItemClickListener f66201d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f66202e;

        public C0919b(@NotNull EventBinding mapping, @NotNull View rootView, @NotNull AdapterView<?> hostView) {
            Intrinsics.checkNotNullParameter(mapping, "mapping");
            Intrinsics.checkNotNullParameter(rootView, "rootView");
            Intrinsics.checkNotNullParameter(hostView, "hostView");
            this.f66198a = mapping;
            this.f66199b = new WeakReference<>(hostView);
            this.f66200c = new WeakReference<>(rootView);
            this.f66201d = hostView.getOnItemClickListener();
            this.f66202e = true;
        }

        public final boolean a() {
            return this.f66202e;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(@Nullable AdapterView<?> adapterView, @NotNull View view, int i10, long j10) {
            Intrinsics.checkNotNullParameter(view, "view");
            AdapterView.OnItemClickListener onItemClickListener = this.f66201d;
            if (onItemClickListener != null) {
                onItemClickListener.onItemClick(adapterView, view, i10, j10);
            }
            View view2 = this.f66200c.get();
            AdapterView<?> adapterView2 = this.f66199b.get();
            if (view2 != null && adapterView2 != null) {
                b.d(this.f66198a, view2, adapterView2);
            }
        }
    }

    private b() {
    }

    @NotNull
    public static final a b(@NotNull EventBinding mapping, @NotNull View rootView, @NotNull View hostView) {
        if (o4.a.d(b.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(mapping, "mapping");
            Intrinsics.checkNotNullParameter(rootView, "rootView");
            Intrinsics.checkNotNullParameter(hostView, "hostView");
            return new a(mapping, rootView, hostView);
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
            return null;
        }
    }

    @NotNull
    public static final C0919b c(@NotNull EventBinding mapping, @NotNull View rootView, @NotNull AdapterView<?> hostView) {
        if (o4.a.d(b.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(mapping, "mapping");
            Intrinsics.checkNotNullParameter(rootView, "rootView");
            Intrinsics.checkNotNullParameter(hostView, "hostView");
            return new C0919b(mapping, rootView, hostView);
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
            return null;
        }
    }

    public static final void d(@NotNull EventBinding mapping, @NotNull View rootView, @NotNull View hostView) {
        if (o4.a.d(b.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(mapping, "mapping");
            Intrinsics.checkNotNullParameter(rootView, "rootView");
            Intrinsics.checkNotNullParameter(hostView, "hostView");
            final String b10 = mapping.b();
            final Bundle b11 = g.f66215f.b(mapping, rootView, hostView);
            f66192a.f(b11);
            v.u().execute(new Runnable() { // from class: s1.a
                @Override // java.lang.Runnable
                public final void run() {
                    b.e(b10, b11);
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(String eventName, Bundle parameters) {
        if (o4.a.d(b.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(eventName, "$eventName");
            Intrinsics.checkNotNullParameter(parameters, "$parameters");
            AppEventsLogger.f14941b.f(v.l()).c(eventName, parameters);
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
        }
    }

    public final void f(@NotNull Bundle parameters) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(parameters, "parameters");
            String string = parameters.getString("_valueToSum");
            if (string != null) {
                parameters.putDouble("_valueToSum", a2.h.f(string));
            }
            parameters.putString("_is_fb_codeless", "1");
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }
}
