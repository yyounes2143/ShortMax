package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BackdropScaffold.kt */
@Metadata
/* loaded from: classes.dex */
public final class ComposableSingletons$BackdropScaffoldKt {
    @NotNull
    public static final ComposableSingletons$BackdropScaffoldKt INSTANCE = new ComposableSingletons$BackdropScaffoldKt();
    @NotNull

    /* renamed from: lambda-1  reason: not valid java name */
    public static n<SnackbarHostState, Composer, Integer, Unit> f5lambda1 = ComposableLambdaKt.composableLambdaInstance(229445492, false, new n<SnackbarHostState, Composer, Integer, Unit>() { // from class: androidx.compose.material.ComposableSingletons$BackdropScaffoldKt$lambda-1$1
        @Override // at.n
        public /* bridge */ /* synthetic */ Unit invoke(SnackbarHostState snackbarHostState, Composer composer, Integer num) {
            invoke(snackbarHostState, composer, num.intValue());
            return Unit.f60915a;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void invoke(@NotNull SnackbarHostState it, @Nullable Composer composer, int i10) {
            Intrinsics.checkNotNullParameter(it, "it");
            if ((i10 & 14) == 0) {
                i10 |= composer.changed(it) ? 4 : 2;
            }
            if ((i10 & 91) == 18 && composer.getSkipping()) {
                composer.skipToGroupEnd();
            } else {
                SnackbarHostKt.SnackbarHost(it, null, null, composer, i10 & 14, 6);
            }
        }
    });

    @NotNull
    /* renamed from: getLambda-1$material_release  reason: not valid java name */
    public final n<SnackbarHostState, Composer, Integer, Unit> m1027getLambda1$material_release() {
        return f5lambda1;
    }
}
