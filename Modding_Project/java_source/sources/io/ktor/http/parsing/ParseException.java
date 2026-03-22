package io.ktor.http.parsing;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ParseException.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ParseException extends IllegalArgumentException {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f59284a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Throwable f59285b;

    @Override // java.lang.Throwable
    @Nullable
    public Throwable getCause() {
        return this.f59285b;
    }

    @Override // java.lang.Throwable
    @NotNull
    public String getMessage() {
        return this.f59284a;
    }
}
