package com.facebook.imagepipeline.decoder;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y3.k;
/* compiled from: DecodeException.kt */
@Metadata
/* loaded from: classes3.dex */
public final class DecodeException extends RuntimeException {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final k f15657a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DecodeException(@Nullable String str, @NotNull k encodedImage) {
        super(str);
        Intrinsics.checkNotNullParameter(encodedImage, "encodedImage");
        this.f15657a = encodedImage;
    }

    @NotNull
    public final k b() {
        return this.f15657a;
    }
}
