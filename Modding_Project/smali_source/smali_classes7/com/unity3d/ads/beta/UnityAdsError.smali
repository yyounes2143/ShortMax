.class public final Lcom/unity3d/ads/beta/UnityAdsError;
.super Ljava/lang/Object;
.source "UnityAdsError.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/unity3d/ads/beta/UnityAdsError;->code:I

    .line 10
    .line 11
    iput-object p2, p0, Lcom/unity3d/ads/beta/UnityAdsError;->message:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/unity3d/ads/beta/UnityAdsError;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/beta/UnityAdsError;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
