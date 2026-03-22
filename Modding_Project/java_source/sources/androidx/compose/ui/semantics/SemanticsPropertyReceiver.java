package androidx.compose.ui.semantics;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SemanticsProperties.kt */
@Metadata
/* loaded from: classes.dex */
public interface SemanticsPropertyReceiver {
    <T> void set(@NotNull SemanticsPropertyKey<T> semanticsPropertyKey, T t10);
}
