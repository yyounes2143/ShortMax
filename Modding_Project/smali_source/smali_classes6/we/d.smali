.class public final synthetic Lwe/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/manager/dialog/home/c;

.field public final synthetic b:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/manager/dialog/home/c;Lcom/startshorts/androidplayer/ui/activity/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwe/d;->a:Lcom/startshorts/androidplayer/manager/dialog/home/c;

    .line 5
    .line 6
    iput-object p2, p0, Lwe/d;->b:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 7
    .line 8
    iput p3, p0, Lwe/d;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lwe/d;->a:Lcom/startshorts/androidplayer/manager/dialog/home/c;

    .line 2
    .line 3
    iget-object v1, p0, Lwe/d;->b:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 4
    .line 5
    iget v2, p0, Lwe/d;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->b(Lcom/startshorts/androidplayer/manager/dialog/home/c;Lcom/startshorts/androidplayer/ui/activity/MainActivity;I)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
