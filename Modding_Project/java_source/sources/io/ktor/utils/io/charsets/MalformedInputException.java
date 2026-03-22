package io.ktor.utils.io.charsets;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CharsetJVM.kt */
@Metadata
/* loaded from: classes8.dex */
public class MalformedInputException extends java.nio.charset.MalformedInputException {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f59507a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MalformedInputException(@NotNull String message) {
        super(0);
        Intrinsics.checkNotNullParameter(message, "message");
        this.f59507a = message;
    }

    @Override // java.nio.charset.MalformedInputException, java.lang.Throwable
    @Nullable
    public String getMessage() {
        return this.f59507a;
    }
}
