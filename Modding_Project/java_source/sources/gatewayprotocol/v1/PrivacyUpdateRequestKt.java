package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.PrivacyUpdateRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrivacyUpdateRequestKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class PrivacyUpdateRequestKt {
    @NotNull
    public static final PrivacyUpdateRequestKt INSTANCE = new PrivacyUpdateRequestKt();

    /* compiled from: PrivacyUpdateRequestKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest.Builder _builder;

        /* compiled from: PrivacyUpdateRequestKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest _build() {
            PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearContent() {
            this._builder.clearContent();
        }

        public final void clearVersion() {
            this._builder.clearVersion();
        }

        @NotNull
        public final ByteString getContent() {
            ByteString content = this._builder.getContent();
            Intrinsics.checkNotNullExpressionValue(content, "_builder.getContent()");
            return content;
        }

        public final int getVersion() {
            return this._builder.getVersion();
        }

        public final void setContent(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setContent(value);
        }

        public final void setVersion(int i10) {
            this._builder.setVersion(i10);
        }

        private Dsl(PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest.Builder builder) {
            this._builder = builder;
        }
    }

    private PrivacyUpdateRequestKt() {
    }
}
