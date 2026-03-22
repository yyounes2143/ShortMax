package androidx.compose.material;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AppBar.kt */
@Metadata
/* loaded from: classes.dex */
public final class ComposableSingletons$AppBarKt {
    @NotNull
    public static final ComposableSingletons$AppBarKt INSTANCE = new ComposableSingletons$AppBarKt();
    @NotNull

    /* renamed from: lambda-1  reason: not valid java name */
    public static n<RowScope, Composer, Integer, Unit> f4lambda1 = ComposableLambdaKt.composableLambdaInstance(-771938130, false, new n<RowScope, Composer, Integer, Unit>() { // from class: androidx.compose.material.ComposableSingletons$AppBarKt$lambda-1$1
        @Override // at.n
        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
            invoke(rowScope, composer, num.intValue());
            return Unit.f60915a;
        }

        @Composable
        public final void invoke(@NotNull RowScope rowScope, @Nullable Composer composer, int i10) {
            Intrinsics.checkNotNullParameter(rowScope, "$this$null");
            if ((i10 & 81) == 16 && composer.getSkipping()) {
                composer.skipToGroupEnd();
            }
        }
    });

    @NotNull
    /* renamed from: getLambda-1$material_release  reason: not valid java name */
    public final n<RowScope, Composer, Integer, Unit> m1026getLambda1$material_release() {
        return f4lambda1;
    }
}
