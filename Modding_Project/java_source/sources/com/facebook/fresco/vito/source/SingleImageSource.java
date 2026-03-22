package com.facebook.fresco.vito.source;

import android.net.Uri;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SingleImageSource.kt */
@Metadata
/* loaded from: classes3.dex */
public interface SingleImageSource extends UriImageSource {
    @Nullable
    String getStringExtra(@NotNull String str);

    @NotNull
    Uri getUri();
}
