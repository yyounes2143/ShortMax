package gatewayprotocol.v1;

import gatewayprotocol.v1.OperativeEventErrorDataKt;
import gatewayprotocol.v1.OperativeEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: OperativeEventErrorDataKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOperativeEventErrorDataKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperativeEventErrorDataKt.kt\ngatewayprotocol/v1/OperativeEventErrorDataKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1#2:76\n*E\n"})
/* loaded from: classes7.dex */
public final class OperativeEventErrorDataKtKt {
    @NotNull
    /* renamed from: -initializeoperativeEventErrorData  reason: not valid java name */
    public static final OperativeEventRequestOuterClass.OperativeEventErrorData m4890initializeoperativeEventErrorData(@NotNull Function1<? super OperativeEventErrorDataKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        OperativeEventErrorDataKt.Dsl.Companion companion = OperativeEventErrorDataKt.Dsl.Companion;
        OperativeEventRequestOuterClass.OperativeEventErrorData.Builder newBuilder = OperativeEventRequestOuterClass.OperativeEventErrorData.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        OperativeEventErrorDataKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final OperativeEventRequestOuterClass.OperativeEventErrorData copy(@NotNull OperativeEventRequestOuterClass.OperativeEventErrorData operativeEventErrorData, @NotNull Function1<? super OperativeEventErrorDataKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(operativeEventErrorData, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        OperativeEventErrorDataKt.Dsl.Companion companion = OperativeEventErrorDataKt.Dsl.Companion;
        OperativeEventRequestOuterClass.OperativeEventErrorData.Builder builder = operativeEventErrorData.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        OperativeEventErrorDataKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
