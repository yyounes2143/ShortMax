package gatewayprotocol.v1;

import gatewayprotocol.v1.DeveloperConsentOptionKt;
import gatewayprotocol.v1.DeveloperConsentOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DeveloperConsentOptionKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDeveloperConsentOptionKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeveloperConsentOptionKt.kt\ngatewayprotocol/v1/DeveloperConsentOptionKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,138:1\n1#2:139\n*E\n"})
/* loaded from: classes7.dex */
public final class DeveloperConsentOptionKtKt {
    @NotNull
    /* renamed from: -initializedeveloperConsentOption  reason: not valid java name */
    public static final DeveloperConsentOuterClass.DeveloperConsentOption m4868initializedeveloperConsentOption(@NotNull Function1<? super DeveloperConsentOptionKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        DeveloperConsentOptionKt.Dsl.Companion companion = DeveloperConsentOptionKt.Dsl.Companion;
        DeveloperConsentOuterClass.DeveloperConsentOption.Builder newBuilder = DeveloperConsentOuterClass.DeveloperConsentOption.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        DeveloperConsentOptionKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final DeveloperConsentOuterClass.DeveloperConsentOption copy(@NotNull DeveloperConsentOuterClass.DeveloperConsentOption developerConsentOption, @NotNull Function1<? super DeveloperConsentOptionKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(developerConsentOption, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        DeveloperConsentOptionKt.Dsl.Companion companion = DeveloperConsentOptionKt.Dsl.Companion;
        DeveloperConsentOuterClass.DeveloperConsentOption.Builder builder = developerConsentOption.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        DeveloperConsentOptionKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
