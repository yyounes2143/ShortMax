package gatewayprotocol.v1;

import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DiagnosticEventsConfigurationKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DiagnosticEventsConfigurationKt {
    @NotNull
    public static final DiagnosticEventsConfigurationKt INSTANCE = new DiagnosticEventsConfigurationKt();

    /* compiled from: DiagnosticEventsConfigurationKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final NativeConfigurationOuterClass.DiagnosticEventsConfiguration.Builder _builder;

        /* compiled from: DiagnosticEventsConfigurationKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class AllowedEventsProxy extends DslProxy {
            private AllowedEventsProxy() {
            }
        }

        /* compiled from: DiagnosticEventsConfigurationKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class BlockedEventsProxy extends DslProxy {
            private BlockedEventsProxy() {
            }
        }

        /* compiled from: DiagnosticEventsConfigurationKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(NativeConfigurationOuterClass.DiagnosticEventsConfiguration.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(NativeConfigurationOuterClass.DiagnosticEventsConfiguration.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ NativeConfigurationOuterClass.DiagnosticEventsConfiguration _build() {
            NativeConfigurationOuterClass.DiagnosticEventsConfiguration build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final /* synthetic */ void addAllAllowedEvents(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllAllowedEvents(values);
        }

        public final /* synthetic */ void addAllBlockedEvents(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllBlockedEvents(values);
        }

        public final /* synthetic */ void addAllowedEvents(DslList dslList, DiagnosticEventRequestOuterClass.DiagnosticEventType value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addAllowedEvents(value);
        }

        public final /* synthetic */ void addBlockedEvents(DslList dslList, DiagnosticEventRequestOuterClass.DiagnosticEventType value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addBlockedEvents(value);
        }

        public final /* synthetic */ void clearAllowedEvents(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearAllowedEvents();
        }

        public final /* synthetic */ void clearBlockedEvents(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearBlockedEvents();
        }

        public final void clearEnabled() {
            this._builder.clearEnabled();
        }

        public final void clearMaxBatchIntervalMs() {
            this._builder.clearMaxBatchIntervalMs();
        }

        public final void clearMaxBatchSize() {
            this._builder.clearMaxBatchSize();
        }

        public final void clearSeverity() {
            this._builder.clearSeverity();
        }

        public final void clearTtmEnabled() {
            this._builder.clearTtmEnabled();
        }

        public final /* synthetic */ DslList getAllowedEvents() {
            List<DiagnosticEventRequestOuterClass.DiagnosticEventType> allowedEventsList = this._builder.getAllowedEventsList();
            Intrinsics.checkNotNullExpressionValue(allowedEventsList, "_builder.getAllowedEventsList()");
            return new DslList(allowedEventsList);
        }

        public final /* synthetic */ DslList getBlockedEvents() {
            List<DiagnosticEventRequestOuterClass.DiagnosticEventType> blockedEventsList = this._builder.getBlockedEventsList();
            Intrinsics.checkNotNullExpressionValue(blockedEventsList, "_builder.getBlockedEventsList()");
            return new DslList(blockedEventsList);
        }

        public final boolean getEnabled() {
            return this._builder.getEnabled();
        }

        public final int getMaxBatchIntervalMs() {
            return this._builder.getMaxBatchIntervalMs();
        }

        public final int getMaxBatchSize() {
            return this._builder.getMaxBatchSize();
        }

        @NotNull
        public final DiagnosticEventRequestOuterClass.DiagnosticEventsSeverity getSeverity() {
            DiagnosticEventRequestOuterClass.DiagnosticEventsSeverity severity = this._builder.getSeverity();
            Intrinsics.checkNotNullExpressionValue(severity, "_builder.getSeverity()");
            return severity;
        }

        public final int getSeverityValue() {
            return this._builder.getSeverityValue();
        }

        public final boolean getTtmEnabled() {
            return this._builder.getTtmEnabled();
        }

        public final /* synthetic */ void plusAssignAllAllowedEvents(DslList<DiagnosticEventRequestOuterClass.DiagnosticEventType, AllowedEventsProxy> dslList, Iterable<? extends DiagnosticEventRequestOuterClass.DiagnosticEventType> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllAllowedEvents(dslList, values);
        }

        public final /* synthetic */ void plusAssignAllBlockedEvents(DslList<DiagnosticEventRequestOuterClass.DiagnosticEventType, BlockedEventsProxy> dslList, Iterable<? extends DiagnosticEventRequestOuterClass.DiagnosticEventType> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllBlockedEvents(dslList, values);
        }

        public final /* synthetic */ void plusAssignAllowedEvents(DslList<DiagnosticEventRequestOuterClass.DiagnosticEventType, AllowedEventsProxy> dslList, DiagnosticEventRequestOuterClass.DiagnosticEventType value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addAllowedEvents(dslList, value);
        }

        public final /* synthetic */ void plusAssignBlockedEvents(DslList<DiagnosticEventRequestOuterClass.DiagnosticEventType, BlockedEventsProxy> dslList, DiagnosticEventRequestOuterClass.DiagnosticEventType value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addBlockedEvents(dslList, value);
        }

        public final /* synthetic */ void setAllowedEvents(DslList dslList, int i10, DiagnosticEventRequestOuterClass.DiagnosticEventType value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAllowedEvents(i10, value);
        }

        public final /* synthetic */ void setBlockedEvents(DslList dslList, int i10, DiagnosticEventRequestOuterClass.DiagnosticEventType value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setBlockedEvents(i10, value);
        }

        public final void setEnabled(boolean z10) {
            this._builder.setEnabled(z10);
        }

        public final void setMaxBatchIntervalMs(int i10) {
            this._builder.setMaxBatchIntervalMs(i10);
        }

        public final void setMaxBatchSize(int i10) {
            this._builder.setMaxBatchSize(i10);
        }

        public final void setSeverity(@NotNull DiagnosticEventRequestOuterClass.DiagnosticEventsSeverity value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSeverity(value);
        }

        public final void setSeverityValue(int i10) {
            this._builder.setSeverityValue(i10);
        }

        public final void setTtmEnabled(boolean z10) {
            this._builder.setTtmEnabled(z10);
        }

        private Dsl(NativeConfigurationOuterClass.DiagnosticEventsConfiguration.Builder builder) {
            this._builder = builder;
        }
    }

    private DiagnosticEventsConfigurationKt() {
    }
}
