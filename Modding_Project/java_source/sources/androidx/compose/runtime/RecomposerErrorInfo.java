package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Recomposer.kt */
@InternalComposeApi
@Metadata
/* loaded from: classes.dex */
public interface RecomposerErrorInfo {
    @NotNull
    Throwable getCause();

    boolean getRecoverable();
}
