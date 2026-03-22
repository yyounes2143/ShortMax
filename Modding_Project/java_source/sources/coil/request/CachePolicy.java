package coil.request;

import kotlin.Metadata;
/* compiled from: CachePolicy.kt */
@Metadata
/* loaded from: classes2.dex */
public enum CachePolicy {
    ENABLED(true, true),
    READ_ONLY(true, false),
    WRITE_ONLY(false, true),
    DISABLED(false, false);
    
    private final boolean readEnabled;
    private final boolean writeEnabled;

    CachePolicy(boolean z10, boolean z11) {
        this.readEnabled = z10;
        this.writeEnabled = z11;
    }

    public final boolean getReadEnabled() {
        return this.readEnabled;
    }

    public final boolean getWriteEnabled() {
        return this.writeEnabled;
    }
}
