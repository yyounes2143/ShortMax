.class public final Lcom/bytedance/bdtracker/s0;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/app/Activity;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/applog/exposure/ViewExposureManager;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/exposure/ViewExposureManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/s0;->a:Lcom/bytedance/applog/exposure/ViewExposureManager;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/app/Activity;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/bytedance/bdtracker/s0;->a:Lcom/bytedance/applog/exposure/ViewExposureManager;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/bytedance/applog/exposure/ViewExposureManager;->access$getTask$p(Lcom/bytedance/applog/exposure/ViewExposureManager;)Lcom/bytedance/bdtracker/z0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p1, p1, Lcom/bytedance/bdtracker/z0;->b:Lcom/bytedance/bdtracker/v0;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/v0;->a()V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p1
.end method
