package gatewayprotocol.v1;

import gatewayprotocol.v1.DiagnosticEventRequestKt;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DiagnosticEventRequestKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiagnosticEventRequestKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiagnosticEventRequestKt.kt\ngatewayprotocol/v1/DiagnosticEventRequestKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n1#2:134\n*E\n"})
/* loaded from: classes7.dex */
public final class DiagnosticEventRequestKtKt {
    @NotNull
    /* renamed from: -initializediagnosticEventRequest  reason: not valid java name */
    public static final DiagnosticEventRequestOuterClass.DiagnosticEventRequest m4870initializediagnosticEventRequest(@NotNull Function1<? super DiagnosticEventRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        DiagnosticEventRequestKt.Dsl.Companion companion = DiagnosticEventRequestKt.Dsl.Companion;
        DiagnosticEventRequestOuterClass.DiagnosticEventRequest.Builder newBuilder = DiagnosticEventRequestOuterClass.DiagnosticEventRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        DiagnosticEventRequestKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final DiagnosticEventRequestOuterClass.DiagnosticEventRequest copy(@NotNull DiagnosticEventRequestOuterClass.DiagnosticEventRequest diagnosticEventRequest, @NotNull Function1<? super DiagnosticEventRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(diagnosticEventRequest, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        DiagnosticEventRequestKt.Dsl.Companion companion = DiagnosticEventRequestKt.Dsl.Companion;
        DiagnosticEventRequestOuterClass.DiagnosticEventRequest.Builder builder = diagnosticEventRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        DiagnosticEventRequestKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
