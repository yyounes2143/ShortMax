package gatewayprotocol.v1;

import gatewayprotocol.v1.LimitedSessionTokenKt;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: LimitedSessionTokenKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLimitedSessionTokenKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitedSessionTokenKt.kt\ngatewayprotocol/v1/LimitedSessionTokenKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,385:1\n1#2:386\n*E\n"})
/* loaded from: classes7.dex */
public final class LimitedSessionTokenKtKt {
    @NotNull
    /* renamed from: -initializelimitedSessionToken  reason: not valid java name */
    public static final UniversalRequestOuterClass.LimitedSessionToken m4886initializelimitedSessionToken(@NotNull Function1<? super LimitedSessionTokenKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        LimitedSessionTokenKt.Dsl.Companion companion = LimitedSessionTokenKt.Dsl.Companion;
        UniversalRequestOuterClass.LimitedSessionToken.Builder newBuilder = UniversalRequestOuterClass.LimitedSessionToken.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        LimitedSessionTokenKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final UniversalRequestOuterClass.LimitedSessionToken copy(@NotNull UniversalRequestOuterClass.LimitedSessionToken limitedSessionToken, @NotNull Function1<? super LimitedSessionTokenKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(limitedSessionToken, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        LimitedSessionTokenKt.Dsl.Companion companion = LimitedSessionTokenKt.Dsl.Companion;
        UniversalRequestOuterClass.LimitedSessionToken.Builder builder = limitedSessionToken.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        LimitedSessionTokenKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
