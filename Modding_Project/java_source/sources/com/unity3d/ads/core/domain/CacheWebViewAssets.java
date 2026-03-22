package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.WebViewConfiguration;
import java.io.File;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: CacheWebViewAssets.kt */
@Metadata
/* loaded from: classes7.dex */
public interface CacheWebViewAssets {
    @NotNull
    Map<String, File> getCached();

    @Nullable
    Object invoke(@NotNull WebViewConfiguration webViewConfiguration, @NotNull c<? super Unit> cVar);
}
