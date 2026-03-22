package gatewayprotocol.v1;

import gatewayprotocol.v1.StaticDeviceInfoKt;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StaticDeviceInfoKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStaticDeviceInfoKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StaticDeviceInfoKt.kt\ngatewayprotocol/v1/StaticDeviceInfoKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1343:1\n1#2:1344\n*E\n"})
/* loaded from: classes7.dex */
public final class StaticDeviceInfoKtKt {
    @NotNull
    /* renamed from: -initializestaticDeviceInfo  reason: not valid java name */
    public static final StaticDeviceInfoOuterClass.StaticDeviceInfo m4902initializestaticDeviceInfo(@NotNull Function1<? super StaticDeviceInfoKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StaticDeviceInfoKt.Dsl.Companion companion = StaticDeviceInfoKt.Dsl.Companion;
        StaticDeviceInfoOuterClass.StaticDeviceInfo.Builder newBuilder = StaticDeviceInfoOuterClass.StaticDeviceInfo.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        StaticDeviceInfoKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final StaticDeviceInfoOuterClass.StaticDeviceInfo copy(@NotNull StaticDeviceInfoOuterClass.StaticDeviceInfo staticDeviceInfo, @NotNull Function1<? super StaticDeviceInfoKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(staticDeviceInfo, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        StaticDeviceInfoKt.Dsl.Companion companion = StaticDeviceInfoKt.Dsl.Companion;
        StaticDeviceInfoOuterClass.StaticDeviceInfo.Builder builder = staticDeviceInfo.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        StaticDeviceInfoKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final StaticDeviceInfoOuterClass.StaticDeviceInfo.Android getAndroidOrNull(@NotNull StaticDeviceInfoOuterClass.StaticDeviceInfoOrBuilder staticDeviceInfoOrBuilder) {
        Intrinsics.checkNotNullParameter(staticDeviceInfoOrBuilder, "<this>");
        if (staticDeviceInfoOrBuilder.hasAndroid()) {
            return staticDeviceInfoOrBuilder.getAndroid();
        }
        return null;
    }

    @Nullable
    public static final StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios getIosOrNull(@NotNull StaticDeviceInfoOuterClass.StaticDeviceInfoOrBuilder staticDeviceInfoOrBuilder) {
        Intrinsics.checkNotNullParameter(staticDeviceInfoOrBuilder, "<this>");
        if (staticDeviceInfoOrBuilder.hasIos()) {
            return staticDeviceInfoOrBuilder.getIos();
        }
        return null;
    }

    @NotNull
    public static final StaticDeviceInfoOuterClass.StaticDeviceInfo.Android copy(@NotNull StaticDeviceInfoOuterClass.StaticDeviceInfo.Android android2, @NotNull Function1<? super StaticDeviceInfoKt.AndroidKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(android2, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        StaticDeviceInfoKt.AndroidKt.Dsl.Companion companion = StaticDeviceInfoKt.AndroidKt.Dsl.Companion;
        StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.Builder builder = android2.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        StaticDeviceInfoKt.AndroidKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios copy(@NotNull StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios ios, @NotNull Function1<? super StaticDeviceInfoKt.IosKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(ios, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        StaticDeviceInfoKt.IosKt.Dsl.Companion companion = StaticDeviceInfoKt.IosKt.Dsl.Companion;
        StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.Builder builder = ios.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        StaticDeviceInfoKt.IosKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
