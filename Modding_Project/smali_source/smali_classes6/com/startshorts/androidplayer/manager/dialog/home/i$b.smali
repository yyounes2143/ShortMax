.class public final Lcom/startshorts/androidplayer/manager/dialog/home/i$b;
.super Ljava/lang/Object;
.source "RewardTabGuideProcessor.kt"

# interfaces
.implements Ljj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/dialog/home/i;->d(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/startshorts/androidplayer/ui/view/guide/core/a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

.field final synthetic c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/startshorts/androidplayer/ui/view/guide/core/a;",
            ">;",
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/i$b;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/dialog/home/i$b;->b:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/dialog/home/i$b;->c:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/ui/view/guide/core/a;)V
    .locals 2

    .line 1
    const-string v0, "controller"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/i$b;->b:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->REWARDS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->F0(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/i$b;->b:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 15
    .line 16
    sget-object v0, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->MY_LIST:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->F0(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Z)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/i$b;->c:Lkotlin/jvm/functions/Function0;

    .line 22
    .line 23
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public b(Lcom/startshorts/androidplayer/ui/view/guide/core/a;)V
    .locals 1

    .line 1
    const-string v0, "controller"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/dialog/home/i$b;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method
