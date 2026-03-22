package androidx.compose.runtime.tooling;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComposeStackTrace.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class ComposeStackTraceFrame {
    public static final int $stable = 8;
    @Nullable
    private final Integer groupOffset;
    @NotNull
    private final SourceInformation sourceInfo;

    public ComposeStackTraceFrame(@NotNull SourceInformation sourceInformation, @Nullable Integer num) {
        this.sourceInfo = sourceInformation;
        this.groupOffset = num;
    }

    public static /* synthetic */ ComposeStackTraceFrame copy$default(ComposeStackTraceFrame composeStackTraceFrame, SourceInformation sourceInformation, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            sourceInformation = composeStackTraceFrame.sourceInfo;
        }
        if ((i10 & 2) != 0) {
            num = composeStackTraceFrame.groupOffset;
        }
        return composeStackTraceFrame.copy(sourceInformation, num);
    }

    @NotNull
    public final SourceInformation component1() {
        return this.sourceInfo;
    }

    @Nullable
    public final Integer component2() {
        return this.groupOffset;
    }

    @NotNull
    public final ComposeStackTraceFrame copy(@NotNull SourceInformation sourceInformation, @Nullable Integer num) {
        return new ComposeStackTraceFrame(sourceInformation, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ComposeStackTraceFrame)) {
            return false;
        }
        ComposeStackTraceFrame composeStackTraceFrame = (ComposeStackTraceFrame) obj;
        if (Intrinsics.areEqual(this.sourceInfo, composeStackTraceFrame.sourceInfo) && Intrinsics.areEqual(this.groupOffset, composeStackTraceFrame.groupOffset)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Integer getGroupOffset() {
        return this.groupOffset;
    }

    @NotNull
    public final SourceInformation getSourceInfo() {
        return this.sourceInfo;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.sourceInfo.hashCode() * 31;
        Integer num = this.groupOffset;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "ComposeStackTraceFrame(sourceInfo=" + this.sourceInfo + ", groupOffset=" + this.groupOffset + ')';
    }
}
