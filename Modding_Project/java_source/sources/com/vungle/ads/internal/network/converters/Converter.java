package com.vungle.ads.internal.network.converters;

import java.io.IOException;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: Converter.kt */
@Metadata
/* loaded from: classes7.dex */
public interface Converter<In, Out> {
    @Nullable
    Out convert(In in2) throws IOException;
}
