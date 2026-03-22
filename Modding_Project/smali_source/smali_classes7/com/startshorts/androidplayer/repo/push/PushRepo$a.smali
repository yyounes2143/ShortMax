.class final Lcom/startshorts/androidplayer/repo/push/PushRepo$a;
.super Ljava/lang/Object;
.source "PushRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/push/PushRepo;->l(Ljava/util/List;IIIZLrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lgt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/i<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lgt/i;IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/i<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$a;->a:Lgt/i;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$a;->b:I

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$a;->c:I

    .line 6
    .line 7
    iput p4, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$a;->d:I

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$a;->e:Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$a;->a:Lgt/i;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p1, v0}, Ljk/e;->a(Lgt/i;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v0, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$a;->b:I

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$a;->a:Lgt/i;

    .line 25
    .line 26
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v0, p1}, Ljk/e;->a(Lgt/i;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$a;->a:Lgt/i;

    .line 35
    .line 36
    sget-object v2, Lfk/f;->a:Lfk/f;

    .line 37
    .line 38
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    move-object v3, p1

    .line 43
    check-cast v3, Landroid/graphics/Bitmap;

    .line 44
    .line 45
    iget v4, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$a;->b:I

    .line 46
    .line 47
    iget v5, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$a;->c:I

    .line 48
    .line 49
    iget v6, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$a;->d:I

    .line 50
    .line 51
    iget-boolean v7, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$a;->e:Z

    .line 52
    .line 53
    invoke-virtual/range {v2 .. v7}, Lfk/f;->b(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v0, p1}, Ljk/e;->a(Lgt/i;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/push/PushRepo$a;->a(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method
