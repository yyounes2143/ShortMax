package androidx.privacysandbox.ads.adservices.common;

import android.adservices.common.AdData;
import android.annotation.SuppressLint;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.y0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdData.kt */
@Metadata
@SuppressLint({"ClassVerificationFailure"})
/* loaded from: classes2.dex */
public final class AdData {
    @NotNull
    private final Set<Integer> adCounterKeys;
    @Nullable
    private final AdFilters adFilters;
    @Nullable
    private final String adRenderId;
    @NotNull
    private final String metadata;
    @NotNull
    private final Uri renderUri;

    /* compiled from: AdData.kt */
    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 10), @RequiresExtension(extension = 31, version = 10)})
    @Metadata
    /* loaded from: classes2.dex */
    private static final class Ext10Impl {
        @NotNull
        public static final Companion Companion = new Companion(null);

        /* compiled from: AdData.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final android.adservices.common.AdData convertAdData(@NotNull AdData adData) {
                AdData.Builder metadata;
                AdData.Builder renderUri;
                AdData.Builder adCounterKeys;
                android.adservices.common.AdFilters adFilters;
                AdData.Builder adFilters2;
                AdData.Builder adRenderId;
                android.adservices.common.AdData build;
                Intrinsics.checkNotNullParameter(adData, "adData");
                metadata = g.a().setMetadata(adData.getMetadata());
                renderUri = metadata.setRenderUri(adData.getRenderUri());
                adCounterKeys = renderUri.setAdCounterKeys(adData.getAdCounterKeys());
                AdFilters adFilters3 = adData.getAdFilters();
                if (adFilters3 != null) {
                    adFilters = adFilters3.convertToAdServices$ads_adservices_release();
                } else {
                    adFilters = null;
                }
                adFilters2 = adCounterKeys.setAdFilters(adFilters);
                adRenderId = adFilters2.setAdRenderId(adData.getAdRenderId());
                build = adRenderId.build();
                Intrinsics.checkNotNullExpressionValue(build, "Builder()\n              …                 .build()");
                return build;
            }

            private Companion() {
            }
        }

        private Ext10Impl() {
        }
    }

    /* compiled from: AdData.kt */
    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 4), @RequiresExtension(extension = 31, version = 9)})
    @Metadata
    /* loaded from: classes2.dex */
    private static final class Ext4Impl {
        @NotNull
        public static final Companion Companion = new Companion(null);

        /* compiled from: AdData.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final android.adservices.common.AdData convertAdData(@NotNull AdData adData) {
                AdData.Builder metadata;
                AdData.Builder renderUri;
                android.adservices.common.AdData build;
                Intrinsics.checkNotNullParameter(adData, "adData");
                if (!adData.getAdCounterKeys().isEmpty()) {
                    Log.w("AdData", "adCounterKeys is ignored. Min version to use adCounterKeys is API 33 ext 8 or API 31/32 ext 9");
                }
                if (adData.getAdFilters() != null) {
                    Log.w("AdData", "adFilters is ignored. Min version to use adFilters is API 33 ext 8 or API 31/32 ext 9");
                }
                if (adData.getAdRenderId() != null) {
                    Log.w("AdData", "adRenderId is ignored. Min version to use adRenderId is API 31 ext 10");
                }
                metadata = g.a().setMetadata(adData.getMetadata());
                renderUri = metadata.setRenderUri(adData.getRenderUri());
                build = renderUri.build();
                Intrinsics.checkNotNullExpressionValue(build, "Builder()\n              …                 .build()");
                return build;
            }

            private Companion() {
            }
        }

        private Ext4Impl() {
        }
    }

    /* compiled from: AdData.kt */
    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 8), @RequiresExtension(extension = 31, version = 9)})
    @Metadata
    /* loaded from: classes2.dex */
    private static final class Ext8Impl {
        @NotNull
        public static final Companion Companion = new Companion(null);

        /* compiled from: AdData.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final android.adservices.common.AdData convertAdData(@NotNull AdData adData) {
                AdData.Builder metadata;
                AdData.Builder renderUri;
                AdData.Builder adCounterKeys;
                android.adservices.common.AdFilters adFilters;
                AdData.Builder adFilters2;
                android.adservices.common.AdData build;
                Intrinsics.checkNotNullParameter(adData, "adData");
                if (adData.getAdRenderId() != null) {
                    Log.w("AdData", "adRenderId is ignored. Min version to use adRenderId is API 31 ext 10");
                }
                metadata = g.a().setMetadata(adData.getMetadata());
                renderUri = metadata.setRenderUri(adData.getRenderUri());
                adCounterKeys = renderUri.setAdCounterKeys(adData.getAdCounterKeys());
                AdFilters adFilters3 = adData.getAdFilters();
                if (adFilters3 != null) {
                    adFilters = adFilters3.convertToAdServices$ads_adservices_release();
                } else {
                    adFilters = null;
                }
                adFilters2 = adCounterKeys.setAdFilters(adFilters);
                build = adFilters2.build();
                Intrinsics.checkNotNullExpressionValue(build, "Builder()\n              …                 .build()");
                return build;
            }

            private Companion() {
            }
        }

        private Ext8Impl() {
        }
    }

    @ExperimentalFeatures.Ext10OptIn
    public AdData(@NotNull Uri renderUri, @NotNull String metadata, @NotNull Set<Integer> adCounterKeys, @Nullable AdFilters adFilters, @Nullable String str) {
        Intrinsics.checkNotNullParameter(renderUri, "renderUri");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(adCounterKeys, "adCounterKeys");
        this.renderUri = renderUri;
        this.metadata = metadata;
        this.adCounterKeys = adCounterKeys;
        this.adFilters = adFilters;
        this.adRenderId = str;
    }

    @SuppressLint({"NewApi"})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final android.adservices.common.AdData convertToAdServices$ads_adservices_release() {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() < 10 && adServicesInfo.extServicesVersionS() < 10) {
            if (adServicesInfo.adServicesVersion() < 8 && adServicesInfo.extServicesVersionS() < 9) {
                return Ext4Impl.Companion.convertAdData(this);
            }
            return Ext8Impl.Companion.convertAdData(this);
        }
        return Ext10Impl.Companion.convertAdData(this);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdData)) {
            return false;
        }
        AdData adData = (AdData) obj;
        if (Intrinsics.areEqual(this.renderUri, adData.renderUri) && Intrinsics.areEqual(this.metadata, adData.metadata) && Intrinsics.areEqual(this.adCounterKeys, adData.adCounterKeys) && Intrinsics.areEqual(this.adFilters, adData.adFilters) && Intrinsics.areEqual(this.adRenderId, adData.adRenderId)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final Set<Integer> getAdCounterKeys() {
        return this.adCounterKeys;
    }

    @Nullable
    public final AdFilters getAdFilters() {
        return this.adFilters;
    }

    @Nullable
    public final String getAdRenderId() {
        return this.adRenderId;
    }

    @NotNull
    public final String getMetadata() {
        return this.metadata;
    }

    @NotNull
    public final Uri getRenderUri() {
        return this.renderUri;
    }

    public int hashCode() {
        int i10;
        int hashCode = ((((this.renderUri.hashCode() * 31) + this.metadata.hashCode()) * 31) + this.adCounterKeys.hashCode()) * 31;
        AdFilters adFilters = this.adFilters;
        int i11 = 0;
        if (adFilters != null) {
            i10 = adFilters.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = (hashCode + i10) * 31;
        String str = this.adRenderId;
        if (str != null) {
            i11 = str.hashCode();
        }
        return i12 + i11;
    }

    @NotNull
    public String toString() {
        return "AdData: renderUri=" + this.renderUri + ", metadata='" + this.metadata + "', adCounterKeys=" + this.adCounterKeys + ", adFilters=" + this.adFilters + ", adRenderId=" + this.adRenderId;
    }

    public /* synthetic */ AdData(Uri uri, String str, Set set, AdFilters adFilters, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(uri, str, (i10 & 4) != 0 ? y0.f() : set, (i10 & 8) != 0 ? null : adFilters, (i10 & 16) != 0 ? null : str2);
    }

    public /* synthetic */ AdData(Uri uri, String str, Set set, AdFilters adFilters, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(uri, str, (i10 & 4) != 0 ? y0.f() : set, (i10 & 8) != 0 ? null : adFilters);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ExperimentalFeatures.Ext8OptIn
    public AdData(@NotNull Uri renderUri, @NotNull String metadata, @NotNull Set<Integer> adCounterKeys, @Nullable AdFilters adFilters) {
        this(renderUri, metadata, adCounterKeys, adFilters, null);
        Intrinsics.checkNotNullParameter(renderUri, "renderUri");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(adCounterKeys, "adCounterKeys");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdData(@NotNull Uri renderUri, @NotNull String metadata) {
        this(renderUri, metadata, y0.f(), null);
        Intrinsics.checkNotNullParameter(renderUri, "renderUri");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
    }
}
