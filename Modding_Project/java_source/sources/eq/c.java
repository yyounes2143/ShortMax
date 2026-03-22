package eq;

import io.bidmachine.rendering.model.AnimationEventType;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public interface c {
    static /* synthetic */ void b(c cVar, tp.f fVar, AnimationEventType animationEventType, boolean z10, Runnable runnable, Runnable runnable2, int i10, Object obj) {
        Runnable runnable3;
        Runnable runnable4;
        if (obj == null) {
            if ((i10 & 4) != 0) {
                z10 = false;
            }
            boolean z11 = z10;
            if ((i10 & 8) != 0) {
                runnable3 = null;
            } else {
                runnable3 = runnable;
            }
            if ((i10 & 16) != 0) {
                runnable4 = null;
            } else {
                runnable4 = runnable2;
            }
            cVar.f(fVar, animationEventType, z11, runnable3, runnable4);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: prepareAndAnimate");
    }

    void a();

    void a(@NotNull tp.f fVar);

    boolean a(int i10);

    void c(@NotNull tp.g gVar);

    void d(@NotNull tp.g gVar, @NotNull AnimationEventType animationEventType, boolean z10, @Nullable Runnable runnable, @Nullable Runnable runnable2);

    void e(@NotNull tp.f fVar, @NotNull AnimationEventType animationEventType, boolean z10, @Nullable Runnable runnable, @Nullable Runnable runnable2);

    void f(@NotNull tp.f fVar, @NotNull AnimationEventType animationEventType, boolean z10, @Nullable Runnable runnable, @Nullable Runnable runnable2);

    void g(@NotNull tp.g gVar, @NotNull AnimationEventType animationEventType);

    void h(@NotNull tp.f fVar, boolean z10, @NotNull AnimationEventType animationEventType);
}
