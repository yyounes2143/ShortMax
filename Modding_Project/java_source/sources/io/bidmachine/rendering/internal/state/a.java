package io.bidmachine.rendering.internal.state;

import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public interface a {

    @Metadata
    /* renamed from: io.bidmachine.rendering.internal.state.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public enum EnumC0820a {
        LoadingStarted,
        Loaded,
        FailedToLoad,
        ShowInitiated,
        Shown,
        FailedToShow,
        Clicked,
        Appeared,
        Disappeared,
        Finished,
        Expired,
        Destroyed
    }

    @Metadata
    /* loaded from: classes8.dex */
    public interface b {
        void a(@NotNull a aVar, @NotNull EnumC0820a enumC0820a);
    }

    @CallSuper
    void a();

    @CallSuper
    @MainThread
    void a(@NotNull b bVar);

    @CallSuper
    boolean a(boolean z10);

    @CallSuper
    @MainThread
    void b(@NotNull b bVar);

    boolean b();

    @CallSuper
    boolean b(boolean z10);

    @CallSuper
    boolean c();

    boolean d();

    @CallSuper
    boolean e();

    @CallSuper
    boolean f();

    boolean g();

    boolean h();

    @CallSuper
    boolean i();

    @CallSuper
    boolean j();

    @CallSuper
    boolean k();

    @CallSuper
    void l();

    boolean m();
}
