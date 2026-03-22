package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: CompositionLocal.kt */
@Metadata
/* loaded from: classes.dex */
public interface CompositionLocalAccessorScope {
    <T> T getCurrentValue(@NotNull CompositionLocal<T> compositionLocal);
}
