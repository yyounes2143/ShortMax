package gatewayprotocol.v1;

import gatewayprotocol.v1.TestDataKt;
import gatewayprotocol.v1.TestDataOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: TestDataKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTestDataKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestDataKt.kt\ngatewayprotocol/v1/TestDataKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,157:1\n1#2:158\n*E\n"})
/* loaded from: classes7.dex */
public final class TestDataKtKt {
    @NotNull
    /* renamed from: -initializetestData  reason: not valid java name */
    public static final TestDataOuterClass.TestData m4903initializetestData(@NotNull Function1<? super TestDataKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        TestDataKt.Dsl.Companion companion = TestDataKt.Dsl.Companion;
        TestDataOuterClass.TestData.Builder newBuilder = TestDataOuterClass.TestData.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        TestDataKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final TestDataOuterClass.TestData copy(@NotNull TestDataOuterClass.TestData testData, @NotNull Function1<? super TestDataKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(testData, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        TestDataKt.Dsl.Companion companion = TestDataKt.Dsl.Companion;
        TestDataOuterClass.TestData.Builder builder = testData.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        TestDataKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
