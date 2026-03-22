package gatewayprotocol.v1;

import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.DiagnosticTagKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DiagnosticTagKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiagnosticTagKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiagnosticTagKt.kt\ngatewayprotocol/v1/DiagnosticTagKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,225:1\n1#2:226\n*E\n"})
/* loaded from: classes7.dex */
public final class DiagnosticTagKtKt {
    @NotNull
    /* renamed from: -initializediagnosticTag  reason: not valid java name */
    public static final DiagnosticEventRequestOuterClass.DiagnosticTag m4872initializediagnosticTag(@NotNull Function1<? super DiagnosticTagKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        DiagnosticTagKt.Dsl.Companion companion = DiagnosticTagKt.Dsl.Companion;
        DiagnosticEventRequestOuterClass.DiagnosticTag.Builder newBuilder = DiagnosticEventRequestOuterClass.DiagnosticTag.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        DiagnosticTagKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final DiagnosticEventRequestOuterClass.DiagnosticTag copy(@NotNull DiagnosticEventRequestOuterClass.DiagnosticTag diagnosticTag, @NotNull Function1<? super DiagnosticTagKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(diagnosticTag, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        DiagnosticTagKt.Dsl.Companion companion = DiagnosticTagKt.Dsl.Companion;
        DiagnosticEventRequestOuterClass.DiagnosticTag.Builder builder = diagnosticTag.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        DiagnosticTagKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
