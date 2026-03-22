package coil.request;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import coil.request.GlobalLifecycle;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: GlobalLifecycle.kt */
@Metadata
/* loaded from: classes2.dex */
public final class GlobalLifecycle extends Lifecycle {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final GlobalLifecycle f4085a = new GlobalLifecycle();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final LifecycleOwner f4086b = new LifecycleOwner() { // from class: m0.e
        @Override // androidx.lifecycle.LifecycleOwner
        public final Lifecycle getLifecycle() {
            Lifecycle c10;
            c10 = GlobalLifecycle.c();
            return c10;
        }
    };

    private GlobalLifecycle() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Lifecycle c() {
        return f4085a;
    }

    @Override // androidx.lifecycle.Lifecycle
    public void addObserver(@NotNull LifecycleObserver lifecycleObserver) {
        if (lifecycleObserver instanceof DefaultLifecycleObserver) {
            DefaultLifecycleObserver defaultLifecycleObserver = (DefaultLifecycleObserver) lifecycleObserver;
            LifecycleOwner lifecycleOwner = f4086b;
            defaultLifecycleObserver.onCreate(lifecycleOwner);
            defaultLifecycleObserver.onStart(lifecycleOwner);
            defaultLifecycleObserver.onResume(lifecycleOwner);
            return;
        }
        throw new IllegalArgumentException((lifecycleObserver + " must implement androidx.lifecycle.DefaultLifecycleObserver.").toString());
    }

    @Override // androidx.lifecycle.Lifecycle
    @NotNull
    public Lifecycle.State getCurrentState() {
        return Lifecycle.State.RESUMED;
    }

    @NotNull
    public String toString() {
        return "coil.request.GlobalLifecycle";
    }

    @Override // androidx.lifecycle.Lifecycle
    public void removeObserver(@NotNull LifecycleObserver lifecycleObserver) {
    }
}
