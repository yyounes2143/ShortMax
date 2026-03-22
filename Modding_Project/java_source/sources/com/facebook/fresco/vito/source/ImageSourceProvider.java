package com.facebook.fresco.vito.source;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.facebook.fresco.vito.source.ImageSourceProvider;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageSourceProvider.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImageSourceProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageSourceProvider.kt\ncom/facebook/fresco/vito/source/ImageSourceProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n1#2:147\n*E\n"})
/* loaded from: classes3.dex */
public final class ImageSourceProvider {
    @NotNull
    public static final ImageSourceProvider INSTANCE = new ImageSourceProvider();
    @NotNull
    private static Function1<? super String, ? extends Uri> uriParser = new Function1() { // from class: k3.a
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Uri uriParser$lambda$0;
            uriParser$lambda$0 = ImageSourceProvider.uriParser$lambda$0((String) obj);
            return uriParser$lambda$0;
        }
    };

    private ImageSourceProvider() {
    }

    @NotNull
    public static final ImageSource bitmap(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        return new BitmapImageSource(bitmap);
    }

    @NotNull
    public static final ImageSource drawable(@NotNull Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        return new DrawableImageSource(drawable);
    }

    @NotNull
    public static final ImageSource emptySource() {
        return EmptyImageSource.INSTANCE;
    }

    @NotNull
    public static final ImageSource firstAvailable(@NotNull ImageSource... imageSources) {
        Intrinsics.checkNotNullParameter(imageSources, "imageSources");
        return new FirstAvailableImageSource(imageSources);
    }

    @NotNull
    public static final ImageSource forUri(@Nullable Uri uri) {
        return forUri$default(uri, (Map) null, 2, (Object) null);
    }

    public static /* synthetic */ ImageSource forUri$default(Uri uri, Map map, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            map = null;
        }
        return forUri(uri, map);
    }

    @NotNull
    public static final ImageSource increasingQuality(@NotNull ImageSource lowResImageSource, @NotNull ImageSource highResImageSource) {
        Intrinsics.checkNotNullParameter(lowResImageSource, "lowResImageSource");
        Intrinsics.checkNotNullParameter(highResImageSource, "highResImageSource");
        return new IncreasingQualityImageSource(lowResImageSource, highResImageSource, null);
    }

    public static /* synthetic */ ImageSource increasingQuality$default(ImageSource imageSource, ImageSource imageSource2, Map map, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            map = null;
        }
        return increasingQuality(imageSource, imageSource2, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Uri uriParser$lambda$0(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Uri parse = Uri.parse(it);
        Intrinsics.checkNotNullExpressionValue(parse, "parse(...)");
        return parse;
    }

    @NotNull
    public final Function1<String, Uri> getUriParser() {
        return uriParser;
    }

    public final void setUriParser(@NotNull Function1<? super String, ? extends Uri> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        uriParser = function1;
    }

    @NotNull
    public static final ImageSource forUri(@Nullable String str) {
        return forUri$default(str, (Map) null, 2, (Object) null);
    }

    public static /* synthetic */ ImageSource forUri$default(String str, Map map, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            map = null;
        }
        return forUri(str, map);
    }

    @NotNull
    public static final ImageSource increasingQuality(@NotNull ImageSource lowResImageSource, @NotNull ImageSource highResImageSource, @Nullable Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(lowResImageSource, "lowResImageSource");
        Intrinsics.checkNotNullParameter(highResImageSource, "highResImageSource");
        return new IncreasingQualityImageSource(lowResImageSource, highResImageSource, map);
    }

    @NotNull
    public static final ImageSource forUri(@Nullable Uri uri, @Nullable Map<String, ? extends Object> map) {
        if (uri == null) {
            return emptySource();
        }
        Map c10 = p0.c();
        if (map != null) {
            c10.putAll(map);
        }
        c10.put("uri_source", uri);
        return new SingleImageSourceImpl(uri, p0.b(c10));
    }

    @NotNull
    public static final ImageSource increasingQuality(@Nullable Uri uri, @Nullable Uri uri2) {
        if (uri == null) {
            return forUri$default(uri2, (Map) null, 2, (Object) null);
        }
        return new IncreasingQualityImageSource(forUri$default(uri, (Map) null, 2, (Object) null), forUri$default(uri2, (Map) null, 2, (Object) null), null, 4, null);
    }

    @NotNull
    public static final ImageSource forUri(@Nullable String str, @Nullable Map<String, ? extends Object> map) {
        return forUri(str != null ? uriParser.invoke(str) : null, map);
    }
}
