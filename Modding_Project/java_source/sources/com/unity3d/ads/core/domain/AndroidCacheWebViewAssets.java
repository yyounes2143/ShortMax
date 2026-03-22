package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.repository.CacheRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidCacheWebViewAssets.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidCacheWebViewAssets.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidCacheWebViewAssets.kt\ncom/unity3d/ads/core/domain/AndroidCacheWebViewAssets\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,57:1\n1855#2,2:58\n*S KotlinDebug\n*F\n+ 1 AndroidCacheWebViewAssets.kt\ncom/unity3d/ads/core/domain/AndroidCacheWebViewAssets\n*L\n43#1:58,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidCacheWebViewAssets implements CacheWebViewAssets {
    @NotNull
    private final ConcurrentHashMap<String, File> _cached;
    @NotNull
    private final CacheRepository cacheRepository;
    @NotNull
    private final SessionRepository sessionRepository;

    public AndroidCacheWebViewAssets(@NotNull CacheRepository cacheRepository, @NotNull SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(cacheRepository, "cacheRepository");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.cacheRepository = cacheRepository;
        this.sessionRepository = sessionRepository;
        this._cached = new ConcurrentHashMap<>();
    }

    private final String getFilename(String str, String str2) {
        return str2 + '/' + StringsKt.k1(StringsKt.o1(str, '?', null, 2, null), '/', null, 2, null);
    }

    @Override // com.unity3d.ads.core.domain.CacheWebViewAssets
    @NotNull
    public Map<String, File> getCached() {
        return this._cached;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f2  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00e9 -> B:40:0x00ec). Please submit an issue!!! */
    @Override // com.unity3d.ads.core.domain.CacheWebViewAssets
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invoke(@org.jetbrains.annotations.NotNull com.unity3d.ads.core.data.model.WebViewConfiguration r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r9) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidCacheWebViewAssets.invoke(com.unity3d.ads.core.data.model.WebViewConfiguration, rs.c):java.lang.Object");
    }
}
