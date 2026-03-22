package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CachedAssetsConfigurationKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CachedAssetsConfigurationKt {
    @NotNull
    public static final CachedAssetsConfigurationKt INSTANCE = new CachedAssetsConfigurationKt();

    /* compiled from: CachedAssetsConfigurationKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final NativeConfigurationOuterClass.CachedAssetsConfiguration.Builder _builder;

        /* compiled from: CachedAssetsConfigurationKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(NativeConfigurationOuterClass.CachedAssetsConfiguration.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(NativeConfigurationOuterClass.CachedAssetsConfiguration.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ NativeConfigurationOuterClass.CachedAssetsConfiguration _build() {
            NativeConfigurationOuterClass.CachedAssetsConfiguration build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearMaxCachedAssetAgeMs() {
            this._builder.clearMaxCachedAssetAgeMs();
        }

        public final void clearMaxCachedAssetSizeMb() {
            this._builder.clearMaxCachedAssetSizeMb();
        }

        public final long getMaxCachedAssetAgeMs() {
            return this._builder.getMaxCachedAssetAgeMs();
        }

        public final int getMaxCachedAssetSizeMb() {
            return this._builder.getMaxCachedAssetSizeMb();
        }

        public final void setMaxCachedAssetAgeMs(long j10) {
            this._builder.setMaxCachedAssetAgeMs(j10);
        }

        public final void setMaxCachedAssetSizeMb(int i10) {
            this._builder.setMaxCachedAssetSizeMb(i10);
        }

        private Dsl(NativeConfigurationOuterClass.CachedAssetsConfiguration.Builder builder) {
            this._builder = builder;
        }
    }

    private CachedAssetsConfigurationKt() {
    }
}
