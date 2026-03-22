package gatewayprotocol.v1;

import gatewayprotocol.v1.PiiKt;
import gatewayprotocol.v1.PiiOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: PiiKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPiiKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PiiKt.kt\ngatewayprotocol/v1/PiiKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,149:1\n1#2:150\n*E\n"})
/* loaded from: classes7.dex */
public final class PiiKtKt {
    @NotNull
    /* renamed from: -initializepii  reason: not valid java name */
    public static final PiiOuterClass.Pii m4892initializepii(@NotNull Function1<? super PiiKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        PiiKt.Dsl.Companion companion = PiiKt.Dsl.Companion;
        PiiOuterClass.Pii.Builder newBuilder = PiiOuterClass.Pii.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        PiiKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final PiiOuterClass.Pii copy(@NotNull PiiOuterClass.Pii pii, @NotNull Function1<? super PiiKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(pii, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        PiiKt.Dsl.Companion companion = PiiKt.Dsl.Companion;
        PiiOuterClass.Pii.Builder builder = pii.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        PiiKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
