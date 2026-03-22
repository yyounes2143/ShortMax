.class final Lcom/applovin/shadow/okio/internal/-FileSystem$collectRecursively$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "FileSystem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/shadow/okio/internal/-FileSystem;->collectRecursively(Lkotlin/sequences/i;Lcom/applovin/shadow/okio/FileSystem;Lkotlin/collections/m;Lcom/applovin/shadow/okio/Path;ZZLrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.applovin.shadow.okio.internal.-FileSystem"
    f = "FileSystem.kt"
    l = {
        0x74,
        0x87,
        0x91
    }
    m = "collectRecursively"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field Z$0:Z

.field Z$1:Z

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/applovin/shadow/okio/internal/-FileSystem$collectRecursively$1;",
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
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okio/internal/-FileSystem$collectRecursively$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/applovin/shadow/okio/internal/-FileSystem$collectRecursively$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/applovin/shadow/okio/internal/-FileSystem$collectRecursively$1;->label:I

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    move-object v6, p0

    .line 17
    invoke-static/range {v0 .. v6}, Lcom/applovin/shadow/okio/internal/-FileSystem;->collectRecursively(Lkotlin/sequences/i;Lcom/applovin/shadow/okio/FileSystem;Lkotlin/collections/m;Lcom/applovin/shadow/okio/Path;ZZLrs/c;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
