package com.facebook.fresco.urimod;

import android.net.Uri;
import c3.q;
import com.facebook.common.callercontext.ContextChain;
import com.facebook.fresco.vito.source.UriImageSource;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UriModifierInterface.kt */
@Metadata
/* loaded from: classes3.dex */
public interface UriModifierInterface {

    /* compiled from: UriModifierInterface.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ ModificationResult modifyUri$default(UriModifierInterface uriModifierInterface, UriImageSource uriImageSource, Dimensions dimensions, q qVar, Object obj, ContextChain contextChain, boolean z10, int i10, Object obj2) {
            if (obj2 == null) {
                if ((i10 & 16) != 0) {
                    contextChain = null;
                }
                ContextChain contextChain2 = contextChain;
                if ((i10 & 32) != 0) {
                    z10 = false;
                }
                return uriModifierInterface.modifyUri(uriImageSource, dimensions, qVar, obj, contextChain2, z10);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modifyUri");
        }
    }

    /* compiled from: UriModifierInterface.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static abstract class ModificationResult {
        @NotNull
        private final String comment;

        /* compiled from: UriModifierInterface.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class Disabled extends ModificationResult {
            @Nullable
            private final Integer bestAllowlistedSize;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Disabled(@NotNull String comment) {
                super("Disabled:" + comment, null);
                Intrinsics.checkNotNullParameter(comment, "comment");
            }

            @Override // com.facebook.fresco.urimod.UriModifierInterface.ModificationResult
            @Nullable
            public Integer getBestAllowlistedSize() {
                return this.bestAllowlistedSize;
            }
        }

        /* compiled from: UriModifierInterface.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class FallbackToMbpDiskCache extends ModificationResult {
            @Nullable
            private final Integer bestAllowlistedSize;
            private final boolean isBestSize;

            public FallbackToMbpDiskCache(boolean z10) {
                super("FallbackToMbpDiskCache(isBestSize=" + z10, null);
                this.isBestSize = z10;
            }

            public static /* synthetic */ FallbackToMbpDiskCache copy$default(FallbackToMbpDiskCache fallbackToMbpDiskCache, boolean z10, int i10, Object obj) {
                if ((i10 & 1) != 0) {
                    z10 = fallbackToMbpDiskCache.isBestSize;
                }
                return fallbackToMbpDiskCache.copy(z10);
            }

            public final boolean component1() {
                return this.isBestSize;
            }

            @NotNull
            public final FallbackToMbpDiskCache copy(boolean z10) {
                return new FallbackToMbpDiskCache(z10);
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if ((obj instanceof FallbackToMbpDiskCache) && this.isBestSize == ((FallbackToMbpDiskCache) obj).isBestSize) {
                    return true;
                }
                return false;
            }

            @Override // com.facebook.fresco.urimod.UriModifierInterface.ModificationResult
            @Nullable
            public Integer getBestAllowlistedSize() {
                return this.bestAllowlistedSize;
            }

            public int hashCode() {
                return Boolean.hashCode(this.isBestSize);
            }

            public final boolean isBestSize() {
                return this.isBestSize;
            }

