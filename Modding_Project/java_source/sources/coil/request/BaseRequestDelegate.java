package coil.request;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
/* compiled from: RequestDelegate.kt */
@Metadata
/* loaded from: classes2.dex */
public final class BaseRequestDelegate extends RequestDelegate {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Lifecycle f4083a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final r f4084b;

    public BaseRequestDelegate(@NotNull Lifecycle lifecycle, @NotNull r rVar) {
        super(null);
        this.f4083a = lifecycle;
        this.f4084b = rVar;
    }

    @Override // coil.request.RequestDelegate
    public void b() {
        this.f4083a.removeObserver(this);
    }

    @Override // coil.request.RequestDelegate
    public void c() {
        this.f4083a.addObserver(this);
    }

    public void d() {
        r.a.b(this.f4084b, null, 1, null);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner lifecycleOwner) {
        d();
    }
}
