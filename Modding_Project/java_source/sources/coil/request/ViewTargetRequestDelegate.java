package coil.request;

import androidx.annotation.MainThread;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import coil.ImageLoader;
import coil.util.Lifecycles;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.r;
import m0.f;
import o0.b;
import org.jetbrains.annotations.NotNull;
import r0.i;
/* compiled from: RequestDelegate.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ViewTargetRequestDelegate extends RequestDelegate {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ImageLoader f4087a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final f f4088b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final b<?> f4089c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Lifecycle f4090d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final r f4091e;

    public ViewTargetRequestDelegate(@NotNull ImageLoader imageLoader, @NotNull f fVar, @NotNull b<?> bVar, @NotNull Lifecycle lifecycle, @NotNull r rVar) {
        super(null);
        this.f4087a = imageLoader;
        this.f4088b = fVar;
        this.f4089c = bVar;
        this.f4090d = lifecycle;
        this.f4091e = rVar;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.view.View] */
    @Override // coil.request.RequestDelegate
    public void a() {
        if (this.f4089c.getView().isAttachedToWindow()) {
            return;
        }
        i.l(this.f4089c.getView()).c(this);
        throw new CancellationException("'ViewTarget.view' must be attached to a window.");
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [android.view.View] */
    @Override // coil.request.RequestDelegate
    public void c() {
        this.f4090d.addObserver(this);
        b<?> bVar = this.f4089c;
        if (bVar instanceof LifecycleObserver) {
            Lifecycles.b(this.f4090d, (LifecycleObserver) bVar);
        }
        i.l(this.f4089c.getView()).c(this);
    }

    public void d() {
        r.a.b(this.f4091e, null, 1, null);
        b<?> bVar = this.f4089c;
        if (bVar instanceof LifecycleObserver) {
            this.f4090d.removeObserver((LifecycleObserver) bVar);
        }
        this.f4090d.removeObserver(this);
    }

    @MainThread
    public final void e() {
        this.f4087a.b(this.f4088b);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [android.view.View] */
    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner lifecycleOwner) {
        i.l(this.f4089c.getView()).a();
    }
}
