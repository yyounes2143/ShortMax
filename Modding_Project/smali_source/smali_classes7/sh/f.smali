.class public final synthetic Lsh/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsh/f;->a:Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsh/f;->a:Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;

    .line 2
    .line 3
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->I(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;Landroidx/activity/result/ActivityResult;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
