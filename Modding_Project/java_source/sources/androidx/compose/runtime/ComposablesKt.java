package androidx.compose.runtime;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.TestOnly;
/* compiled from: Composables.kt */
@Metadata
@SourceDebugExtension({"SMAP\nComposables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,509:1\n1282#2,6:510\n1282#2,6:516\n1282#2,6:522\n1282#2,6:528\n1282#2,6:534\n*S KotlinDebug\n*F\n+ 1 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n25#1:510,6\n36#1:516,6\n50#1:522,6\n68#1:528,6\n88#1:534,6\n*E\n"})
/* loaded from: classes.dex */
public final class ComposablesKt {
    @Composable
    public static final /* synthetic */ <T, E extends Applier<?>> void ComposeNode(Function0<? extends T> function0, Function1<? super Updater<T>, Unit> function1, Composer composer, int i10) {
        Applier<?> applier = composer.getApplier();
        Intrinsics.reifiedOperationMarker(3, ExifInterface.LONGITUDE_EAST);
        if (applier == null) {
            invalidApplier();
        }
        composer.startNode();
        if (composer.getInserting()) {
            composer.createNode(function0);
        } else {
            composer.useNode();
        }
        function1.invoke(Updater.m1375boximpl(Updater.m1376constructorimpl(composer)));
        composer.endNode();
    }

    @Composable
    public static final /* synthetic */ <T, E extends Applier<?>> void ReusableComposeNode(Function0<? extends T> function0, Function1<? super Updater<T>, Unit> function1, Composer composer, int i10) {
        Applier<?> applier = composer.getApplier();
        Intrinsics.reifiedOperationMarker(3, ExifInterface.LONGITUDE_EAST);
        if (applier == null) {
            invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(function0);
        } else {
            composer.useNode();
        }
        function1.invoke(Updater.m1375boximpl(Updater.m1376constructorimpl(composer)));
        composer.endNode();
    }

