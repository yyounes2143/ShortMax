.class public final Lcom/inmobi/media/ge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/S0;

.field public final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/S0;)V
    .locals 1

    .line 1
    const-string v0, "timeOutInformer"

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
    iput-object p1, p0, Lcom/inmobi/media/ge;->a:Lcom/inmobi/media/S0;

    .line 10
    .line 11
    new-instance p1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/inmobi/media/ge;->b:Ljava/util/HashMap;

    .line 17
    .line 18
    return-void
.end method

.method public static final a(Lcom/inmobi/media/ge;B)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/inmobi/media/ge;->a:Lcom/inmobi/media/S0;

    invoke-interface {p0, p1}, Lcom/inmobi/media/ee;->a(B)V

    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lub/l4;

    invoke-direct {v1, p0, p1}, Lub/l4;-><init>(Lcom/inmobi/media/ge;B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
