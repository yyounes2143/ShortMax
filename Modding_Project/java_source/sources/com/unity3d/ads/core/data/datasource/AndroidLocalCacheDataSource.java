package com.unity3d.ads.core.data.datasource;

import com.unity3d.ads.core.data.model.CacheError;
import com.unity3d.ads.core.data.model.CacheResult;
import com.unity3d.ads.core.data.model.CacheSource;
import com.unity3d.ads.core.data.model.CachedFile;
import com.unity3d.ads.core.domain.CreateFile;
import com.unity3d.ads.core.domain.GetFileExtensionFromUrl;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidLocalCacheDataSource.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidLocalCacheDataSource implements CacheDataSource {
    @NotNull
    private final CreateFile createFile;
    @NotNull
    private final GetFileExtensionFromUrl getFileExtensionFromUrl;

    public AndroidLocalCacheDataSource(@NotNull CreateFile createFile, @NotNull GetFileExtensionFromUrl getFileExtensionFromUrl) {
        Intrinsics.checkNotNullParameter(createFile, "createFile");
        Intrinsics.checkNotNullParameter(getFileExtensionFromUrl, "getFileExtensionFromUrl");
        this.createFile = createFile;
        this.getFileExtensionFromUrl = getFileExtensionFromUrl;
    }

    @NotNull
    public final CreateFile getCreateFile() {
        return this.createFile;
    }

    @Override // com.unity3d.ads.core.data.datasource.CacheDataSource
    @Nullable
    public Object getFile(@NotNull File file, @NotNull String str, @Nullable String str2, @Nullable Integer num, @NotNull c<? super CacheResult> cVar) {
        String str3;
        String str4;
        String str5;
        int i10;
        File invoke = this.createFile.invoke(file, str);
        if (invoke.exists()) {
            if (str2 != null && str2.length() != 0) {
                str3 = this.getFileExtensionFromUrl.invoke(str2);
            } else {
                str3 = null;
            }
            if (str2 == null) {
                str4 = "";
            } else {
                str4 = str2;
            }
            if (str3 == null) {
                str5 = "";
            } else {
                str5 = str3;
            }
            long length = invoke.length();
            if (num != null) {
                i10 = num.intValue();
            } else {
                i10 = Integer.MAX_VALUE;
            }
            return new CacheResult.Success(new CachedFile("", str4, str, invoke, str5, length, null, i10, 64, null), CacheSource.LOCAL);
        }
        return new CacheResult.Failure(CacheError.FILE_NOT_FOUND, CacheSource.LOCAL, null, 4, null);
    }

    @NotNull
    public final GetFileExtensionFromUrl getGetFileExtensionFromUrl() {
        return this.getFileExtensionFromUrl;
    }
}
