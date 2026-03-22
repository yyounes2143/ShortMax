package androidx.compose.runtime.tooling;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
/* compiled from: SourceInformation.kt */
@StabilityInferred(parameters = 1)
@ComposeToolingApi
@Metadata
/* loaded from: classes.dex */
public final class LocationSourceInformation {
    public static final int $stable = 0;
    private final boolean isRepeatable;
    private final int length;
    private final int lineNumber;
    private final int offset;

    public LocationSourceInformation(int i10, int i11, int i12, boolean z10) {
        this.lineNumber = i10;
        this.offset = i11;
        this.length = i12;
        this.isRepeatable = z10;
    }

    public final int getLength() {
        return this.length;
    }

    public final int getLineNumber() {
        return this.lineNumber;
    }

    public final int getOffset() {
        return this.offset;
    }

    public final boolean isRepeatable() {
        return this.isRepeatable;
    }
}
