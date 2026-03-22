package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
/* compiled from: PausableComposition.kt */
@Metadata
/* loaded from: classes.dex */
public interface PausableComposition extends ReusableComposition {
    @NotNull
    PausedComposition setPausableContent(@NotNull Function2<? super Composer, ? super Integer, Unit> function2);

    @NotNull
    PausedComposition setPausableContentWithReuse(@NotNull Function2<? super Composer, ? super Integer, Unit> function2);
}
