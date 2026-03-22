.class public final Lcom/moloco/sdk/internal/services/events/a$b;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/services/events/a;->a(JLcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.services.events.CustomUserEventBuilderServiceImpl"
    f = "CustomUserEventBuilderServiceImpl.kt"
    l = {
        0x34
    }
    m = "userAdInteractionExtAsQueryParameter"
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lcom/moloco/sdk/internal/services/events/a;

.field public k:I


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/services/events/a;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/services/events/a;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/services/events/a$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/events/a$b;->j:Lcom/moloco/sdk/internal/services/events/a;

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
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/events/a$b;->i:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/moloco/sdk/internal/services/events/a$b;->k:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/moloco/sdk/internal/services/events/a$b;->k:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/events/a$b;->j:Lcom/moloco/sdk/internal/services/events/a;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    move-object v5, p0

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/moloco/sdk/internal/services/events/a;->a(JLcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
