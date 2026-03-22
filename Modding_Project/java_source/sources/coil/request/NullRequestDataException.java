package coil.request;

import kotlin.Metadata;
/* compiled from: NullRequestDataException.kt */
@Metadata
/* loaded from: classes2.dex */
public final class NullRequestDataException extends RuntimeException {
    public NullRequestDataException() {
        super("The request's data is null.");
    }
}
