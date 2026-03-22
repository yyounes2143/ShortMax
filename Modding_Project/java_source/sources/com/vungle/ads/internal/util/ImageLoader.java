package com.vungle.ads.internal.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.vungle.ads.internal.util.Logger;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageLoader.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImageLoader {
    @NotNull
    private static final String FILE_SCHEME = "file://";
    @Nullable
    private Executor ioExecutor;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final String TAG = ImageLoader.class.getSimpleName();
    @NotNull
    private static final ImageLoader instance = new ImageLoader();

    /* compiled from: ImageLoader.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ImageLoader getInstance() {
            return ImageLoader.instance;
        }

        private Companion() {
        }
    }

    private ImageLoader() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: displayImage$lambda-0  reason: not valid java name */
    public static final void m4847displayImage$lambda0(String str, Function1 onImageLoaded) {
        Intrinsics.checkNotNullParameter(onImageLoaded, "$onImageLoaded");
        if (!StringsKt.V(str, "file://", false, 2, null)) {
            return;
        }
        String substring = str.substring(7);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        Bitmap decodeFile = BitmapFactory.decodeFile(substring);
        if (decodeFile != null) {
            onImageLoaded.invoke(decodeFile);
            return;
        }
        Logger.Companion companion = Logger.Companion;
        String TAG2 = TAG;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        companion.w(TAG2, "decode bitmap failed.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getImageSize$lambda-1  reason: not valid java name */
    public static final void m4848getImageSize$lambda1(String str, Function2 onImageSizeLoaded) {
        Intrinsics.checkNotNullParameter(onImageSizeLoaded, "$onImageSizeLoaded");
        if (!StringsKt.V(str, "file://", false, 2, null)) {
            return;
        }
        String substring = str.substring(7);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(substring, options);
        onImageSizeLoaded.invoke(Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
    }

    public final void displayImage(@Nullable final String str, @NotNull final Function1<? super Bitmap, Unit> onImageLoaded) {
        Intrinsics.checkNotNullParameter(onImageLoaded, "onImageLoaded");
        if (this.ioExecutor == null) {
            Logger.Companion companion = Logger.Companion;
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            companion.w(TAG2, "ImageLoader not initialized.");
        } else if (str != null && str.length() != 0) {
            Executor executor = this.ioExecutor;
            if (executor != null) {
                executor.execute(new Runnable() { // from class: com.vungle.ads.internal.util.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageLoader.m4847displayImage$lambda0(str, onImageLoaded);
                    }
                });
            }
        } else {
            Logger.Companion companion2 = Logger.Companion;
            String TAG3 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            companion2.w(TAG3, "the uri is required.");
        }
    }

    public final void getImageSize(@Nullable final String str, @NotNull final Function2<? super Integer, ? super Integer, Unit> onImageSizeLoaded) {
        Intrinsics.checkNotNullParameter(onImageSizeLoaded, "onImageSizeLoaded");
        if (this.ioExecutor == null) {
            Logger.Companion companion = Logger.Companion;
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            companion.w(TAG2, "ImageLoader not initialized.");
        } else if (str != null && str.length() != 0) {
            Executor executor = this.ioExecutor;
            if (executor != null) {
                executor.execute(new Runnable() { // from class: com.vungle.ads.internal.util.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageLoader.m4848getImageSize$lambda1(str, onImageSizeLoaded);
                    }
                });
            }
        } else {
            Logger.Companion companion2 = Logger.Companion;
            String TAG3 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            companion2.w(TAG3, "the uri is required.");
        }
    }

    public final void init(@NotNull Executor ioExecutor) {
        Intrinsics.checkNotNullParameter(ioExecutor, "ioExecutor");
        this.ioExecutor = ioExecutor;
    }
}
