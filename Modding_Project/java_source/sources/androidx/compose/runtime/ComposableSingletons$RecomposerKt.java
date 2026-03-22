package androidx.compose.runtime;

import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
/* compiled from: Recomposer.kt */
@Metadata
/* loaded from: classes.dex */
public final class ComposableSingletons$RecomposerKt {
    @NotNull
    public static final ComposableSingletons$RecomposerKt INSTANCE = new ComposableSingletons$RecomposerKt();
    @NotNull

    /* renamed from: lambda$-1091980426  reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f15lambda$1091980426 = ComposableLambdaKt.composableLambdaInstance(-1091980426, false, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.runtime.ComposableSingletons$RecomposerKt$lambda$-1091980426$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.f60915a;
        }

        @Composable
        public final void invoke(Composer composer, int i10) {
            if (!composer.shouldExecute((i10 & 3) != 2, i10 & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1091980426, i10, -1, "androidx.compose.runtime.ComposableSingletons$RecomposerKt.lambda$-1091980426.<anonymous> (Recomposer.kt:423)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    @NotNull
    /* renamed from: getLambda$-1091980426$runtime  reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m1314getLambda$1091980426$runtime() {
        return f15lambda$1091980426;
    }
}
