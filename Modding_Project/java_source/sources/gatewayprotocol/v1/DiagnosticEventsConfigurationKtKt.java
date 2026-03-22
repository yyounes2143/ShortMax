package gatewayprotocol.v1;

import gatewayprotocol.v1.DiagnosticEventsConfigurationKt;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DiagnosticEventsConfigurationKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiagnosticEventsConfigurationKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiagnosticEventsConfigurationKt.kt\ngatewayprotocol/v1/DiagnosticEventsConfigurationKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,360:1\n1#2:361\n*E\n"})
/* loaded from: classes7.dex */
public final class DiagnosticEventsConfigurationKtKt {
    @NotNull
    /* renamed from: -initializediagnosticEventsConfiguration  reason: not valid java name */
    public static final NativeConfigurationOuterClass.DiagnosticEventsConfiguration m4871initializediagnosticEventsConfiguration(@NotNull Function1<? super DiagnosticEventsConfigurationKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        DiagnosticEventsConfigurationKt.Dsl.Companion companion = DiagnosticEventsConfigurationKt.Dsl.Companion;
        NativeConfigurationOuterClass.DiagnosticEventsConfiguration.Builder newBuilder = NativeConfigurationOuterClass.DiagnosticEventsConfiguration.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        DiagnosticEventsConfigurationKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final NativeConfigurationOuterClass.DiagnosticEventsConfiguration copy(@NotNull NativeConfigurationOuterClass.DiagnosticEventsConfiguration diagnosticEventsConfiguration, @NotNull Function1<? super DiagnosticEventsConfigurationKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(diagnosticEventsConfiguration, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        DiagnosticEventsConfigurationKt.Dsl.Companion companion = DiagnosticEventsConfigurationKt.Dsl.Companion;
        NativeConfigurationOuterClass.DiagnosticEventsConfiguration.Builder builder = diagnosticEventsConfiguration.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        DiagnosticEventsConfigurationKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
