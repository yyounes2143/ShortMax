.class public final Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/nativead/parser/c;->b(Landroid/content/Context;Ljava/util/List;JLrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.publisher.nativead.parser.PrepareNativeAssetsKt"
    f = "PrepareNativeAssets.kt"
    l = {
        0x25,
        0x3a
    }
    m = "prepareNativeAssets-exY8QGI"
.end annotation


# instance fields
.field public h:J

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public synthetic k:Ljava/lang/Object;

.field public l:I


# direct methods
.method public constructor <init>(Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lrs/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;->k:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;->l:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;->l:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    invoke-static {p1, p1, v0, v1, p0}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c;->b(Landroid/content/Context;Ljava/util/List;JLrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
