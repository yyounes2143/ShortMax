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
/* compiled from: SnackbarHost.kt */
@Metadata
/* loaded from: classes.dex */
public final class ComposableSingletons$SnackbarHostKt {
    @NotNull
    public static final ComposableSingletons$SnackbarHostKt INSTANCE = new ComposableSingletons$SnackbarHostKt();
    @NotNull

    /* renamed from: lambda-1  reason: not valid java name */
    public static n<SnackbarData, Composer, Integer, Unit> f11lambda1 = ComposableLambdaKt.composableLambdaInstance(996639038, false, new n<SnackbarData, Composer, Integer, Unit>() { // from class: androidx.compose.material.ComposableSingletons$SnackbarHostKt$lambda-1$1
        @Override // at.n
        public /* bridge */ /* synthetic */ Unit invoke(SnackbarData snackbarData, Composer composer, Integer num) {
            invoke(snackbarData, composer, num.intValue());
            return Unit.f60915a;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void invoke(@NotNull SnackbarData it, @Nullable Composer composer, int i10) {
            int i11;
            Intrinsics.checkNotNullParameter(it, "it");
            if ((i10 & 14) == 0) {
                i11 = i10 | (composer.changed(it) ? 4 : 2);
            } else {
                i11 = i10;
            }
            if ((i11 & 91) == 18 && composer.getSkipping()) {
                composer.skipToGroupEnd();
            } else {
                SnackbarKt.m1182SnackbarsPrSdHI(it, null, false, null, 0L, 0L, 0L, 0.0f, composer, i11 & 14, 254);
            }
        }
    });

    @NotNull
    /* renamed from: getLambda-1$material_release  reason: not valid java name */
    public final n<SnackbarData, Composer, Integer, Unit> m1033getLambda1$material_release() {
        return f11lambda1;
    }
}
