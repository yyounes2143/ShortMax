package tp;

import android.view.View;
import android.view.ViewGroup;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public interface f {
    void a();

    void c();

    default void c(@NotNull ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(viewGroup, "viewGroup");
    }

    @NotNull
    rq.a h();

    boolean i();

    @Nullable
    View j();

    void m();

    default void d() {
    }

    default void f() {
    }
}
