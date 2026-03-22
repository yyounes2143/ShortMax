package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TabRow.kt */
@Metadata
/* loaded from: classes.dex */
public final class ComposableSingletons$TabRowKt {
    @NotNull
    public static final ComposableSingletons$TabRowKt INSTANCE = new ComposableSingletons$TabRowKt();
    @NotNull

    /* renamed from: lambda-1  reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f12lambda1 = ComposableLambdaKt.composableLambdaInstance(182187156, false, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ComposableSingletons$TabRowKt$lambda-1$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.f60915a;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void invoke(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
            } else {
                TabRowDefaults.INSTANCE.m1227Divider9IZ8Weo(null, 0.0f, 0L, composer, 3072, 7);
            }
        }
    });
    @NotNull

    /* renamed from: lambda-2  reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f13lambda2 = ComposableLambdaKt.composableLambdaInstance(-1480449365, false, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ComposableSingletons$TabRowKt$lambda-2$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.f60915a;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void invoke(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
            } else {
                TabRowDefaults.INSTANCE.m1227Divider9IZ8Weo(null, 0.0f, 0L, composer, 3072, 7);
            }
        }
    });

    @NotNull
    /* renamed from: getLambda-1$material_release  reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m1034getLambda1$material_release() {
        return f12lambda1;
    }

    @NotNull
    /* renamed from: getLambda-2$material_release  reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m1035getLambda2$material_release() {
        return f13lambda2;
    }
}
