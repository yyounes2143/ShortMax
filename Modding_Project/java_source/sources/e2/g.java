package e2;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import e2.j;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ViewObserver.kt */
@Metadata
/* loaded from: classes3.dex */
public final class g implements ViewTreeObserver.OnGlobalLayoutListener {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f50768d = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final Map<Integer, g> f50769e = new HashMap();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Activity> f50770a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Handler f50771b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f50772c;

    /* compiled from: ViewObserver.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nViewObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewObserver.kt\ncom/facebook/appevents/suggestedevents/ViewObserver$Companion\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,103:1\n361#2,7:104\n*S KotlinDebug\n*F\n+ 1 ViewObserver.kt\ncom/facebook/appevents/suggestedevents/ViewObserver$Companion\n*L\n92#1:104,7\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            int hashCode = activity.hashCode();
            Map b10 = g.b();
            Integer valueOf = Integer.valueOf(hashCode);
            Object obj = b10.get(valueOf);
            if (obj == null) {
                obj = new g(activity, null);
                b10.put(valueOf, obj);
            }
            g.c((g) obj);
        }

        public final void b(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            g gVar = (g) g.b().remove(Integer.valueOf(activity.hashCode()));
            if (gVar != null) {
                g.d(gVar);
            }
        }

        private a() {
        }
    }

    public /* synthetic */ g(Activity activity, DefaultConstructorMarker defaultConstructorMarker) {
        this(activity);
    }

    public static final /* synthetic */ Map b() {
        if (o4.a.d(g.class)) {
            return null;
        }
        try {
            return f50769e;
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
            return null;
        }
    }

    public static final /* synthetic */ void c(g gVar) {
        if (o4.a.d(g.class)) {
            return;
        }
        try {
            gVar.g();
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
        }
    }

    public static final /* synthetic */ void d(g gVar) {
        if (o4.a.d(g.class)) {
            return;
        }
        try {
            gVar.h();
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
        }
    }

    private final void e() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Runnable runnable = new Runnable() { // from class: e2.f
                @Override // java.lang.Runnable
                public final void run() {
                    g.f(g.this);
                }
            };
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                runnable.run();
            } else {
                this.f50771b.post(runnable);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(g this$0) {
        if (o4.a.d(g.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            try {
                View d10 = a2.h.d(this$0.f50770a.get());
                Activity activity = this$0.f50770a.get();
                if (d10 != null && activity != null) {
                    for (View view : c.a(d10)) {
                        if (!t1.b.g(view)) {
                            String d11 = c.d(view);
                            if (d11.length() > 0 && d11.length() <= 300) {
                                j.a aVar = j.f50779e;
                                String localClassName = activity.getLocalClassName();
                                Intrinsics.checkNotNullExpressionValue(localClassName, "activity.localClassName");
                                aVar.d(view, d10, localClassName);
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
        }
    }

    private final void g() {
        View d10;
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (this.f50772c.getAndSet(true) || (d10 = a2.h.d(this.f50770a.get())) == null) {
                return;
            }
            ViewTreeObserver viewTreeObserver = d10.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnGlobalLayoutListener(this);
                e();
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final void h() {
        View d10;
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (!this.f50772c.getAndSet(false) || (d10 = a2.h.d(this.f50770a.get())) == null) {
                return;
            }
            ViewTreeObserver viewTreeObserver = d10.getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return;
            }
            viewTreeObserver.removeOnGlobalLayoutListener(this);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            e();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private g(Activity activity) {
        this.f50770a = new WeakReference<>(activity);
        this.f50771b = new Handler(Looper.getMainLooper());
        this.f50772c = new AtomicBoolean(false);
    }
}
