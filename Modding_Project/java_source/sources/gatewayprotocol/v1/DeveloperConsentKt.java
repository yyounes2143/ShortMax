package gatewayprotocol.v1;

import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.DeveloperConsentOuterClass;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DeveloperConsentKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DeveloperConsentKt {
    @NotNull
    public static final DeveloperConsentKt INSTANCE = new DeveloperConsentKt();

    /* compiled from: DeveloperConsentKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final DeveloperConsentOuterClass.DeveloperConsent.Builder _builder;

        /* compiled from: DeveloperConsentKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(DeveloperConsentOuterClass.DeveloperConsent.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        /* compiled from: DeveloperConsentKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class OptionsProxy extends DslProxy {
            private OptionsProxy() {
            }
        }

        public /* synthetic */ Dsl(DeveloperConsentOuterClass.DeveloperConsent.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ DeveloperConsentOuterClass.DeveloperConsent _build() {
            DeveloperConsentOuterClass.DeveloperConsent build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final /* synthetic */ void addAllOptions(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllOptions(values);
        }

        public final /* synthetic */ void addOptions(DslList dslList, DeveloperConsentOuterClass.DeveloperConsentOption value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addOptions(value);
        }

        public final /* synthetic */ void clearOptions(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearOptions();
        }

        public final /* synthetic */ DslList getOptions() {
            List<DeveloperConsentOuterClass.DeveloperConsentOption> optionsList = this._builder.getOptionsList();
            Intrinsics.checkNotNullExpressionValue(optionsList, "_builder.getOptionsList()");
            return new DslList(optionsList);
        }

        public final /* synthetic */ void plusAssignAllOptions(DslList<DeveloperConsentOuterClass.DeveloperConsentOption, OptionsProxy> dslList, Iterable<DeveloperConsentOuterClass.DeveloperConsentOption> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllOptions(dslList, values);
        }

        public final /* synthetic */ void plusAssignOptions(DslList<DeveloperConsentOuterClass.DeveloperConsentOption, OptionsProxy> dslList, DeveloperConsentOuterClass.DeveloperConsentOption value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addOptions(dslList, value);
        }

        public final /* synthetic */ void setOptions(DslList dslList, int i10, DeveloperConsentOuterClass.DeveloperConsentOption value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOptions(i10, value);
        }

        private Dsl(DeveloperConsentOuterClass.DeveloperConsent.Builder builder) {
            this._builder = builder;
        }
    }

    private DeveloperConsentKt() {
    }
}
