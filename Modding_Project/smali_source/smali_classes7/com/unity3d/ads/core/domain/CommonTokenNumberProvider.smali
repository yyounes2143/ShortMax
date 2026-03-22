.class public final Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider;
.super Ljava/lang/Object;
.source "CommonTokenNumberProvider.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/TokenNumberProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final number$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/data/repository/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sessionRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider$number$2;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider$number$2;-><init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider;->number$delegate:Lms/i;

    .line 19
    .line 20
    return-void
.end method

.method private final getNumber()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider;->number$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method


# virtual methods
.method public invoke()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
