package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Scaffold.kt */
@Metadata
/* loaded from: classes.dex */
public final class ComposableSingletons$ScaffoldKt {
    @NotNull
    public static final ComposableSingletons$ScaffoldKt INSTANCE = new ComposableSingletons$ScaffoldKt();
    @NotNull

    /* renamed from: lambda-1  reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f7lambda1 = ComposableLambdaKt.composableLambdaInstance(2069405901, false, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ComposableSingletons$ScaffoldKt$lambda-1$1
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

    /* renamed from: lambda-2  reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f8lambda2 = ComposableLambdaKt.composableLambdaInstance(-231850563, false, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ComposableSingletons$ScaffoldKt$lambda-2$1
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

    /* renamed from: lambda-3  reason: not valid java name */
    public static n<SnackbarHostState, Composer, Integer, Unit> f9lambda3 = ComposableLambdaKt.composableLambdaInstance(-147687984, false, new n<SnackbarHostState, Composer, Integer, Unit>() { // from class: androidx.compose.material.ComposableSingletons$ScaffoldKt$lambda-3$1
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

    /* renamed from: lambda-4  reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f10lambda4 = ComposableLambdaKt.composableLambdaInstance(-900670499, false, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ComposableSingletons$ScaffoldKt$lambda-4$1
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
    public final Function2<Composer, Integer, Unit> m1029getLambda1$material_release() {
        return f7lambda1;
    }

    @NotNull
    /* renamed from: getLambda-2$material_release  reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m1030getLambda2$material_release() {
        return f8lambda2;
    }

    @NotNull
    /* renamed from: getLambda-3$material_release  reason: not valid java name */
    public final n<SnackbarHostState, Composer, Integer, Unit> m1031getLambda3$material_release() {
        return f9lambda3;
    }

    @NotNull
    /* renamed from: getLambda-4$material_release  reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m1032getLambda4$material_release() {
        return f10lambda4;
    }
}
