package androidx.compose.runtime.internal;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposeCompilerApi;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComposableLambdaN.jvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\nComposableLambdaN.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposableLambdaN.jvm.kt\nandroidx/compose/runtime/internal/ComposableLambdaN_jvmKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,181:1\n1282#2,6:182\n1#3:188\n*S KotlinDebug\n*F\n+ 1 ComposableLambdaN.jvm.kt\nandroidx/compose/runtime/internal/ComposableLambdaN_jvmKt\n*L\n171#1:182,6\n*E\n"})
/* loaded from: classes.dex */
public final class ComposableLambdaN_jvmKt {
    @ComposeCompilerApi
    @NotNull
    public static final ComposableLambdaN composableLambdaN(@NotNull Composer composer, int i10, boolean z10, int i11, @NotNull Object obj) {
        ComposableLambdaNImpl composableLambdaNImpl;
        composer.startReplaceableGroup(i10);
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            composableLambdaNImpl = new ComposableLambdaNImpl(i10, z10, i11);
            composer.updateRememberedValue(composableLambdaNImpl);
        } else {
            Intrinsics.checkNotNull(rememberedValue, "null cannot be cast to non-null type androidx.compose.runtime.internal.ComposableLambdaNImpl");
            composableLambdaNImpl = (ComposableLambdaNImpl) rememberedValue;
        }
        composableLambdaNImpl.update(obj);
        composer.endReplaceableGroup();
        return composableLambdaNImpl;
    }

    @ComposeCompilerApi
    @NotNull
    public static final ComposableLambdaN composableLambdaNInstance(int i10, boolean z10, int i11, @NotNull Object obj) {
        ComposableLambdaNImpl composableLambdaNImpl = new ComposableLambdaNImpl(i10, z10, i11);
        composableLambdaNImpl.update(obj);
        return composableLambdaNImpl;
    }

    @Composable
    @ComposeCompilerApi
    @NotNull
    public static final ComposableLambdaN rememberComposableLambdaN(int i10, boolean z10, int i11, @NotNull Object obj, @Nullable Composer composer, int i12) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-293456346, i12, -1, "androidx.compose.runtime.internal.rememberComposableLambdaN (ComposableLambdaN.jvm.kt:170)");
        }
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new ComposableLambdaNImpl(i10, z10, i11);
            composer.updateRememberedValue(rememberedValue);
        }
        ComposableLambdaNImpl composableLambdaNImpl = (ComposableLambdaNImpl) rememberedValue;
        composableLambdaNImpl.update(obj);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return composableLambdaNImpl;
    }
}
