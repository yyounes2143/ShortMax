package gatewayprotocol.v1;

import gatewayprotocol.v1.PrivacyUpdateResponseKt;
import gatewayprotocol.v1.PrivacyUpdateResponseOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrivacyUpdateResponseKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPrivacyUpdateResponseKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyUpdateResponseKt.kt\ngatewayprotocol/v1/PrivacyUpdateResponseKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"})
/* loaded from: classes7.dex */
public final class PrivacyUpdateResponseKtKt {
    @NotNull
    /* renamed from: -initializeprivacyUpdateResponse  reason: not valid java name */
    public static final PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse m4895initializeprivacyUpdateResponse(@NotNull Function1<? super PrivacyUpdateResponseKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        PrivacyUpdateResponseKt.Dsl.Companion companion = PrivacyUpdateResponseKt.Dsl.Companion;
        PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse.Builder newBuilder = PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        PrivacyUpdateResponseKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse copy(@NotNull PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse privacyUpdateResponse, @NotNull Function1<? super PrivacyUpdateResponseKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(privacyUpdateResponse, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        PrivacyUpdateResponseKt.Dsl.Companion companion = PrivacyUpdateResponseKt.Dsl.Companion;
        PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse.Builder builder = privacyUpdateResponse.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        PrivacyUpdateResponseKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
