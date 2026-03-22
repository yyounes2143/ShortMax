package com.facebook.fresco.vito.source;

import android.net.Uri;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UriImageSource.kt */
@Metadata
/* loaded from: classes3.dex */
public interface UriImageSource extends ImageSource {
    @Nullable
    Map<String, Object> getExtras();

    @NotNull
    Uri getImageUri();
}