            @Override // com.facebook.fresco.urimod.UriModifierInterface.ModificationResult
            @NotNull
            public String toString() {
                boolean z10 = this.isBestSize;
                return "FallbackToMbpDiskCache(isBestSize=" + z10 + ")";
            }
        }

        /* compiled from: UriModifierInterface.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class FallbackToMbpMemoryCache extends ModificationResult {
            @Nullable
            private final Integer bestAllowlistedSize;
            @NotNull
            private final String isBestSize;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public FallbackToMbpMemoryCache(@NotNull String isBestSize) {
                super("FallbackToMbpMemoryCache(" + isBestSize, null);
                Intrinsics.checkNotNullParameter(isBestSize, "isBestSize");
                this.isBestSize = isBestSize;
            }

            public static /* synthetic */ FallbackToMbpMemoryCache copy$default(FallbackToMbpMemoryCache fallbackToMbpMemoryCache, String str, int i10, Object obj) {
                if ((i10 & 1) != 0) {
                    str = fallbackToMbpMemoryCache.isBestSize;
                }
                return fallbackToMbpMemoryCache.copy(str);
            }

            @NotNull
            public final String component1() {
                return this.isBestSize;
            }

            @NotNull
            public final FallbackToMbpMemoryCache copy(@NotNull String isBestSize) {
                Intrinsics.checkNotNullParameter(isBestSize, "isBestSize");
                return new FallbackToMbpMemoryCache(isBestSize);
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if ((obj instanceof FallbackToMbpMemoryCache) && Intrinsics.areEqual(this.isBestSize, ((FallbackToMbpMemoryCache) obj).isBestSize)) {
                    return true;
                }
                return false;
            }

            @Override // com.facebook.fresco.urimod.UriModifierInterface.ModificationResult
            @Nullable
            public Integer getBestAllowlistedSize() {
                return this.bestAllowlistedSize;
            }

            public int hashCode() {
                return this.isBestSize.hashCode();
            }

            @NotNull
            public final String isBestSize() {
                return this.isBestSize;
            }

            @Override // com.facebook.fresco.urimod.UriModifierInterface.ModificationResult
            @NotNull
            public String toString() {
                String str = this.isBestSize;
                return "FallbackToMbpMemoryCache(isBestSize=" + str + ")";
            }
        }

        /* compiled from: UriModifierInterface.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class FallbackToOriginalUrl extends ModificationResult {
            @Nullable
            private final Integer bestAllowlistedSize;

            public FallbackToOriginalUrl(@Nullable Integer num) {
                super("FallbackToOriginalUrl", null);
                this.bestAllowlistedSize = num;
            }

            public static /* synthetic */ FallbackToOriginalUrl copy$default(FallbackToOriginalUrl fallbackToOriginalUrl, Integer num, int i10, Object obj) {
                if ((i10 & 1) != 0) {
                    num = fallbackToOriginalUrl.bestAllowlistedSize;
                }
                return fallbackToOriginalUrl.copy(num);
            }

            @Nullable
            public final Integer component1() {
                return this.bestAllowlistedSize;
            }

            @NotNull
            public final FallbackToOriginalUrl copy(@Nullable Integer num) {
                return new FallbackToOriginalUrl(num);
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if ((obj instanceof FallbackToOriginalUrl) && Intrinsics.areEqual(this.bestAllowlistedSize, ((FallbackToOriginalUrl) obj).bestAllowlistedSize)) {
                    return true;
                }
                return false;
            }

            @Override // com.facebook.fresco.urimod.UriModifierInterface.ModificationResult
            @Nullable
            public Integer getBestAllowlistedSize() {
                return this.bestAllowlistedSize;
            }

            public int hashCode() {
                Integer num = this.bestAllowlistedSize;
                if (num == null) {
                    return 0;
                }
                return num.hashCode();
            }

            @Override // com.facebook.fresco.urimod.UriModifierInterface.ModificationResult
            @NotNull
            public String toString() {
                Integer num = this.bestAllowlistedSize;
                return "FallbackToOriginalUrl(bestAllowlistedSize=" + num + ")";
            }
        }

        /* compiled from: UriModifierInterface.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static abstract class Modified extends ModificationResult {
            @NotNull
            private final Uri newUri;

            /* compiled from: UriModifierInterface.kt */
            @Metadata
            /* loaded from: classes3.dex */
            public static final class ModifiedToAllowlistedSize extends Modified {
                @Nullable
                private final Integer bestAllowlistedSize;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public ModifiedToAllowlistedSize(@NotNull Uri newUrl, @Nullable Integer num) {
                    super(newUrl, "ModifiedToAllowlistedSize", null);
                    Intrinsics.checkNotNullParameter(newUrl, "newUrl");
                    this.bestAllowlistedSize = num;
                }

                @Override // com.facebook.fresco.urimod.UriModifierInterface.ModificationResult
                @Nullable
                public Integer getBestAllowlistedSize() {
                    return this.bestAllowlistedSize;
                }
            }

            /* compiled from: UriModifierInterface.kt */
            @Metadata
            /* loaded from: classes3.dex */
            public static final class ModifiedToMaxDimens extends Modified {
                @Nullable
                private final Integer bestAllowlistedSize;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public ModifiedToMaxDimens(@NotNull Uri newUrl, @Nullable Integer num) {
                    super(newUrl, "ModifiedToMaxDimens", null);
                    Intrinsics.checkNotNullParameter(newUrl, "newUrl");
                    this.bestAllowlistedSize = num;
                }

                @Override // com.facebook.fresco.urimod.UriModifierInterface.ModificationResult
                @Nullable
                public Integer getBestAllowlistedSize() {
                    return this.bestAllowlistedSize;
                }
            }

            public /* synthetic */ Modified(Uri uri, String str, DefaultConstructorMarker defaultConstructorMarker) {
                this(uri, str);
            }

            @NotNull
            public final Uri getNewUri() {
                return this.newUri;
            }

            private Modified(Uri uri, String str) {
                super(str, null);
                this.newUri = uri;
            }
        }

        /* compiled from: UriModifierInterface.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class Unmodified extends ModificationResult {
            @Nullable
            private final Integer bestAllowlistedSize;
            @NotNull
            private final String reason;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Unmodified(@NotNull String reason, @Nullable Integer num) {
                super("Unmodified(reason='" + reason + "'", null);
                Intrinsics.checkNotNullParameter(reason, "reason");
                this.reason = reason;
                this.bestAllowlistedSize = num;
            }

            public static /* synthetic */ Unmodified copy$default(Unmodified unmodified, String str, Integer num, int i10, Object obj) {
                if ((i10 & 1) != 0) {
                    str = unmodified.reason;
                }
                if ((i10 & 2) != 0) {
                    num = unmodified.bestAllowlistedSize;
                }
                return unmodified.copy(str, num);
            }

            @NotNull
            public final String component1() {
                return this.reason;
            }

            @Nullable
            public final Integer component2() {
                return this.bestAllowlistedSize;
            }

            @NotNull
            public final Unmodified copy(@NotNull String reason, @Nullable Integer num) {
                Intrinsics.checkNotNullParameter(reason, "reason");
                return new Unmodified(reason, num);
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Unmodified)) {
                    return false;
                }
                Unmodified unmodified = (Unmodified) obj;
                if (Intrinsics.areEqual(this.reason, unmodified.reason) && Intrinsics.areEqual(this.bestAllowlistedSize, unmodified.bestAllowlistedSize)) {
                    return true;
                }
                return false;
            }

            @Override // com.facebook.fresco.urimod.UriModifierInterface.ModificationResult
            @Nullable
            public Integer getBestAllowlistedSize() {
                return this.bestAllowlistedSize;
            }

            @NotNull
            public final String getReason() {
                return this.reason;
            }

            public int hashCode() {
                int hashCode;
                int hashCode2 = this.reason.hashCode() * 31;
                Integer num = this.bestAllowlistedSize;
                if (num == null) {
                    hashCode = 0;
                } else {
                    hashCode = num.hashCode();
                }
                return hashCode2 + hashCode;
            }

            @Override // com.facebook.fresco.urimod.UriModifierInterface.ModificationResult
            @NotNull
            public String toString() {
                String str = this.reason;
                Integer num = this.bestAllowlistedSize;
                return "Unmodified(reason=" + str + ", bestAllowlistedSize=" + num + ")";
            }
        }

        public /* synthetic */ ModificationResult(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }

        @Nullable
        public abstract Integer getBestAllowlistedSize();

        @NotNull
        public String toString() {
            return this.comment;
        }

        private ModificationResult(String str) {
            this.comment = str;
        }
    }

    @Nullable
    Uri modifyPrefetchUri(@NotNull Uri uri, @Nullable Object obj);

    @NotNull
    ModificationResult modifyUri(@NotNull UriImageSource uriImageSource, @Nullable Dimensions dimensions, @Nullable q qVar, @Nullable Object obj, @Nullable ContextChain contextChain, boolean z10);

    void unregisterReverseFallbackUri(@NotNull Uri uri);
}
