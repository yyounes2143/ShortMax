package androidx.compose.foundation.text;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoreTextField.kt */
@Metadata
/* loaded from: classes.dex */
public final class ComposableSingletons$CoreTextFieldKt {
    @NotNull
    public static final ComposableSingletons$CoreTextFieldKt INSTANCE = new ComposableSingletons$CoreTextFieldKt();
    @NotNull

    /* renamed from: lambda-1  reason: not valid java name */
    public static n<Function2<? super Composer, ? super Integer, Unit>, Composer, Integer, Unit> f3lambda1 = ComposableLambdaKt.composableLambdaInstance(1894572096, false, new n<Function2<? super Composer, ? super Integer, ? extends Unit>, Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.ComposableSingletons$CoreTextFieldKt$lambda-1$1
        @Override // at.n
        public /* bridge */ /* synthetic */ Unit invoke(Function2<? super Composer, ? super Integer, ? extends Unit> function2, Composer composer, Integer num) {
            invoke((Function2<? super Composer, ? super Integer, Unit>) function2, composer, num.intValue());
            return Unit.f60915a;
        }

        @Composable
        @ComposableInferredTarget(scheme = "[0[0]]")
        public final void invoke(@NotNull Function2<? super Composer, ? super Integer, Unit> innerTextField, @Nullable Composer composer, int i10) {
            Intrinsics.checkNotNullParameter(innerTextField, "innerTextField");
            if ((i10 & 14) == 0) {
                i10 |= composer.changed(innerTextField) ? 4 : 2;
            }
            if ((i10 & 91) == 18 && composer.getSkipping()) {
                composer.skipToGroupEnd();
            } else {
                innerTextField.invoke(composer, Integer.valueOf(i10 & 14));
            }
        }
    });

    @NotNull
    /* renamed from: getLambda-1$foundation_release  reason: not valid java name */
    public final n<Function2<? super Composer, ? super Integer, Unit>, Composer, Integer, Unit> m715getLambda1$foundation_release() {
        return f3lambda1;
    }
}
