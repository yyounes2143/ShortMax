package gatewayprotocol.v1;

import gatewayprotocol.v1.AdPlayerConfigRequestKt;
import gatewayprotocol.v1.AdPlayerConfigRequestOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdPlayerConfigRequestKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAdPlayerConfigRequestKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdPlayerConfigRequestKt.kt\ngatewayprotocol/v1/AdPlayerConfigRequestKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,190:1\n1#2:191\n*E\n"})
/* loaded from: classes7.dex */
public final class AdPlayerConfigRequestKtKt {
    @NotNull
    /* renamed from: -initializeadPlayerConfigRequest  reason: not valid java name */
    public static final AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest m4857initializeadPlayerConfigRequest(@NotNull Function1<? super AdPlayerConfigRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AdPlayerConfigRequestKt.Dsl.Companion companion = AdPlayerConfigRequestKt.Dsl.Companion;
        AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest.Builder newBuilder = AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        AdPlayerConfigRequestKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest copy(@NotNull AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest adPlayerConfigRequest, @NotNull Function1<? super AdPlayerConfigRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(adPlayerConfigRequest, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        AdPlayerConfigRequestKt.Dsl.Companion companion = AdPlayerConfigRequestKt.Dsl.Companion;
        AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest.Builder builder = adPlayerConfigRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        AdPlayerConfigRequestKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
