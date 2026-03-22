package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
/* compiled from: Composition.kt */
@Metadata
/* loaded from: classes.dex */
public interface ReusableComposition extends Composition {
    void deactivate();

    void setContentWithReuse(@NotNull Function2<? super Composer, ? super Integer, Unit> function2);
}
