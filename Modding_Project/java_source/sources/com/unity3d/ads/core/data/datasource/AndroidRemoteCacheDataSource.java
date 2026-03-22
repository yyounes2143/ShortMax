package com.unity3d.ads.core.data.datasource;

import com.unity3d.ads.core.domain.CreateFile;
import com.unity3d.ads.core.domain.GetFileExtensionFromUrl;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import gt.c0;
import gt.e;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import rs.c;
/* compiled from: AndroidRemoteCacheDataSource.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidRemoteCacheDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidRemoteCacheDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1#2:93\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidRemoteCacheDataSource implements CacheDataSource {
    @NotNull
    private final CreateFile createFile;
    @NotNull
    private final GetFileExtensionFromUrl getFileExtensionFromUrl;
    @NotNull
    private final HttpClient httpClient;
    @NotNull
    private final c0 ioDispatcher;

    public AndroidRemoteCacheDataSource(@NotNull c0 ioDispatcher, @NotNull CreateFile createFile, @NotNull GetFileExtensionFromUrl getFileExtensionFromUrl, @NotNull HttpClient httpClient) {
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(createFile, "createFile");
        Intrinsics.checkNotNullParameter(getFileExtensionFromUrl, "getFileExtensionFromUrl");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        this.ioDispatcher = ioDispatcher;
        this.createFile = createFile;
        this.getFileExtensionFromUrl = getFileExtensionFromUrl;
        this.httpClient = httpClient;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object downloadFile(String str, Integer num, c<? super HttpResponse> cVar) {
        int i10;
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = Integer.MAX_VALUE;
        }
        return this.httpClient.execute(new HttpRequest(str, null, null, null, null, null, null, null, null, 0, 0, 0, 0, false, null, null, i10, 65534, null), cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object saveToCache(File file, Object obj, c<? super Unit> cVar) {
        Object g10 = e.g(this.ioDispatcher, new AndroidRemoteCacheDataSource$saveToCache$2(obj, file, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x014b  */
    @Override // com.unity3d.ads.core.data.datasource.CacheDataSource
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getFile(@org.jetbrains.annotations.NotNull java.io.File r18, @org.jetbrains.annotations.NotNull java.lang.String r19, @org.jetbrains.annotations.Nullable java.lang.String r20, @org.jetbrains.annotations.Nullable java.lang.Integer r21, @org.jetbrains.annotations.NotNull rs.c<? super com.unity3d.ads.core.data.model.CacheResult> r22) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.datasource.AndroidRemoteCacheDataSource.getFile(java.io.File, java.lang.String, java.lang.String, java.lang.Integer, rs.c):java.lang.Object");
    }
}
