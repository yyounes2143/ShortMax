.class public final synthetic Lcom/startshorts/androidplayer/adapter/rewards/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

.field public final synthetic b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/g;->a:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/rewards/g;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/g;->a:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/g;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->m(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
