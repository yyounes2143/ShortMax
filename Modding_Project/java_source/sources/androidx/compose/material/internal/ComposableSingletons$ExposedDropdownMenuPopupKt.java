package androidx.compose.material.internal;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ExposedDropdownMenuPopup.kt */
@Metadata
/* loaded from: classes.dex */
public final class ComposableSingletons$ExposedDropdownMenuPopupKt {
    @NotNull
    public static final ComposableSingletons$ExposedDropdownMenuPopupKt INSTANCE = new ComposableSingletons$ExposedDropdownMenuPopupKt();
    @NotNull

    /* renamed from: lambda-1  reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f14lambda1 = ComposableLambdaKt.composableLambdaInstance(-1627646060, false, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.internal.ComposableSingletons$ExposedDropdownMenuPopupKt$lambda-1$1
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
    /* renamed from: getLambda-1$material_release  reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m1273getLambda1$material_release() {
        return f14lambda1;
    }
}
