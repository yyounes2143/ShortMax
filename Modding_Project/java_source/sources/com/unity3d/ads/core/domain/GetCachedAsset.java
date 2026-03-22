package com.unity3d.ads.core.domain;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebResourceResponse;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.unity3d.ads.core.data.model.CacheResult;
import com.unity3d.ads.core.data.repository.CacheRepository;
import com.unity3d.ads.core.extensions.StringExtensionsKt;
import com.unity3d.services.UnityAdsConstants;
import gt.f;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GetCachedAsset.kt */
@Metadata
@SourceDebugExtension({"SMAP\nGetCachedAsset.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetCachedAsset.kt\ncom/unity3d/ads/core/domain/GetCachedAsset\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"})
/* loaded from: classes7.dex */
public final class GetCachedAsset {
    @NotNull
    private final CacheRepository cacheRepository;
    @NotNull
    private final CacheWebViewAssets cacheWebViewAssets;
    @NotNull
    private final Context context;

    public GetCachedAsset(@NotNull CacheRepository cacheRepository, @NotNull Context context, @NotNull CacheWebViewAssets cacheWebViewAssets) {
        Intrinsics.checkNotNullParameter(cacheRepository, "cacheRepository");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(cacheWebViewAssets, "cacheWebViewAssets");
        this.cacheRepository = cacheRepository;
        this.context = context;
        this.cacheWebViewAssets = cacheWebViewAssets;
    }

    private final WebResourceResponse getBundledAsset(Uri uri) {
        String h12 = StringsKt.h1(String.valueOf(uri.getPath()), DomExceptionUtils.SEPARATOR, null, 2, null);
        try {
            InputStream open = this.context.getAssets().open(h12);
            Intrinsics.checkNotNullExpressionValue(open, "context.assets.open(fileName)");
            return new WebResourceResponse(StringExtensionsKt.guessMimeType(h12), null, open);
        } catch (Exception unused) {
            return null;
        }
    }

    private final WebResourceResponse getCachedAsset(Uri uri) {
        Object b10;
        File file;
        Object d10;
        String uri2 = uri.toString();
        Intrinsics.checkNotNullExpressionValue(uri2, "uri.toString()");
        b10 = f.b(null, new GetCachedAsset$getCachedAsset$result$1(this, StringsKt.l1(uri2, DomExceptionUtils.SEPARATOR, null, 2, null), null), 1, null);
        CacheResult cacheResult = (CacheResult) b10;
        if (!(cacheResult instanceof CacheResult.Success) || (file = ((CacheResult.Success) cacheResult).getCachedFile().getFile()) == null) {
            return null;
        }
        try {
            Result.a aVar = Result.f60901b;
            d10 = Result.d(new FileInputStream(file));
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        if (Result.i(d10)) {
            d10 = null;
        }
        FileInputStream fileInputStream = (FileInputStream) d10;
        if (fileInputStream == null) {
            return null;
        }
        String filePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(filePath, "filePath");
        String guessMimeType = StringExtensionsKt.guessMimeType(filePath);
        if (guessMimeType == null || StringsKt.t0(guessMimeType)) {
            return null;
        }
        return new WebResourceResponse(guessMimeType, null, fileInputStream);
    }

    public static /* synthetic */ WebResourceResponse invoke$default(GetCachedAsset getCachedAsset, Uri uri, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = "";
        }
        return getCachedAsset.invoke(uri, str);
    }

    private final WebResourceResponse tryGetWebViewAsset(Uri uri, String str) {
        Object d10;
        String guessMimeType;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append('/');
        String uri2 = uri.toString();
        Intrinsics.checkNotNullExpressionValue(uri2, "uri.toString()");
        sb2.append(StringsKt.l1(StringsKt.p1(uri2, "?", null, 2, null), DomExceptionUtils.SEPARATOR, null, 2, null));
        String sb3 = sb2.toString();
        File file = this.cacheWebViewAssets.getCached().get(sb3);
        if (file == null) {
            return null;
        }
        try {
            Result.a aVar = Result.f60901b;
            d10 = Result.d(new FileInputStream(file));
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        if (Result.i(d10)) {
            d10 = null;
        }
        FileInputStream fileInputStream = (FileInputStream) d10;
        if (fileInputStream == null || (guessMimeType = StringExtensionsKt.guessMimeType(sb3)) == null || StringsKt.t0(guessMimeType)) {
            return null;
        }
        return new WebResourceResponse(guessMimeType, null, fileInputStream);
    }

    @Nullable
    public final WebResourceResponse invoke(@NotNull Uri uri, @NotNull String webviewType) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(webviewType, "webviewType");
        String host = uri.getHost();
        if (host != null) {
            int hashCode = host.hashCode();
            if (hashCode != -1921537799) {
                if (hashCode == -1920242293 && host.equals(UnityAdsConstants.DefaultUrls.AD_CACHE_DOMAIN)) {
                    return getCachedAsset(uri);
                }
            } else if (host.equals(UnityAdsConstants.DefaultUrls.AD_ASSET_DOMAIN)) {
                return getBundledAsset(uri);
            }
        }
        return tryGetWebViewAsset(uri, webviewType);
    }
}
