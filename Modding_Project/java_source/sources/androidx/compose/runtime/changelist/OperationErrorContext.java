package androidx.compose.runtime.changelist;

import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OperationArgContainer.kt */
@Metadata
/* loaded from: classes.dex */
public interface OperationErrorContext {
    @NotNull
    List<ComposeStackTraceFrame> buildStackTrace(@Nullable Integer num);
}
