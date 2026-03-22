package com.facebook.binaryresource;

import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: BinaryResource.kt */
@Metadata
/* loaded from: classes3.dex */
public interface a {
    @NotNull
    InputStream a() throws IOException;

    long size();
}
