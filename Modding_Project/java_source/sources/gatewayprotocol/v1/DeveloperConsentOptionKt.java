package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.DeveloperConsentOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DeveloperConsentOptionKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DeveloperConsentOptionKt {
    @NotNull
    public static final DeveloperConsentOptionKt INSTANCE = new DeveloperConsentOptionKt();

    /* compiled from: DeveloperConsentOptionKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final DeveloperConsentOuterClass.DeveloperConsentOption.Builder _builder;

        /* compiled from: DeveloperConsentOptionKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(DeveloperConsentOuterClass.DeveloperConsentOption.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(DeveloperConsentOuterClass.DeveloperConsentOption.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ DeveloperConsentOuterClass.DeveloperConsentOption _build() {
            DeveloperConsentOuterClass.DeveloperConsentOption build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearCustomType() {
            this._builder.clearCustomType();
        }

        public final void clearType() {
            this._builder.clearType();
        }

        public final void clearValue() {
            this._builder.clearValue();
        }

        @NotNull
        public final String getCustomType() {
            String customType = this._builder.getCustomType();
            Intrinsics.checkNotNullExpressionValue(customType, "_builder.getCustomType()");
            return customType;
        }

        @NotNull
        public final DeveloperConsentOuterClass.DeveloperConsentType getType() {
            DeveloperConsentOuterClass.DeveloperConsentType type = this._builder.getType();
            Intrinsics.checkNotNullExpressionValue(type, "_builder.getType()");
            return type;
        }

        public final int getTypeValue() {
            return this._builder.getTypeValue();
        }

        @NotNull
        public final DeveloperConsentOuterClass.DeveloperConsentChoice getValue() {
            DeveloperConsentOuterClass.DeveloperConsentChoice value = this._builder.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "_builder.getValue()");
            return value;
        }

        public final int getValueValue() {
            return this._builder.getValueValue();
        }

        public final boolean hasCustomType() {
            return this._builder.hasCustomType();
        }

        public final void setCustomType(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCustomType(value);
        }

        public final void setType(@NotNull DeveloperConsentOuterClass.DeveloperConsentType value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setType(value);
        }

        public final void setTypeValue(int i10) {
            this._builder.setTypeValue(i10);
        }

        public final void setValue(@NotNull DeveloperConsentOuterClass.DeveloperConsentChoice value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setValue(value);
        }

        public final void setValueValue(int i10) {
            this._builder.setValueValue(i10);
        }

        private Dsl(DeveloperConsentOuterClass.DeveloperConsentOption.Builder builder) {
            this._builder = builder;
        }
    }

    private DeveloperConsentOptionKt() {
    }
}
