.class final Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AndroidGetClientInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;->invoke(Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.ads.core.domain.AndroidGetClientInfo"
    f = "AndroidGetClientInfo.kt"
    l = {
        0x28,
        0x2b
    }
    m = "invoke"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;->invoke(Lrs/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
