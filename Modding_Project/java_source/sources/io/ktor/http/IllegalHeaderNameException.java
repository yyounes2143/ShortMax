package io.ktor.http;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpHeaders.kt */
@Metadata
/* loaded from: classes8.dex */
public final class IllegalHeaderNameException extends IllegalArgumentException {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f59190a;

    /* renamed from: b  reason: collision with root package name */
    private final int f59191b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IllegalHeaderNameException(@NotNull String headerName, int i10) {
        super("Header name '" + headerName + "' contains illegal character '" + headerName.charAt(i10) + "' (code " + (headerName.charAt(i10) & 255) + ')');
        Intrinsics.checkNotNullParameter(headerName, "headerName");
        this.f59190a = headerName;
        this.f59191b = i10;
    }
}
