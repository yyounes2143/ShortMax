.class public final synthetic Lri/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lkotlin/jvm/functions/Function2;

.field public final synthetic c:Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function2;Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lri/c;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lri/c;->b:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    iput-object p3, p0, Lri/c;->c:Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lri/c;->a:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lri/c;->b:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iget-object v2, p0, Lri/c;->c:Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;->Z(Landroid/view/View;Lkotlin/jvm/functions/Function2;Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
