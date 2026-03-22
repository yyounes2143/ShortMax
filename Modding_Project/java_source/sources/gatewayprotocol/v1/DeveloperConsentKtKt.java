package gatewayprotocol.v1;

import gatewayprotocol.v1.DeveloperConsentKt;
import gatewayprotocol.v1.DeveloperConsentOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DeveloperConsentKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDeveloperConsentKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeveloperConsentKt.kt\ngatewayprotocol/v1/DeveloperConsentKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,138:1\n1#2:139\n*E\n"})
/* loaded from: classes7.dex */
public final class DeveloperConsentKtKt {
    @NotNull
    /* renamed from: -initializedeveloperConsent  reason: not valid java name */
    public static final DeveloperConsentOuterClass.DeveloperConsent m4867initializedeveloperConsent(@NotNull Function1<? super DeveloperConsentKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        DeveloperConsentKt.Dsl.Companion companion = DeveloperConsentKt.Dsl.Companion;
        DeveloperConsentOuterClass.DeveloperConsent.Builder newBuilder = DeveloperConsentOuterClass.DeveloperConsent.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        DeveloperConsentKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final DeveloperConsentOuterClass.DeveloperConsent copy(@NotNull DeveloperConsentOuterClass.DeveloperConsent developerConsent, @NotNull Function1<? super DeveloperConsentKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(developerConsent, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        DeveloperConsentKt.Dsl.Companion companion = DeveloperConsentKt.Dsl.Companion;
        DeveloperConsentOuterClass.DeveloperConsent.Builder builder = developerConsent.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        DeveloperConsentKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
