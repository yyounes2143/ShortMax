package androidx.compose.runtime.tooling;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;
/* compiled from: SourceInformation.kt */
@StabilityInferred(parameters = 1)
@ComposeToolingApi
@Metadata
/* loaded from: classes.dex */
public final class ParameterSourceInformation {
    public static final int $stable = 0;
    @Nullable
    private final String inlineClass;
    @Nullable
    private final String name;
    private final int sortedIndex;

    public ParameterSourceInformation(int i10, @Nullable String str, @Nullable String str2) {
        this.sortedIndex = i10;
        this.name = str;
        this.inlineClass = str2;
    }

    @Nullable
    public final String getInlineClass() {
        return this.inlineClass;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    public final int getSortedIndex() {
        return this.sortedIndex;
    }

    public /* synthetic */ ParameterSourceInformation(int i10, String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? null : str, (i11 & 4) != 0 ? null : str2);
    }
}
