.class public final Lcom/google/protobuf/ValueKt$Dsl;
.super Ljava/lang/Object;
.source "ValueKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ValueKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/ValueKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/ValueKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lcom/google/protobuf/Value$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/ValueKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/protobuf/ValueKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/protobuf/ValueKt$Dsl;->Companion:Lcom/google/protobuf/ValueKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Value$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Value$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/ValueKt$Dsl;-><init>(Lcom/google/protobuf/Value$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Value;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.build()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/google/protobuf/Value;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearBoolValue()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->clearBoolValue()Lcom/google/protobuf/Value$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearKind()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->clearKind()Lcom/google/protobuf/Value$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearListValue()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->clearListValue()Lcom/google/protobuf/Value$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearNullValue()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->clearNullValue()Lcom/google/protobuf/Value$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearNumberValue()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->clearNumberValue()Lcom/google/protobuf/Value$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearStringValue()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->clearStringValue()Lcom/google/protobuf/Value$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearStructValue()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->clearStructValue()Lcom/google/protobuf/Value$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getBoolValue()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->getBoolValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getKindCase()Lcom/google/protobuf/Value$KindCase;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->getKindCase()Lcom/google/protobuf/Value$KindCase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getKindCase()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getListValue()Lcom/google/protobuf/ListValue;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->getListValue()Lcom/google/protobuf/ListValue;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getListValue()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getNullValue()Lcom/google/protobuf/NullValue;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->getNullValue()Lcom/google/protobuf/NullValue;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getNullValue()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getNullValueValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->getNullValueValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getNumberValue()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->getNumberValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getStringValue()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->getStringValue()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getStringValue()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getStructValue()Lcom/google/protobuf/Struct;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->getStructValue()Lcom/google/protobuf/Struct;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getStructValue()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final hasBoolValue()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->hasBoolValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasListValue()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->hasListValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasNullValue()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->hasNullValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasNumberValue()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->hasNumberValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasStringValue()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->hasStringValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasStructValue()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->hasStructValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setBoolValue(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Value$Builder;->setBoolValue(Z)Lcom/google/protobuf/Value$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setListValue(Lcom/google/protobuf/ListValue;)V
    .locals 1
    .param p1    # Lcom/google/protobuf/ListValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Value$Builder;->setListValue(Lcom/google/protobuf/ListValue;)Lcom/google/protobuf/Value$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setNullValue(Lcom/google/protobuf/NullValue;)V
    .locals 1
    .param p1    # Lcom/google/protobuf/NullValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Value$Builder;->setNullValue(Lcom/google/protobuf/NullValue;)Lcom/google/protobuf/Value$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setNullValueValue(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Value$Builder;->setNullValueValue(I)Lcom/google/protobuf/Value$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setNumberValue(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/Value$Builder;->setNumberValue(D)Lcom/google/protobuf/Value$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setStringValue(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/protobuf/Value$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setStructValue(Lcom/google/protobuf/Struct;)V
    .locals 1
    .param p1    # Lcom/google/protobuf/Struct;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Value$Builder;->setStructValue(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Value$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method
