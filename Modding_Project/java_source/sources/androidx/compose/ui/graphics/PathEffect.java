package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PathEffect.kt */
@Metadata
/* loaded from: classes.dex */
public interface PathEffect {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: PathEffect.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public static /* synthetic */ PathEffect dashPathEffect$default(Companion companion, float[] fArr, float f10, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                f10 = 0.0f;
            }
            return companion.dashPathEffect(fArr, f10);
        }

        @NotNull
        public final PathEffect chainPathEffect(@NotNull PathEffect outer, @NotNull PathEffect inner) {
            Intrinsics.checkNotNullParameter(outer, "outer");
            Intrinsics.checkNotNullParameter(inner, "inner");
            return AndroidPathEffect_androidKt.actualChainPathEffect(outer, inner);
        }

        @NotNull
        public final PathEffect cornerPathEffect(float f10) {
            return AndroidPathEffect_androidKt.actualCornerPathEffect(f10);
        }

        @NotNull
        public final PathEffect dashPathEffect(@NotNull float[] intervals, float f10) {
            Intrinsics.checkNotNullParameter(intervals, "intervals");
            return AndroidPathEffect_androidKt.actualDashPathEffect(intervals, f10);
        }

        @NotNull
        /* renamed from: stampedPathEffect-7aD1DOk  reason: not valid java name */
        public final PathEffect m2077stampedPathEffect7aD1DOk(@NotNull Path shape, float f10, float f11, int i10) {
            Intrinsics.checkNotNullParameter(shape, "shape");
            return AndroidPathEffect_androidKt.m1742actualStampedPathEffect7aD1DOk(shape, f10, f11, i10);
        }
    }
}
