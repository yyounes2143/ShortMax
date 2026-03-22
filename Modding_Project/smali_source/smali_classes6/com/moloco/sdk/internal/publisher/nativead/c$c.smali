.class public final Lcom/moloco/sdk/internal/publisher/nativead/c$c;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/nativead/c;->g(Lcom/moloco/sdk/internal/publisher/nativead/model/a;JLrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.publisher.nativead.NativeAdLoader"
    f = "NativeAdLoader.kt"
    l = {
        0xfb
    }
    m = "fetchAssets-8Mi8wO0"
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic l:Lcom/moloco/sdk/internal/publisher/nativead/c;

.field public m:I


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/publisher/nativead/c;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/nativead/c;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/publisher/nativead/c$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$c;->l:Lcom/moloco/sdk/internal/publisher/nativead/c;

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
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$c;->k:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$c;->m:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$c;->m:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$c;->l:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    invoke-static {p1, v0, v1, v2, p0}, Lcom/moloco/sdk/internal/publisher/nativead/c;->c(Lcom/moloco/sdk/internal/publisher/nativead/c;Lcom/moloco/sdk/internal/publisher/nativead/model/a;JLrs/c;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
