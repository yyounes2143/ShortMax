package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Recomposer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/RecomposerKt\n+ 2 CompositeKeyHashCode.jvm.kt\nandroidx/compose/runtime/CompositeKeyHashCode_jvmKt\n*L\n1#1,1894:1\n30#2:1895\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/RecomposerKt\n*L\n84#1:1895\n*E\n"})
/* loaded from: classes.dex */
public final class RecomposerKt {
    @NotNull
    private static final Object ProduceAnotherFrame = new Object();
    @NotNull
    private static final Object FramePending = new Object();

    private static final long getRecomposerCompoundHashKey() {
        return 1000;
    }

    @Nullable
    public static final <R> Object withRunningRecomposer(@NotNull at.n<? super gt.g0, ? super Recomposer, ? super rs.c<? super R>, ? extends Object> nVar, @NotNull rs.c<? super R> cVar) {
        return kotlinx.coroutines.i.f(new RecomposerKt$withRunningRecomposer$2(nVar, null), cVar);
    }
}
