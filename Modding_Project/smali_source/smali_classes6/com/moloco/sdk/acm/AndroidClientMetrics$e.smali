.class public final Lcom/moloco/sdk/acm/AndroidClientMetrics$e;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/acm/AndroidClientMetrics;->x(Lcom/moloco/sdk/acm/g;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.acm.AndroidClientMetrics"
    f = "AndroidClientMetrics.kt"
    l = {
        0x102,
        0xa4
    }
    m = "updateConfig"
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lcom/moloco/sdk/acm/AndroidClientMetrics;

.field public l:I


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/acm/AndroidClientMetrics;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/acm/AndroidClientMetrics;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/acm/AndroidClientMetrics$e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/acm/AndroidClientMetrics$e;->k:Lcom/moloco/sdk/acm/AndroidClientMetrics;

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
    iput-object p1, p0, Lcom/moloco/sdk/acm/AndroidClientMetrics$e;->j:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/moloco/sdk/acm/AndroidClientMetrics$e;->l:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/moloco/sdk/acm/AndroidClientMetrics$e;->l:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/moloco/sdk/acm/AndroidClientMetrics$e;->k:Lcom/moloco/sdk/acm/AndroidClientMetrics;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->x(Lcom/moloco/sdk/acm/g;Lrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
