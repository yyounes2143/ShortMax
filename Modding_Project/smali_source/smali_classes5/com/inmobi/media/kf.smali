.class public final Lcom/inmobi/media/kf;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/lf;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/lf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/kf;->a:Lcom/inmobi/media/lf;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final a(Lcom/inmobi/media/lf;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/lf;->c:Landroid/os/Handler;

    .line 2
    iget-object p0, p0, Lcom/inmobi/media/lf;->k:Lms/i;

    .line 3
    invoke-interface {p0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/media/gf;

    .line 4
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Runnable;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/kf;->a:Lcom/inmobi/media/lf;

    new-instance v1, Lub/u4;

    invoke-direct {v1, v0}, Lub/u4;-><init>(Lcom/inmobi/media/lf;)V

    return-object v1
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/kf;->a()Ljava/lang/Runnable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
