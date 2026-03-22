package androidx.compose.runtime.tooling;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SourceInformation.kt */
@StabilityInferred(parameters = 0)
@ComposeToolingApi
@Metadata
/* loaded from: classes.dex */
public final class SourceInformation {
    public static final int $stable = 8;
    @Nullable
    private final String functionName;
    private final boolean isCall;
    private final boolean isInline;
    @NotNull
    private final List<LocationSourceInformation> locations;
    @Nullable
    private final String packageHash;
    @NotNull
    private final List<ParameterSourceInformation> parameters;
    @NotNull
    private final String rawData;
    @Nullable
    private final String sourceFile;

    public SourceInformation(boolean z10, boolean z11, @Nullable String str, @Nullable String str2, @NotNull List<ParameterSourceInformation> list, @Nullable String str3, @NotNull List<LocationSourceInformation> list2, @NotNull String str4) {
        this.isCall = z10;
        this.isInline = z11;
        this.functionName = str;
        this.sourceFile = str2;
        this.parameters = list;
        this.packageHash = str3;
        this.locations = list2;
        this.rawData = str4;
    }

    @Nullable
    public final String getFunctionName() {
        return this.functionName;
    }

    @NotNull
    public final List<LocationSourceInformation> getLocations() {
        return this.locations;
    }

    @Nullable
    public final String getPackageHash() {
        return this.packageHash;
    }

    @NotNull
    public final List<ParameterSourceInformation> getParameters() {
        return this.parameters;
    }

    @NotNull
    public final String getRawData() {
        return this.rawData;
    }

    @Nullable
    public final String getSourceFile() {
        return this.sourceFile;
    }

    public final boolean isCall() {
        return this.isCall;
    }

    public final boolean isInline() {
        return this.isInline;
    }
}
