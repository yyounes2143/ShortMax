.class public final Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;
.super Ljava/lang/Object;
.source "DeveloperConsentOptionKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/DeveloperConsentOptionKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;->Companion:Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;-><init>(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearCustomType()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;->clearCustomType()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearType()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;->clearType()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearValue()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;->clearValue()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getCustomType()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;->getCustomType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getCustomType()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getType()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;->getType()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getType()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getTypeValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;->getTypeValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getValue()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;->getValue()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getValue()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getValueValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;->getValueValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasCustomType()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;->hasCustomType()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setCustomType(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;->setCustomType(Ljava/lang/String;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setType(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;
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
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;->setType(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setTypeValue(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;->setTypeValue(I)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setValue(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;
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
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;->setValue(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setValueValue(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOptionKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;->setValueValue(I)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method
