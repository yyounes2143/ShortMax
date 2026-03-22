.class final Lcoil/intercept/EngineInterceptor$decode$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "EngineInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/intercept/EngineInterceptor;->h(Lg0/l;La0/b;Lm0/f;Ljava/lang/Object;Lm0/j;La0/c;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "coil.intercept.EngineInterceptor"
    f = "EngineInterceptor.kt"
    l = {
        0xc7
    }
    m = "decode"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:Ljava/lang/Object;

.field m:Ljava/lang/Object;

.field n:Ljava/lang/Object;

.field o:Ljava/lang/Object;

.field p:I

.field synthetic q:Ljava/lang/Object;

.field final synthetic r:Lcoil/intercept/EngineInterceptor;

.field s:I


# direct methods
.method constructor <init>(Lcoil/intercept/EngineInterceptor;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/intercept/EngineInterceptor;",
            "Lrs/c<",
            "-",
            "Lcoil/intercept/EngineInterceptor$decode$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/intercept/EngineInterceptor$decode$1;->r:Lcoil/intercept/EngineInterceptor;

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
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/intercept/EngineInterceptor$decode$1;->q:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcoil/intercept/EngineInterceptor$decode$1;->s:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcoil/intercept/EngineInterceptor$decode$1;->s:I

    .line 9
    .line 10
    iget-object v0, p0, Lcoil/intercept/EngineInterceptor$decode$1;->r:Lcoil/intercept/EngineInterceptor;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v7, p0

    .line 19
    invoke-static/range {v0 .. v7}, Lcoil/intercept/EngineInterceptor;->c(Lcoil/intercept/EngineInterceptor;Lg0/l;La0/b;Lm0/f;Ljava/lang/Object;Lm0/j;La0/c;Lrs/c;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method
