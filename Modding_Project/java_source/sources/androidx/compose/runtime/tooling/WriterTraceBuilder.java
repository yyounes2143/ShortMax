package androidx.compose.runtime.tooling;

import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.GroupSourceInformation;
import androidx.compose.runtime.SlotWriter;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComposeStackTraceBuilder.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class WriterTraceBuilder extends ComposeStackTraceBuilder {
    public static final int $stable = 8;
    @NotNull
    private final SlotWriter writer;

    public WriterTraceBuilder(@NotNull SlotWriter slotWriter) {
        this.writer = slotWriter;
    }

    @Override // androidx.compose.runtime.tooling.ComposeStackTraceBuilder
    public int groupKeyOf(@NotNull Anchor anchor) {
        SlotWriter slotWriter = this.writer;
        return slotWriter.groupKey(slotWriter.anchorIndex(anchor));
    }

    @Override // androidx.compose.runtime.tooling.ComposeStackTraceBuilder
    @Nullable
    public GroupSourceInformation sourceInformationOf(@NotNull Anchor anchor) {
        SlotWriter slotWriter = this.writer;
        return slotWriter.sourceInformationOf$runtime(slotWriter.anchorIndex(anchor));
    }
}
