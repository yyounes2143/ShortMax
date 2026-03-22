package io.bidmachine.util.network;

import kotlin.Metadata;
/* compiled from: RequestInDestroyedStateException.kt */
@Metadata
/* loaded from: classes8.dex */
public final class RequestInDestroyedStateException extends IllegalStateException {
    public RequestInDestroyedStateException() {
        super("Request has already been destroyed");
    }
}
