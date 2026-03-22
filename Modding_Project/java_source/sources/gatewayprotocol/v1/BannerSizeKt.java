package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.AdRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BannerSizeKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BannerSizeKt {
    @NotNull
    public static final BannerSizeKt INSTANCE = new BannerSizeKt();

    /* compiled from: BannerSizeKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final AdRequestOuterClass.BannerSize.Builder _builder;

        /* compiled from: BannerSizeKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(AdRequestOuterClass.BannerSize.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(AdRequestOuterClass.BannerSize.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ AdRequestOuterClass.BannerSize _build() {
            AdRequestOuterClass.BannerSize build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearHeight() {
            this._builder.clearHeight();
        }

        public final void clearWidth() {
            this._builder.clearWidth();
        }

        public final int getHeight() {
            return this._builder.getHeight();
        }

        public final int getWidth() {
            return this._builder.getWidth();
        }

        public final void setHeight(int i10) {
            this._builder.setHeight(i10);
        }

        public final void setWidth(int i10) {
            this._builder.setWidth(i10);
        }

        private Dsl(AdRequestOuterClass.BannerSize.Builder builder) {
            this._builder = builder;
        }
    }

    private BannerSizeKt() {
    }
}
