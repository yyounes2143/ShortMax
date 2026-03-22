package com.unity3d.ads.core.data.datasource;

import com.unity3d.ads.core.data.model.CacheResult;
import java.io.File;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: CacheDataSource.kt */
@Metadata
/* loaded from: classes7.dex */
public interface CacheDataSource {

    /* compiled from: CacheDataSource.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Object getFile$default(CacheDataSource cacheDataSource, File file, String str, String str2, Integer num, c cVar, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 4) != 0) {
                    str2 = null;
                }
                String str3 = str2;
                if ((i10 & 8) != 0) {
                    num = Integer.MAX_VALUE;
                }
                return cacheDataSource.getFile(file, str, str3, num, cVar);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getFile");
        }
    }

    @Nullable
    Object getFile(@NotNull File file, @NotNull String str, @Nullable String str2, @Nullable Integer num, @NotNull c<? super CacheResult> cVar);
}
