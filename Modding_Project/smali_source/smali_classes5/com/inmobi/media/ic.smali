.class public final Lcom/inmobi/media/ic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/inmobi/media/ec;

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ec;J)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ec;

    .line 10
    .line 11
    iput-wide p2, p0, Lcom/inmobi/media/ic;->b:J

    .line 12
    .line 13
    return-void
.end method

.method public static final a(Lcom/inmobi/media/ic;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ec;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->g()V

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ec;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lub/n4;

    invoke-direct {v1, p0}, Lub/n4;-><init>(Lcom/inmobi/media/ic;)V

    .line 2
    iget-wide v2, p0, Lcom/inmobi/media/ic;->b:J

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