    @Composable
    public static final void ReusableContent(@Nullable Object obj, @NotNull Function2<? super Composer, ? super Integer, Unit> function2, @Nullable Composer composer, int i10) {
        composer.startReusableGroup(207, obj);
        function2.invoke(composer, Integer.valueOf((i10 >> 3) & 14));
        composer.endReusableGroup();
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final void ReusableContentHost(boolean z10, @NotNull Function2<? super Composer, ? super Integer, Unit> function2, @Nullable Composer composer, int i10) {
        composer.startReusableGroup(207, Boolean.valueOf(z10));
        boolean changed = composer.changed(z10);
        if (z10) {
            function2.invoke(composer, Integer.valueOf((i10 >> 3) & 14));
        } else {
            composer.deactivateToEndGroup(changed);
        }
        composer.endReusableGroup();
    }

    @Composable
    @ReadOnlyComposable
    @NotNull
    public static final Composer getCurrentComposer(@Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-554250212, i10, -1, "androidx.compose.runtime.<get-currentComposer> (Composables.kt:180)");
        }
        throw new NotImplementedError("Implemented as an intrinsic");
    }

    @Composable
    public static final int getCurrentCompositeKeyHash(@Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(524444915, i10, -1, "androidx.compose.runtime.<get-currentCompositeKeyHash> (Composables.kt:241)");
        }
        int compoundKeyHash = composer.getCompoundKeyHash();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return compoundKeyHash;
    }

    @Composable
    public static final long getCurrentCompositeKeyHashCode(@Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-168259424, i10, -1, "androidx.compose.runtime.<get-currentCompositeKeyHashCode> (Composables.kt:257)");
        }
        long compositeKeyHashCode = composer.getCompositeKeyHashCode();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return compositeKeyHashCode;
    }

    @NotNull
    @TestOnly
    @Composable
    @ReadOnlyComposable
    public static final CompositionContext getCurrentCompositionContext(@Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1645225943, i10, -1, "androidx.compose.runtime.<get-currentCompositionContext> (Composables.kt:195)");
        }
        ControlledComposition composition = composer.getComposition();
        Intrinsics.checkNotNull(composition, "null cannot be cast to non-null type androidx.compose.runtime.CompositionImpl");
        CompositionContext parent = ((CompositionImpl) composition).getParent();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return parent;
    }

    @Composable
    @NotNull
    public static final CompositionLocalContext getCurrentCompositionLocalContext(@Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-43352356, i10, -1, "androidx.compose.runtime.<get-currentCompositionLocalContext> (Composables.kt:220)");
        }
        CompositionLocalContext compositionLocalContext = new CompositionLocalContext(composer.buildContext().getCompositionLocalScope$runtime());
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return compositionLocalContext;
    }

    @Composable
    @ReadOnlyComposable
    @NotNull
    public static final RecomposeScope getCurrentRecomposeScope(@Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(394957799, i10, -1, "androidx.compose.runtime.<get-currentRecomposeScope> (Composables.kt:205)");
        }
        RecomposeScope recomposeScope = composer.getRecomposeScope();
        if (recomposeScope != null) {
            composer.recordUsed(recomposeScope);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            return recomposeScope;
        }
        throw new IllegalStateException("no recompose scope found");
    }

    public static final void invalidApplier() {
        throw new IllegalStateException("Invalid applier");
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final <T> T key(@NotNull Object[] objArr, @NotNull Function2<? super Composer, ? super Integer, ? extends T> function2, @Nullable Composer composer, int i10) {
        return function2.invoke(composer, Integer.valueOf((i10 >> 3) & 14));
    }

    @Composable
    public static final <T> T remember(@Nullable Object obj, @NotNull Function0<? extends T> function0, @Nullable Composer composer, int i10) {
        boolean changed = composer.changed(obj);
        T t10 = (T) composer.rememberedValue();
        if (changed || t10 == Composer.Companion.getEmpty()) {
            T invoke = function0.invoke();
            composer.updateRememberedValue(invoke);
            return invoke;
        }
        return t10;
    }

    @Composable
    @NotNull
    public static final CompositionContext rememberCompositionContext(@Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1165786124, i10, -1, "androidx.compose.runtime.rememberCompositionContext (Composables.kt:505)");
        }
        CompositionContext buildContext = composer.buildContext();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return buildContext;
    }

    @Composable
    public static final <T> T remember(@Nullable Object obj, @Nullable Object obj2, @NotNull Function0<? extends T> function0, @Nullable Composer composer, int i10) {
        boolean changed = composer.changed(obj) | composer.changed(obj2);
        T t10 = (T) composer.rememberedValue();
        if (changed || t10 == Composer.Companion.getEmpty()) {
            T invoke = function0.invoke();
            composer.updateRememberedValue(invoke);
            return invoke;
        }
        return t10;
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final /* synthetic */ <T, E extends Applier<?>> void ComposeNode(Function0<? extends T> function0, Function1<? super Updater<T>, Unit> function1, Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, int i10) {
        Applier<?> applier = composer.getApplier();
        Intrinsics.reifiedOperationMarker(3, ExifInterface.LONGITUDE_EAST);
        if (applier == null) {
            invalidApplier();
        }
        composer.startNode();
        if (composer.getInserting()) {
            composer.createNode(function0);
        } else {
            composer.useNode();
        }
        function1.invoke(Updater.m1375boximpl(Updater.m1376constructorimpl(composer)));
        function2.invoke(composer, Integer.valueOf((i10 >> 6) & 14));
        composer.endNode();
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final /* synthetic */ <T, E extends Applier<?>> void ReusableComposeNode(Function0<? extends T> function0, Function1<? super Updater<T>, Unit> function1, Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, int i10) {
        Applier<?> applier = composer.getApplier();
        Intrinsics.reifiedOperationMarker(3, ExifInterface.LONGITUDE_EAST);
        if (applier == null) {
            invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(function0);
        } else {
            composer.useNode();
        }
        function1.invoke(Updater.m1375boximpl(Updater.m1376constructorimpl(composer)));
        function2.invoke(composer, Integer.valueOf((i10 >> 6) & 14));
        composer.endNode();
    }

    @Composable
    public static final <T> T remember(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @NotNull Function0<? extends T> function0, @Nullable Composer composer, int i10) {
        boolean changed = composer.changed(obj) | composer.changed(obj2) | composer.changed(obj3);
        T t10 = (T) composer.rememberedValue();
        if (changed || t10 == Composer.Companion.getEmpty()) {
            T invoke = function0.invoke();
            composer.updateRememberedValue(invoke);
            return invoke;
        }
        return t10;
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0][0]]")
    public static final /* synthetic */ <T, E extends Applier<?>> void ComposeNode(Function0<? extends T> function0, Function1<? super Updater<T>, Unit> function1, at.n<? super SkippableUpdater<T>, ? super Composer, ? super Integer, Unit> nVar, Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, int i10) {
        Applier<?> applier = composer.getApplier();
        Intrinsics.reifiedOperationMarker(3, ExifInterface.LONGITUDE_EAST);
        if (applier == null) {
            invalidApplier();
        }
        composer.startNode();
        if (composer.getInserting()) {
            composer.createNode(function0);
        } else {
            composer.useNode();
        }
        function1.invoke(Updater.m1375boximpl(Updater.m1376constructorimpl(composer)));
        nVar.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(composer)), composer, Integer.valueOf((i10 >> 3) & 112));
        composer.startReplaceableGroup(2058660585);
        function2.invoke(composer, Integer.valueOf((i10 >> 9) & 14));
        composer.endReplaceableGroup();
        composer.endNode();
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0][0]]")
    public static final /* synthetic */ <T, E extends Applier<?>> void ReusableComposeNode(Function0<? extends T> function0, Function1<? super Updater<T>, Unit> function1, at.n<? super SkippableUpdater<T>, ? super Composer, ? super Integer, Unit> nVar, Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, int i10) {
        Applier<?> applier = composer.getApplier();
        Intrinsics.reifiedOperationMarker(3, ExifInterface.LONGITUDE_EAST);
        if (applier == null) {
            invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(function0);
        } else {
            composer.useNode();
        }
        function1.invoke(Updater.m1375boximpl(Updater.m1376constructorimpl(composer)));
        nVar.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(composer)), composer, Integer.valueOf((i10 >> 3) & 112));
        composer.startReplaceableGroup(2058660585);
        function2.invoke(composer, Integer.valueOf((i10 >> 9) & 14));
        composer.endReplaceableGroup();
        composer.endNode();
    }

    @ms.c
    public static /* synthetic */ void getCurrentCompositeKeyHash$annotations() {
    }

    @InternalComposeApi
    public static /* synthetic */ void getCurrentCompositionContext$annotations() {
    }

    public static /* synthetic */ void getCurrentCompositionLocalContext$annotations() {
    }

    @Composable
    public static final <T> T remember(@NotNull Object[] objArr, @NotNull Function0<? extends T> function0, @Nullable Composer composer, int i10) {
        boolean z10 = false;
        for (Object obj : objArr) {
            z10 |= composer.changed(obj);
        }
        T t10 = (T) composer.rememberedValue();
        if (z10 || t10 == Composer.Companion.getEmpty()) {
            T invoke = function0.invoke();
            composer.updateRememberedValue(invoke);
            return invoke;
        }
        return t10;
    }

    @Composable
    public static final <T> T remember(@NotNull Function0<? extends T> function0, @Nullable Composer composer, int i10) {
        T t10 = (T) composer.rememberedValue();
        if (t10 == Composer.Companion.getEmpty()) {
            T invoke = function0.invoke();
            composer.updateRememberedValue(invoke);
            return invoke;
        }
        return t10;
    }
}
