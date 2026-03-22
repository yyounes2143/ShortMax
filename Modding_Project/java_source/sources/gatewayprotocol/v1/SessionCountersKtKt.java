package gatewayprotocol.v1;

import gatewayprotocol.v1.SessionCountersKt;
import gatewayprotocol.v1.SessionCountersOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SessionCountersKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSessionCountersKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionCountersKt.kt\ngatewayprotocol/v1/SessionCountersKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,234:1\n1#2:235\n*E\n"})
/* loaded from: classes7.dex */
public final class SessionCountersKtKt {
    @NotNull
    /* renamed from: -initializesessionCounters  reason: not valid java name */
    public static final SessionCountersOuterClass.SessionCounters m4899initializesessionCounters(@NotNull Function1<? super SessionCountersKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.Companion;
        SessionCountersOuterClass.SessionCounters.Builder newBuilder = SessionCountersOuterClass.SessionCounters.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        SessionCountersKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final SessionCountersOuterClass.SessionCounters copy(@NotNull SessionCountersOuterClass.SessionCounters sessionCounters, @NotNull Function1<? super SessionCountersKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(sessionCounters, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.Companion;
        SessionCountersOuterClass.SessionCounters.Builder builder = sessionCounters.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        SessionCountersKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
