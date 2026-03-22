package gatewayprotocol.v1;

import gatewayprotocol.v1.GetTokenEventRequestKt;
import gatewayprotocol.v1.GetTokenEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: GetTokenEventRequestKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nGetTokenEventRequestKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetTokenEventRequestKt.kt\ngatewayprotocol/v1/GetTokenEventRequestKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,171:1\n1#2:172\n*E\n"})
/* loaded from: classes7.dex */
public final class GetTokenEventRequestKtKt {
    @NotNull
    /* renamed from: -initializegetTokenEventRequest  reason: not valid java name */
    public static final GetTokenEventRequestOuterClass.GetTokenEventRequest m4878initializegetTokenEventRequest(@NotNull Function1<? super GetTokenEventRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        GetTokenEventRequestKt.Dsl.Companion companion = GetTokenEventRequestKt.Dsl.Companion;
        GetTokenEventRequestOuterClass.GetTokenEventRequest.Builder newBuilder = GetTokenEventRequestOuterClass.GetTokenEventRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        GetTokenEventRequestKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final GetTokenEventRequestOuterClass.GetTokenEventRequest copy(@NotNull GetTokenEventRequestOuterClass.GetTokenEventRequest getTokenEventRequest, @NotNull Function1<? super GetTokenEventRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(getTokenEventRequest, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        GetTokenEventRequestKt.Dsl.Companion companion = GetTokenEventRequestKt.Dsl.Companion;
        GetTokenEventRequestOuterClass.GetTokenEventRequest.Builder builder = getTokenEventRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        GetTokenEventRequestKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
