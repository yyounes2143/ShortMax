package gatewayprotocol.v1;

import gatewayprotocol.v1.DynamicDeviceInfoKt;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.NetworkCapabilityTransportsOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DynamicDeviceInfoKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDynamicDeviceInfoKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicDeviceInfoKt.kt\ngatewayprotocol/v1/DynamicDeviceInfoKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1533:1\n1#2:1534\n*E\n"})
/* loaded from: classes7.dex */
public final class DynamicDeviceInfoKtKt {
    @NotNull
    /* renamed from: -initializedynamicDeviceInfo  reason: not valid java name */
    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo m4875initializedynamicDeviceInfo(@NotNull Function1<? super DynamicDeviceInfoKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        DynamicDeviceInfoKt.Dsl.Companion companion = DynamicDeviceInfoKt.Dsl.Companion;
        DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Builder newBuilder = DynamicDeviceInfoOuterClass.DynamicDeviceInfo.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        DynamicDeviceInfoKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo copy(@NotNull DynamicDeviceInfoOuterClass.DynamicDeviceInfo dynamicDeviceInfo, @NotNull Function1<? super DynamicDeviceInfoKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(dynamicDeviceInfo, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        DynamicDeviceInfoKt.Dsl.Companion companion = DynamicDeviceInfoKt.Dsl.Companion;
        DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Builder builder = dynamicDeviceInfo.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        DynamicDeviceInfoKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android getAndroidOrNull(@NotNull DynamicDeviceInfoOuterClass.DynamicDeviceInfoOrBuilder dynamicDeviceInfoOrBuilder) {
        Intrinsics.checkNotNullParameter(dynamicDeviceInfoOrBuilder, "<this>");
        if (dynamicDeviceInfoOrBuilder.hasAndroid()) {
            return dynamicDeviceInfoOrBuilder.getAndroid();
        }
        return null;
    }

    @Nullable
    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios getIosOrNull(@NotNull DynamicDeviceInfoOuterClass.DynamicDeviceInfoOrBuilder dynamicDeviceInfoOrBuilder) {
        Intrinsics.checkNotNullParameter(dynamicDeviceInfoOrBuilder, "<this>");
        if (dynamicDeviceInfoOrBuilder.hasIos()) {
            return dynamicDeviceInfoOrBuilder.getIos();
        }
        return null;
    }

    @Nullable
    public static final NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports getNetworkCapabilityTransportsOrNull(@NotNull DynamicDeviceInfoOuterClass.DynamicDeviceInfo.AndroidOrBuilder androidOrBuilder) {
        Intrinsics.checkNotNullParameter(androidOrBuilder, "<this>");
        if (androidOrBuilder.hasNetworkCapabilityTransports()) {
            return androidOrBuilder.getNetworkCapabilityTransports();
        }
        return null;
    }

    @NotNull
    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android copy(@NotNull DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android android2, @NotNull Function1<? super DynamicDeviceInfoKt.AndroidKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(android2, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        DynamicDeviceInfoKt.AndroidKt.Dsl.Companion companion = DynamicDeviceInfoKt.AndroidKt.Dsl.Companion;
        DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android.Builder builder = android2.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        DynamicDeviceInfoKt.AndroidKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios copy(@NotNull DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios ios, @NotNull Function1<? super DynamicDeviceInfoKt.IosKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(ios, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        DynamicDeviceInfoKt.IosKt.Dsl.Companion companion = DynamicDeviceInfoKt.IosKt.Dsl.Companion;
        DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios.Builder builder = ios.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        DynamicDeviceInfoKt.IosKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
