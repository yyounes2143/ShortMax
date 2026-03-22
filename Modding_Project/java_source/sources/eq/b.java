package eq;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.annotation.MainThread;
import io.bidmachine.rendering.model.AnimationEventType;
import io.bidmachine.util.Tag;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tp.s;
@Metadata
/* loaded from: classes8.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Tag f51522a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final j f51523b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final g<?> f51524c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ViewPropertyAnimator f51525d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f51526e;

    public b(@NotNull Tag tag, @NotNull j animatorFactory, @NotNull g<?> valuesCalculator) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(animatorFactory, "animatorFactory");
        Intrinsics.checkNotNullParameter(valuesCalculator, "valuesCalculator");
        this.f51522a = tag;
        this.f51523b = animatorFactory;
        this.f51524c = valuesCalculator;
        this.f51526e = new AtomicBoolean(false);
    }

    @MainThread
    private final void c(View view, f fVar) {
        view.setAlpha(fVar.a());
        view.setTranslationX(fVar.b());
        view.setTranslationY(fVar.c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(b this$0, Runnable runnable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f51526e.set(false);
        if (runnable != null) {
            runnable.run();
        }
    }

    @MainThread
    public final void b() {
        s.g(this.f51522a, "Cancel animation", new Object[0]);
        ViewPropertyAnimator viewPropertyAnimator = this.f51525d;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            viewPropertyAnimator.setListener(null);
            viewPropertyAnimator.setUpdateListener(null);
        }
        this.f51525d = null;
        this.f51526e.set(false);
    }

    @MainThread
    public final void d(@NotNull View view, @NotNull AnimationEventType eventType) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        f a10 = this.f51524c.a(view, eventType);
        c(view, a10);
        Tag tag = this.f51522a;
        s.g(tag, "Prepare animation for event: " + eventType + "; initial values: " + a10, new Object[0]);
    }

    @MainThread
    public final void e(@Nullable View view, @NotNull AnimationEventType eventType, @Nullable Runnable runnable, @Nullable final Runnable runnable2, boolean z10) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        if (runnable != null) {
            runnable.run();
        }
        if (view == null) {
            Tag tag = this.f51522a;
            s.g(tag, "Animation not started for event: " + eventType + "; view is null", new Object[0]);
            if (runnable2 != null) {
                runnable2.run();
            }
        } else if (!g() && !z10) {
            f b10 = this.f51524c.b(view, eventType);
            ViewPropertyAnimator c10 = this.f51523b.c(view, eventType, b10);
            if (c10 == null) {
                c(view, b10);
                Tag tag2 = this.f51522a;
                s.g(tag2, "Apply values without animation for event: " + eventType + "; target values: " + b10, new Object[0]);
                if (runnable2 != null) {
                    runnable2.run();
                    return;
                }
                return;
            }
            Tag tag3 = this.f51522a;
            s.g(tag3, "Start animation for event: " + eventType + "; target values: " + b10, new Object[0]);
            this.f51526e.set(true);
            ViewPropertyAnimator withEndAction = c10.withEndAction(new Runnable() { // from class: eq.a
                @Override // java.lang.Runnable
                public final void run() {
                    b.f(b.this, runnable2);
                }
            });
            withEndAction.start();
            this.f51525d = withEndAction;
        } else {
            Tag tag4 = this.f51522a;
            s.g(tag4, "Animation is already running for event: " + eventType, new Object[0]);
            if (runnable2 != null) {
                runnable2.run();
            }
        }
    }

    public final boolean g() {
        return this.f51526e.get();
    }
}
