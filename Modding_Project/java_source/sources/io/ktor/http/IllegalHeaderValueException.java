package io.ktor.http;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpHeaders.kt */
@Metadata
/* loaded from: classes8.dex */
public final class IllegalHeaderValueException extends IllegalArgumentException {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f59192a;

    /* renamed from: b  reason: collision with root package name */
    private final int f59193b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IllegalHeaderValueException(@NotNull String headerValue, int i10) {
        super("Header value '" + headerValue + "' contains illegal character '" + headerValue.charAt(i10) + "' (code " + (headerValue.charAt(i10) & 255) + ')');
        Intrinsics.checkNotNullParameter(headerValue, "headerValue");
        this.f59192a = headerValue;
        this.f59193b = i10;
    }
}
