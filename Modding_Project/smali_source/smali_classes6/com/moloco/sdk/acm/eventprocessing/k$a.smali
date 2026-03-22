.class public final Lcom/moloco/sdk/acm/eventprocessing/k$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/acm/eventprocessing/k;->a(Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.acm.eventprocessing.RequestAndPurgeDBImpl"
    f = "RequestAndPurgeDB.kt"
    l = {
        0x26,
        0x30
    }
    m = "invoke-IoAF18A"
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lcom/moloco/sdk/acm/eventprocessing/k;

.field public k:I


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/acm/eventprocessing/k;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/acm/eventprocessing/k;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/acm/eventprocessing/k$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/acm/eventprocessing/k$a;->j:Lcom/moloco/sdk/acm/eventprocessing/k;

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
    iput-object p1, p0, Lcom/moloco/sdk/acm/eventprocessing/k$a;->i:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/moloco/sdk/acm/eventprocessing/k$a;->k:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/moloco/sdk/acm/eventprocessing/k$a;->k:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/moloco/sdk/acm/eventprocessing/k$a;->j:Lcom/moloco/sdk/acm/eventprocessing/k;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/moloco/sdk/acm/eventprocessing/k;->a(Lrs/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method
