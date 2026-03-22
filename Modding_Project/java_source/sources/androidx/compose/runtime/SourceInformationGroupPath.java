package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: SlotTable.kt */
@Metadata
/* loaded from: classes.dex */
abstract class SourceInformationGroupPath {
    public /* synthetic */ SourceInformationGroupPath(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @NotNull
    public abstract Object getIdentity(@NotNull SlotTable slotTable);

    private SourceInformationGroupPath() {
    }
}
