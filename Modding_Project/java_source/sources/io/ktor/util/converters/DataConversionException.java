package io.ktor.util.converters;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ConversionService.kt */
@Metadata
/* loaded from: classes8.dex */
public class DataConversionException extends Exception {
    public DataConversionException() {
        this(null, 1, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataConversionException(@NotNull String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }

    public /* synthetic */ DataConversionException(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "Invalid data format" : str);
    }
}
