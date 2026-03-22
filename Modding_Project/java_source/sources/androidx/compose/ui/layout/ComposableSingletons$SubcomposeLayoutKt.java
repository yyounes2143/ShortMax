package androidx.compose.ui.layout;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubcomposeLayout.kt */
@Metadata
/* loaded from: classes.dex */
public final class ComposableSingletons$SubcomposeLayoutKt {
    @NotNull
    public static final ComposableSingletons$SubcomposeLayoutKt INSTANCE = new ComposableSingletons$SubcomposeLayoutKt();
    @NotNull

    /* renamed from: lambda-1  reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f16lambda1 = ComposableLambdaKt.composableLambdaInstance(-1741544742, false, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.layout.ComposableSingletons$SubcomposeLayoutKt$lambda-1$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.f60915a;
        }

        @Composable
        public final void invoke(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
            }
        }
    });

    @NotNull
    /* renamed from: getLambda-1$ui_release  reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m3325getLambda1$ui_release() {
        return f16lambda1;
    }
}
