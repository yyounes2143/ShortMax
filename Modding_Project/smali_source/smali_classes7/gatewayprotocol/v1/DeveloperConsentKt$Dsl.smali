.class public final Lgatewayprotocol/v1/DeveloperConsentKt$Dsl;
.super Ljava/lang/Object;
.source "DeveloperConsentKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/DeveloperConsentKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/DeveloperConsentKt$Dsl$Companion;,
        Lgatewayprotocol/v1/DeveloperConsentKt$Dsl$OptionsProxy;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/DeveloperConsentKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/DeveloperConsentKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/DeveloperConsentKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/DeveloperConsentKt$Dsl;->Companion:Lgatewayprotocol/v1/DeveloperConsentKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/DeveloperConsentKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DeveloperConsentKt$Dsl;-><init>(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;

    .line 13
    .line 14
    return-object v0
.end method

.method public final synthetic addAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "values"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lgatewayprotocol/v1/DeveloperConsentKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->addAllOptions(Ljava/lang/Iterable;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final synthetic addOptions(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "value"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lgatewayprotocol/v1/DeveloperConsentKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->addOptions(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final synthetic clearOptions(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lgatewayprotocol/v1/DeveloperConsentKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;

    .line 7
    .line 8
    invoke-virtual {p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->clearOptions()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final synthetic getOptions()Lcom/google/protobuf/kotlin/DslList;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 2
    .line 3
    iget-object v1, p0, Lgatewayprotocol/v1/DeveloperConsentKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;

    .line 4
    .line 5
    invoke-virtual {v1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->getOptionsList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "_builder.getOptionsList()"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final synthetic plusAssignAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
            "Lgatewayprotocol/v1/DeveloperConsentKt$Dsl$OptionsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "values"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/DeveloperConsentKt$Dsl;->addAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final synthetic plusAssignOptions(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
            "Lgatewayprotocol/v1/DeveloperConsentKt$Dsl$OptionsProxy;",
            ">;",
            "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/DeveloperConsentKt$Dsl;->addOptions(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final synthetic setOptions(Lcom/google/protobuf/kotlin/DslList;ILgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "value"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lgatewayprotocol/v1/DeveloperConsentKt$Dsl;->_builder:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->setOptions(ILgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method
