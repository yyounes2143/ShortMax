package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.HeaderBiddingTokenOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TokenCountersKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class TokenCountersKt {
    @NotNull
    public static final TokenCountersKt INSTANCE = new TokenCountersKt();

    /* compiled from: TokenCountersKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final HeaderBiddingTokenOuterClass.TokenCounters.Builder _builder;

        /* compiled from: TokenCountersKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(HeaderBiddingTokenOuterClass.TokenCounters.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(HeaderBiddingTokenOuterClass.TokenCounters.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ HeaderBiddingTokenOuterClass.TokenCounters _build() {
            HeaderBiddingTokenOuterClass.TokenCounters build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearSeq() {
            this._builder.clearSeq();
        }

        public final void clearStarts() {
            this._builder.clearStarts();
        }

        public final void clearWins() {
            this._builder.clearWins();
        }

        public final int getSeq() {
            return this._builder.getSeq();
        }

        public final int getStarts() {
            return this._builder.getStarts();
        }

        public final int getWins() {
            return this._builder.getWins();
        }

        public final void setSeq(int i10) {
            this._builder.setSeq(i10);
        }

        public final void setStarts(int i10) {
            this._builder.setStarts(i10);
        }

        public final void setWins(int i10) {
            this._builder.setWins(i10);
        }

        private Dsl(HeaderBiddingTokenOuterClass.TokenCounters.Builder builder) {
            this._builder = builder;
        }
    }

    private TokenCountersKt() {
    }
}
