.class public final Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c$a;
.super Lyd/d;
.source "OneTimeTaskAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->k(ILcom/startshorts/androidplayer/bean/task/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

.field final synthetic f:Lcom/startshorts/androidplayer/bean/task/Task;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;Lcom/startshorts/androidplayer/bean/task/Task;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c$a;->e:Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c$a;->f:Lcom/startshorts/androidplayer/bean/task/Task;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    const/4 p2, 0x0

    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    invoke-direct {p0, v0, v1, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "v"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c$a;->e:Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;->F()Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c$a;->f:Lcom/startshorts/androidplayer/bean/task/Task;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$b;->a(Lcom/startshorts/androidplayer/bean/task/Task;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
