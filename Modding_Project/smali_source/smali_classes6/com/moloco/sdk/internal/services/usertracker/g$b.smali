.class public final Lcom/moloco/sdk/internal/services/usertracker/g$b;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/services/usertracker/g;->c(Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.services.usertracker.UserTrackerServiceImpl"
    f = "UserTrackerService.kt"
    l = {
        0x30,
        0x21,
        0x24
    }
    m = "getIdentifier"
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lcom/moloco/sdk/internal/services/usertracker/g;

.field public l:I


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/services/usertracker/g;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/services/usertracker/g;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/services/usertracker/g$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->k:Lcom/moloco/sdk/internal/services/usertracker/g;

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
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->j:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->l:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->l:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->k:Lcom/moloco/sdk/internal/services/usertracker/g;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/moloco/sdk/internal/services/usertracker/g;->c(Lrs/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
