.class public final Lkk/f$c;
.super Lu3/b;
.source "FrescoUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkk/f;->u(Ljava/util/List;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFrescoUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrescoUtil.kt\ncom/startshorts/androidplayer/utils/fresco/FrescoUtil$prefetchToBitmapCache$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,408:1\n1#2:409\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkk/f$c;->a:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lkk/f$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    iput-object p3, p0, Lkk/f$c;->c:Ljava/util/List;

    .line 6
    .line 7
    iput-object p4, p0, Lkk/f$c;->d:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p0}, Lu3/b;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method protected e(Lcom/facebook/datasource/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "dataSource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "prefetchToBitmapCache failed -> "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    sget-object v2, Lkk/f;->a:Lkk/f;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Lkk/f;->l(Lcom/facebook/datasource/b;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v1, "FrescoUtil"

    .line 32
    .line 33
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lkk/f$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget-object v0, p0, Lkk/f$c;->c:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-ne p1, v0, :cond_0

    .line 50
    .line 51
    iget-object p1, p0, Lkk/f$c;->d:Lkotlin/jvm/functions/Function1;

    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lkk/f$c;->a:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method protected g(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkk/f$c;->a:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0

    .line 12
    throw p1

    .line 13
    :cond_0
    :goto_0
    monitor-exit v0

    .line 14
    iget-object p1, p0, Lkk/f$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object v0, p0, Lkk/f$c;->c:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lkk/f$c;->d:Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lkk/f$c;->a:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method
