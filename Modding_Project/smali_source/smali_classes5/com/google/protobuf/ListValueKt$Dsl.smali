.class public final Lcom/google/protobuf/ListValueKt$Dsl;
.super Ljava/lang/Object;
.source "ListValueKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ListValueKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/ListValueKt$Dsl$Companion;,
        Lcom/google/protobuf/ListValueKt$Dsl$ValuesProxy;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/ListValueKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lcom/google/protobuf/ListValue$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/ListValueKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/protobuf/ListValueKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/protobuf/ListValueKt$Dsl;->Companion:Lcom/google/protobuf/ListValueKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/ListValue$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/ListValueKt$Dsl;->_builder:Lcom/google/protobuf/ListValue$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/ListValue$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/ListValueKt$Dsl;-><init>(Lcom/google/protobuf/ListValue$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/ListValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ListValueKt$Dsl;->_builder:Lcom/google/protobuf/ListValue$Builder;

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
    check-cast v0, Lcom/google/protobuf/ListValue;

    .line 13
    .line 14
    return-object v0
.end method

.method public final synthetic addAllValues(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
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
    iget-object p1, p0, Lcom/google/protobuf/ListValueKt$Dsl;->_builder:Lcom/google/protobuf/ListValue$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/google/protobuf/ListValue$Builder;->addAllValues(Ljava/lang/Iterable;)Lcom/google/protobuf/ListValue$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final synthetic addValues(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Value;)V
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
    iget-object p1, p0, Lcom/google/protobuf/ListValueKt$Dsl;->_builder:Lcom/google/protobuf/ListValue$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/google/protobuf/ListValue$Builder;->addValues(Lcom/google/protobuf/Value;)Lcom/google/protobuf/ListValue$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final synthetic clearValues(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/protobuf/ListValueKt$Dsl;->_builder:Lcom/google/protobuf/ListValue$Builder;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/protobuf/ListValue$Builder;->clearValues()Lcom/google/protobuf/ListValue$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final synthetic getValues()Lcom/google/protobuf/kotlin/DslList;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/protobuf/ListValueKt$Dsl;->_builder:Lcom/google/protobuf/ListValue$Builder;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/protobuf/ListValue$Builder;->getValuesList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "_builder.getValuesList()"

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

.method public final synthetic plusAssignAllValues(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Value;",
            "Lcom/google/protobuf/ListValueKt$Dsl$ValuesProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/Value;",
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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ListValueKt$Dsl;->addAllValues(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final synthetic plusAssignValues(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Value;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Value;",
            "Lcom/google/protobuf/ListValueKt$Dsl$ValuesProxy;",
            ">;",
            "Lcom/google/protobuf/Value;",
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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ListValueKt$Dsl;->addValues(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Value;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final synthetic setValues(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/Value;)V
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
    iget-object p1, p0, Lcom/google/protobuf/ListValueKt$Dsl;->_builder:Lcom/google/protobuf/ListValue$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/ListValue$Builder;->setValues(ILcom/google/protobuf/Value;)Lcom/google/protobuf/ListValue$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method
