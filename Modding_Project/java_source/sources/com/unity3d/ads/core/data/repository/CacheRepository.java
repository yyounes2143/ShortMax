package com.unity3d.ads.core.data.repository;

import com.unity3d.ads.core.data.model.CacheResult;
import com.unity3d.ads.core.data.model.CachedFile;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import rs.c;
/* compiled from: CacheRepository.kt */
@Metadata
/* loaded from: classes7.dex */
public interface CacheRepository {

    /* compiled from: CacheRepository.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Object getFile$default(CacheRepository cacheRepository, String str, JSONArray jSONArray, int i10, c cVar, int i11, Object obj) {
            if (obj == null) {
                if ((i11 & 2) != 0) {
                    jSONArray = null;
                }
                if ((i11 & 4) != 0) {
                    i10 = 0;
                }
                return cacheRepository.getFile(str, jSONArray, i10, cVar);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getFile");
        }
    }

    @Nullable
    Object clearCache(@NotNull c<? super Unit> cVar);

    @Nullable
    Object doesFileExist(@NotNull String str, @NotNull c<? super Boolean> cVar);

    @Nullable
    Object getCacheSize(@NotNull c<? super Long> cVar);

    @Nullable
    Object getFile(@NotNull String str, @Nullable JSONArray jSONArray, int i10, @NotNull c<? super CacheResult> cVar);

    @Nullable
    Object getWebviewFile(@NotNull String str, @NotNull String str2, @NotNull c<? super CacheResult> cVar);

    boolean removeFile(@NotNull CachedFile cachedFile);

    @Nullable
    Object retrieveFile(@NotNull String str, @NotNull c<? super CacheResult> cVar);
}
