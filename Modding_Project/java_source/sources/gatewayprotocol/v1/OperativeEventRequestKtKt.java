package gatewayprotocol.v1;

import gatewayprotocol.v1.CampaignStateOuterClass;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.OperativeEventRequestKt;
import gatewayprotocol.v1.OperativeEventRequestOuterClass;
import gatewayprotocol.v1.SessionCountersOuterClass;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OperativeEventRequestKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOperativeEventRequestKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperativeEventRequestKt.kt\ngatewayprotocol/v1/OperativeEventRequestKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,398:1\n1#2:399\n*E\n"})
/* loaded from: classes7.dex */
public final class OperativeEventRequestKtKt {
    @NotNull
    /* renamed from: -initializeoperativeEventRequest  reason: not valid java name */
    public static final OperativeEventRequestOuterClass.OperativeEventRequest m4891initializeoperativeEventRequest(@NotNull Function1<? super OperativeEventRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        OperativeEventRequestKt.Dsl.Companion companion = OperativeEventRequestKt.Dsl.Companion;
        OperativeEventRequestOuterClass.OperativeEventRequest.Builder newBuilder = OperativeEventRequestOuterClass.OperativeEventRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        OperativeEventRequestKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final OperativeEventRequestOuterClass.OperativeEventRequest copy(@NotNull OperativeEventRequestOuterClass.OperativeEventRequest operativeEventRequest, @NotNull Function1<? super OperativeEventRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(operativeEventRequest, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        OperativeEventRequestKt.Dsl.Companion companion = OperativeEventRequestKt.Dsl.Companion;
        OperativeEventRequestOuterClass.OperativeEventRequest.Builder builder = operativeEventRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        OperativeEventRequestKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final CampaignStateOuterClass.CampaignState getCampaignStateOrNull(@NotNull OperativeEventRequestOuterClass.OperativeEventRequestOrBuilder operativeEventRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(operativeEventRequestOrBuilder, "<this>");
        if (operativeEventRequestOrBuilder.hasCampaignState()) {
            return operativeEventRequestOrBuilder.getCampaignState();
        }
        return null;
    }

    @Nullable
    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfoOrNull(@NotNull OperativeEventRequestOuterClass.OperativeEventRequestOrBuilder operativeEventRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(operativeEventRequestOrBuilder, "<this>");
        if (operativeEventRequestOrBuilder.hasDynamicDeviceInfo()) {
            return operativeEventRequestOrBuilder.getDynamicDeviceInfo();
        }
        return null;
    }

    @Nullable
    public static final SessionCountersOuterClass.SessionCounters getSessionCountersOrNull(@NotNull OperativeEventRequestOuterClass.OperativeEventRequestOrBuilder operativeEventRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(operativeEventRequestOrBuilder, "<this>");
        if (operativeEventRequestOrBuilder.hasSessionCounters()) {
            return operativeEventRequestOrBuilder.getSessionCounters();
        }
        return null;
    }

    @Nullable
    public static final StaticDeviceInfoOuterClass.StaticDeviceInfo getStaticDeviceInfoOrNull(@NotNull OperativeEventRequestOuterClass.OperativeEventRequestOrBuilder operativeEventRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(operativeEventRequestOrBuilder, "<this>");
        if (operativeEventRequestOrBuilder.hasStaticDeviceInfo()) {
            return operativeEventRequestOrBuilder.getStaticDeviceInfo();
        }
        return null;
    }
}
