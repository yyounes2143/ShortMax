package gatewayprotocol.v1;

import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.PlacementKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlacementKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPlacementKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlacementKt.kt\ngatewayprotocol/v1/PlacementKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"})
/* loaded from: classes7.dex */
public final class PlacementKtKt {
    @NotNull
    /* renamed from: -initializeplacement  reason: not valid java name */
    public static final InitializationResponseOuterClass.Placement m4893initializeplacement(@NotNull Function1<? super PlacementKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        PlacementKt.Dsl.Companion companion = PlacementKt.Dsl.Companion;
        InitializationResponseOuterClass.Placement.Builder newBuilder = InitializationResponseOuterClass.Placement.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        PlacementKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final InitializationResponseOuterClass.Placement copy(@NotNull InitializationResponseOuterClass.Placement placement, @NotNull Function1<? super PlacementKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(placement, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        PlacementKt.Dsl.Companion companion = PlacementKt.Dsl.Companion;
        InitializationResponseOuterClass.Placement.Builder builder = placement.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        PlacementKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
