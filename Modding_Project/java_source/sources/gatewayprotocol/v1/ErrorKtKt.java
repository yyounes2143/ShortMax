package gatewayprotocol.v1;

import gatewayprotocol.v1.ErrorKt;
import gatewayprotocol.v1.ErrorOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ErrorKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nErrorKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ErrorKt.kt\ngatewayprotocol/v1/ErrorKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"})
/* loaded from: classes7.dex */
public final class ErrorKtKt {
    @NotNull
    /* renamed from: -initializeerror  reason: not valid java name */
    public static final ErrorOuterClass.Error m4876initializeerror(@NotNull Function1<? super ErrorKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        ErrorKt.Dsl.Companion companion = ErrorKt.Dsl.Companion;
        ErrorOuterClass.Error.Builder newBuilder = ErrorOuterClass.Error.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        ErrorKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final ErrorOuterClass.Error copy(@NotNull ErrorOuterClass.Error error, @NotNull Function1<? super ErrorKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(error, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        ErrorKt.Dsl.Companion companion = ErrorKt.Dsl.Companion;
        ErrorOuterClass.Error.Builder builder = error.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        ErrorKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
