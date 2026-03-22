.class public final Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1;
.super Ljava/lang/Object;
.source "RewardsModuleAdapter.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->I(ILcom/startshorts/androidplayer/bean/reward/RewardsModule;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "value"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/a;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/a;

    .line 13
    .line 14
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/reward/a$i;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->s(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method
