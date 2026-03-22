.class public final Lcom/google/protobuf/EnumValueKt$Dsl;
.super Ljava/lang/Object;
.source "EnumValueKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/EnumValueKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/EnumValueKt$Dsl$Companion;,
        Lcom/google/protobuf/EnumValueKt$Dsl$OptionsProxy;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/EnumValueKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lcom/google/protobuf/EnumValue$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/EnumValueKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/protobuf/EnumValueKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/protobuf/EnumValueKt$Dsl;->Companion:Lcom/google/protobuf/EnumValueKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/EnumValue$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/EnumValue$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/EnumValueKt$Dsl;-><init>(Lcom/google/protobuf/EnumValue$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/EnumValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

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
    check-cast v0, Lcom/google/protobuf/EnumValue;

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
    iget-object p1, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/google/protobuf/EnumValue$Builder;->addAllOptions(Ljava/lang/Iterable;)Lcom/google/protobuf/EnumValue$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final synthetic addOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V
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
    iget-object p1, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/google/protobuf/EnumValue$Builder;->addOptions(Lcom/google/protobuf/Option;)Lcom/google/protobuf/EnumValue$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final clearName()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/EnumValue$Builder;->clearName()Lcom/google/protobuf/EnumValue$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearNumber()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/EnumValue$Builder;->clearNumber()Lcom/google/protobuf/EnumValue$Builder;

    .line 4
    .line 5
    .line 6
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
    iget-object p1, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/protobuf/EnumValue$Builder;->clearOptions()Lcom/google/protobuf/EnumValue$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/EnumValue$Builder;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getName()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/EnumValue$Builder;->getNumber()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final synthetic getOptions()Lcom/google/protobuf/kotlin/DslList;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/protobuf/EnumValue$Builder;->getOptionsList()Ljava/util/List;

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
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/EnumValueKt$Dsl$OptionsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/Option;",
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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/EnumValueKt$Dsl;->addAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final synthetic plusAssignOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/EnumValueKt$Dsl$OptionsProxy;",
            ">;",
            "Lcom/google/protobuf/Option;",
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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/EnumValueKt$Dsl;->addOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/protobuf/EnumValue$Builder;->setName(Ljava/lang/String;)Lcom/google/protobuf/EnumValue$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setNumber(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/EnumValue$Builder;->setNumber(I)Lcom/google/protobuf/EnumValue$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic setOptions(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/Option;)V
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
    iget-object p1, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/EnumValue$Builder;->setOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/EnumValue$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method
