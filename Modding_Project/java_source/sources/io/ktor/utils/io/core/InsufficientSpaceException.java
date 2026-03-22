package io.ktor.utils.io.core;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Buffer.kt */
@Metadata
/* loaded from: classes8.dex */
public final class InsufficientSpaceException extends Exception {
    public InsufficientSpaceException() {
        this((String) null, 1, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsufficientSpaceException(@NotNull String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }

    public /* synthetic */ InsufficientSpaceException(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "Not enough free space" : str);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public InsufficientSpaceException(@NotNull String name, int i10, int i11) {
        this("Not enough free space to write " + name + " of " + i10 + " bytes, available " + i11 + " bytes.");
        Intrinsics.checkNotNullParameter(name, "name");
    }
}
