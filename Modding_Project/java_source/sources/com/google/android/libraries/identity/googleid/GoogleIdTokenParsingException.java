package com.google.android.libraries.identity.googleid;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: com.google.android.libraries.identity.googleid:googleid@@1.1.0 */
@Metadata
/* loaded from: classes5.dex */
public final class GoogleIdTokenParsingException extends Exception {
    public GoogleIdTokenParsingException() {
        this(null);
    }

    public GoogleIdTokenParsingException(@Nullable Throwable th2) {
        super(th2);
    }
}
