package com.facebook.fresco.vito.options;

import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import k2.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EncodedImageOptions.kt */
@Metadata
/* loaded from: classes3.dex */
public class EncodedImageOptions {
    @Nullable
    private final ImageRequest.CacheChoice cacheChoice;
    @Nullable
    private final String diskCacheId;
    @Nullable
    private final Priority priority;

    /* compiled from: EncodedImageOptions.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nEncodedImageOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EncodedImageOptions.kt\ncom/facebook/fresco/vito/options/EncodedImageOptions$Builder\n*L\n1#1,91:1\n86#1,2:92\n86#1,2:94\n86#1,2:96\n*S KotlinDebug\n*F\n+ 1 EncodedImageOptions.kt\ncom/facebook/fresco/vito/options/EncodedImageOptions$Builder\n*L\n75#1:92,2\n77#1:94,2\n79#1:96,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static class Builder<T extends Builder<T>> {
        @Nullable
        private ImageRequest.CacheChoice cacheChoice;
        @Nullable
        private String diskCacheId;
        @Nullable
        private Priority priority;

        /* JADX INFO: Access modifiers changed from: protected */
        public Builder() {
        }

        private final T modify(Function1<? super Builder<T>, Unit> function1) {
            function1.invoke(this);
            return getThis();
        }

        @NotNull
        public EncodedImageOptions build() {
            return new EncodedImageOptions(this);
        }

        @NotNull
        public final T cacheChoice(@Nullable ImageRequest.CacheChoice cacheChoice) {
            this.cacheChoice = cacheChoice;
            return getThis();
        }

        @NotNull
        public final T diskCacheId(@Nullable String str) {
            this.diskCacheId = str;
            return getThis();
        }

        @Nullable
        public final ImageRequest.CacheChoice getCacheChoice$options_release() {
            return this.cacheChoice;
        }

        @Nullable
        public final String getDiskCacheId$options_release() {
            return this.diskCacheId;
        }

        @Nullable
        public final Priority getPriority$options_release() {
            return this.priority;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @NotNull
        public final T getThis() {
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type T of com.facebook.fresco.vito.options.EncodedImageOptions.Builder");
            return this;
        }

        @NotNull
        public final T priority(@Nullable Priority priority) {
            this.priority = priority;
            return getThis();
        }

        public final void setCacheChoice$options_release(@Nullable ImageRequest.CacheChoice cacheChoice) {
            this.cacheChoice = cacheChoice;
        }

        public final void setDiskCacheId$options_release(@Nullable String str) {
            this.diskCacheId = str;
        }

        public final void setPriority$options_release(@Nullable Priority priority) {
            this.priority = priority;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Builder(@NotNull EncodedImageOptions defaultOptions) {
            Intrinsics.checkNotNullParameter(defaultOptions, "defaultOptions");
            this.priority = defaultOptions.getPriority();
            this.cacheChoice = defaultOptions.getCacheChoice();
            this.diskCacheId = defaultOptions.getDiskCacheId();
        }
    }

    public EncodedImageOptions(@NotNull Builder<?> builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.priority = builder.getPriority$options_release();
        this.cacheChoice = builder.getCacheChoice$options_release();
        String diskCacheId$options_release = builder.getDiskCacheId$options_release();
        this.diskCacheId = diskCacheId$options_release;
        if (builder.getCacheChoice$options_release() == ImageRequest.CacheChoice.DYNAMIC) {
            if (diskCacheId$options_release == null) {
                throw new ImageRequestBuilder.BuilderException("Disk cache id must be set for dynamic cache choice");
            }
        } else if (diskCacheId$options_release != null && diskCacheId$options_release.length() != 0) {
            throw new ImageRequestBuilder.BuilderException("Ensure that if you want to use a disk cache id, you set the CacheChoice to DYNAMIC");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean equalEncodedOptions(@NotNull EncodedImageOptions other) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (f.a(this.priority, other.priority) && f.a(this.cacheChoice, other.cacheChoice) && f.a(this.diskCacheId, other.diskCacheId)) {
            return true;
        }
        return false;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Intrinsics.areEqual(getClass(), obj.getClass())) {
            return equalEncodedOptions((EncodedImageOptions) obj);
        }
        return false;
    }

    @Nullable
    public final ImageRequest.CacheChoice getCacheChoice() {
        return this.cacheChoice;
    }

    @Nullable
    public final String getDiskCacheId() {
        return this.diskCacheId;
    }

    @Nullable
    public final Priority getPriority() {
        return this.priority;
    }

    public int hashCode() {
        int i10;
        int i11;
        Priority priority = this.priority;
        int i12 = 0;
        if (priority != null) {
            i10 = priority.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = i10 * 31;
        ImageRequest.CacheChoice cacheChoice = this.cacheChoice;
        if (cacheChoice != null) {
            i11 = cacheChoice.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (i13 + i11) * 31;
        String str = this.diskCacheId;
        if (str != null) {
            i12 = str.hashCode();
        }
        return i14 + i12;
    }

    @NotNull
    public String toString() {
        String aVar = toStringHelper().toString();
        Intrinsics.checkNotNullExpressionValue(aVar, "toString(...)");
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public f.a toStringHelper() {
        f.a c10 = f.b(this).c(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, this.priority).c("cacheChoice", this.cacheChoice).c("diskCacheId", this.diskCacheId);
        Intrinsics.checkNotNullExpressionValue(c10, "add(...)");
        return c10;
    }
}
