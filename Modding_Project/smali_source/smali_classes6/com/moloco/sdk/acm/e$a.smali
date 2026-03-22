.class public final Lcom/moloco/sdk/acm/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/acm/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/acm/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "eventName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/moloco/sdk/acm/services/d;

    .line 7
    .line 8
    new-instance v1, Lcom/moloco/sdk/acm/services/g;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/moloco/sdk/acm/services/g;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/moloco/sdk/acm/services/d;-><init>(Lcom/moloco/sdk/acm/services/f;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/moloco/sdk/acm/e;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, p1, v0, v2}, Lcom/moloco/sdk/acm/e;-><init>(Ljava/lang/String;Lcom/moloco/sdk/acm/services/d;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method
