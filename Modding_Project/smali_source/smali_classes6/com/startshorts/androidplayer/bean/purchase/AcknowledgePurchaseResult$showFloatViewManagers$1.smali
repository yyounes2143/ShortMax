.class public final Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult$showFloatViewManagers$1;
.super Ljava/lang/Object;
.source "AcknowledgePurchaseResult.kt"

# interfaces
.implements Ldf/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->showFloatViewManagers(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $managers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldf/e;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;",
            "Ljava/util/List<",
            "Ldf/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult$showFloatViewManagers$1;->this$0:Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult$showFloatViewManagers$1;->$managers:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult$showFloatViewManagers$1;->onDismiss$lambda$0(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final onDismiss$lambda$0(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->access$showFloatViewManagers(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public onDismiss()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult$showFloatViewManagers$1;->this$0:Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult$showFloatViewManagers$1;->$managers:Ljava/util/List;

    .line 6
    .line 7
    new-instance v4, Lcom/startshorts/androidplayer/bean/purchase/b;

    .line 8
    .line 9
    invoke-direct {v4, v1, v2}, Lcom/startshorts/androidplayer/bean/purchase/b;-><init>(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x0

    .line 14
    const-wide/16 v1, 0x1f4

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 18
    .line 19
    .line 20
    return-void
.end method
