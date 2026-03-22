package gatewayprotocol.v1;

import gatewayprotocol.v1.PrivacyUpdateRequestKt;
import gatewayprotocol.v1.PrivacyUpdateRequestOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrivacyUpdateRequestKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPrivacyUpdateRequestKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyUpdateRequestKt.kt\ngatewayprotocol/v1/PrivacyUpdateRequestKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"})
/* loaded from: classes7.dex */
public final class PrivacyUpdateRequestKtKt {
    @NotNull
    /* renamed from: -initializeprivacyUpdateRequest  reason: not valid java name */
    public static final PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest m4894initializeprivacyUpdateRequest(@NotNull Function1<? super PrivacyUpdateRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        PrivacyUpdateRequestKt.Dsl.Companion companion = PrivacyUpdateRequestKt.Dsl.Companion;
        PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest.Builder newBuilder = PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        PrivacyUpdateRequestKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest copy(@NotNull PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest privacyUpdateRequest, @NotNull Function1<? super PrivacyUpdateRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(privacyUpdateRequest, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        PrivacyUpdateRequestKt.Dsl.Companion companion = PrivacyUpdateRequestKt.Dsl.Companion;
        PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest.Builder builder = privacyUpdateRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        PrivacyUpdateRequestKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
