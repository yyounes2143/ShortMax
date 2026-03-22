package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.CacheResult;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import rs.c;
/* compiled from: CacheFile.kt */
@Metadata
/* loaded from: classes7.dex */
public interface CacheFile {
    @Nullable
    Object invoke(@NotNull String str, @NotNull AdObject adObject, @Nullable JSONArray jSONArray, int i10, @NotNull c<? super CacheResult> cVar);
}
