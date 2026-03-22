package androidx.compose.runtime.tooling;

import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.GroupSourceInformation;
import androidx.compose.runtime.SlotReader;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComposeStackTraceBuilder.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class ReaderTraceBuilder extends ComposeStackTraceBuilder {
    public static final int $stable = 8;
    @NotNull
    private final SlotReader reader;

    public ReaderTraceBuilder(@NotNull SlotReader slotReader) {
        this.reader = slotReader;
    }

    @Override // androidx.compose.runtime.tooling.ComposeStackTraceBuilder
    public int groupKeyOf(@NotNull Anchor anchor) {
        SlotReader slotReader = this.reader;
        return slotReader.groupKey(slotReader.getTable$runtime().anchorIndex(anchor));
    }

    @Override // androidx.compose.runtime.tooling.ComposeStackTraceBuilder
    @Nullable
    public GroupSourceInformation sourceInformationOf(@NotNull Anchor anchor) {
        return this.reader.getTable$runtime().sourceInformationOf(this.reader.getTable$runtime().anchorIndex(anchor));
    }
}
