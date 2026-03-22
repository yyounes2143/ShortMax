package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.SessionCountersOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SessionCountersKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SessionCountersKt {
    @NotNull
    public static final SessionCountersKt INSTANCE = new SessionCountersKt();

    /* compiled from: SessionCountersKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final SessionCountersOuterClass.SessionCounters.Builder _builder;

        /* compiled from: SessionCountersKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(SessionCountersOuterClass.SessionCounters.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(SessionCountersOuterClass.SessionCounters.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ SessionCountersOuterClass.SessionCounters _build() {
            SessionCountersOuterClass.SessionCounters build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearBannerImpressions() {
            this._builder.clearBannerImpressions();
        }

        public final void clearBannerLoadRequests() {
            this._builder.clearBannerLoadRequests();
        }

        public final void clearBannerRequestsAdm() {
            this._builder.clearBannerRequestsAdm();
        }

        public final void clearFocusChangeCount() {
            this._builder.clearFocusChangeCount();
        }

        public final void clearGlobalAdsFocusChangeCount() {
            this._builder.clearGlobalAdsFocusChangeCount();
        }

        public final void clearGlobalAdsFocusTime() {
            this._builder.clearGlobalAdsFocusTime();
        }

        public final void clearLoadRequests() {
            this._builder.clearLoadRequests();
        }

        public final void clearLoadRequestsAdm() {
            this._builder.clearLoadRequestsAdm();
        }

        public final int getBannerImpressions() {
            return this._builder.getBannerImpressions();
        }

        public final int getBannerLoadRequests() {
            return this._builder.getBannerLoadRequests();
        }

        public final int getBannerRequestsAdm() {
            return this._builder.getBannerRequestsAdm();
        }

        public final int getFocusChangeCount() {
            return this._builder.getFocusChangeCount();
        }

        public final int getGlobalAdsFocusChangeCount() {
            return this._builder.getGlobalAdsFocusChangeCount();
        }

        public final int getGlobalAdsFocusTime() {
            return this._builder.getGlobalAdsFocusTime();
        }

        public final int getLoadRequests() {
            return this._builder.getLoadRequests();
        }

        public final int getLoadRequestsAdm() {
            return this._builder.getLoadRequestsAdm();
        }

        public final void setBannerImpressions(int i10) {
            this._builder.setBannerImpressions(i10);
        }

        public final void setBannerLoadRequests(int i10) {
            this._builder.setBannerLoadRequests(i10);
        }

        public final void setBannerRequestsAdm(int i10) {
            this._builder.setBannerRequestsAdm(i10);
        }

        public final void setFocusChangeCount(int i10) {
            this._builder.setFocusChangeCount(i10);
        }

        public final void setGlobalAdsFocusChangeCount(int i10) {
            this._builder.setGlobalAdsFocusChangeCount(i10);
        }

        public final void setGlobalAdsFocusTime(int i10) {
            this._builder.setGlobalAdsFocusTime(i10);
        }

        public final void setLoadRequests(int i10) {
            this._builder.setLoadRequests(i10);
        }

        public final void setLoadRequestsAdm(int i10) {
            this._builder.setLoadRequestsAdm(i10);
        }

        private Dsl(SessionCountersOuterClass.SessionCounters.Builder builder) {
            this._builder = builder;
        }
    }

    private SessionCountersKt() {
    }
}
