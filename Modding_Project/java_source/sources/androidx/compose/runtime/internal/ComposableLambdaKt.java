package androidx.compose.runtime.internal;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposeCompilerApi;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.RecomposeScopeImpl;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComposableLambda.kt */
@Metadata
@SourceDebugExtension({"SMAP\nComposableLambda.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposableLambda.kt\nandroidx/compose/runtime/internal/ComposableLambdaKt\n+ 2 BitwiseOperators.kt\nandroidx/compose/runtime/BitwiseOperatorsKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1373:1\n31#2:1374\n1282#3,6:1375\n1#4:1381\n*S KotlinDebug\n*F\n+ 1 ComposableLambda.kt\nandroidx/compose/runtime/internal/ComposableLambdaKt\n*L\n1345#1:1374\n1372#1:1375,6\n*E\n"})
/* loaded from: classes.dex */
public final class ComposableLambdaKt {
    private static final int BITS_PER_SLOT = 3;
    public static final int SLOTS_PER_INT = 10;
    @NotNull
    private static final Object lambdaKey = new Object();

    public static final int bitsForSlot(int i10, int i11) {
        return i10 << (((i11 % 10) * 3) + 1);
    }

    @ComposeCompilerApi
    @NotNull
    public static final ComposableLambda composableLambda(@NotNull Composer composer, int i10, boolean z10, @NotNull Object obj) {
        ComposableLambdaImpl composableLambdaImpl;
        composer.startMovableGroup(Integer.rotateLeft(i10, 1), lambdaKey);
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            composableLambdaImpl = new ComposableLambdaImpl(i10, z10, obj);
            composer.updateRememberedValue(composableLambdaImpl);
        } else {
            Intrinsics.checkNotNull(rememberedValue, "null cannot be cast to non-null type androidx.compose.runtime.internal.ComposableLambdaImpl");
            composableLambdaImpl = (ComposableLambdaImpl) rememberedValue;
            composableLambdaImpl.update(obj);
        }
        composer.endMovableGroup();
        return composableLambdaImpl;
    }

    @ComposeCompilerApi
    @NotNull
    public static final ComposableLambda composableLambdaInstance(int i10, boolean z10, @NotNull Object obj) {
        return new ComposableLambdaImpl(i10, z10, obj);
    }

    public static final int differentBits(int i10) {
        return bitsForSlot(2, i10);
    }

    @Composable
    @ComposeCompilerApi
    @NotNull
    public static final ComposableLambda rememberComposableLambda(int i10, boolean z10, @NotNull Object obj, @Nullable Composer composer, int i11) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1573003438, i11, -1, "androidx.compose.runtime.internal.rememberComposableLambda (ComposableLambda.kt:1371)");
        }
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new ComposableLambdaImpl(i10, z10, obj);
            composer.updateRememberedValue(rememberedValue);
        }
        ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) rememberedValue;
        composableLambdaImpl.update(obj);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return composableLambdaImpl;
    }

    public static final boolean replacableWith(@Nullable RecomposeScope recomposeScope, @NotNull RecomposeScope recomposeScope2) {
        if (recomposeScope != null) {
            if ((recomposeScope instanceof RecomposeScopeImpl) && (recomposeScope2 instanceof RecomposeScopeImpl)) {
                RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) recomposeScope;
                if (!recomposeScopeImpl.getValid() || Intrinsics.areEqual(recomposeScope, recomposeScope2) || Intrinsics.areEqual(recomposeScopeImpl.getAnchor(), ((RecomposeScopeImpl) recomposeScope2).getAnchor())) {
                }
            }
            return false;
        }
        return true;
    }

    public static final int sameBits(int i10) {
        return bitsForSlot(1, i10);
    }
}
