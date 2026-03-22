.class public final synthetic Lxf/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/manager/shorts/feature/f;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/manager/shorts/feature/f;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxf/f;->a:Lcom/startshorts/androidplayer/manager/shorts/feature/f;

    .line 5
    .line 6
    iput-boolean p2, p0, Lxf/f;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lxf/f;->c:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 9
    .line 10
    iput-boolean p4, p0, Lxf/f;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lxf/f;->a:Lcom/startshorts/androidplayer/manager/shorts/feature/f;

    .line 2
    .line 3
    iget-boolean v1, p0, Lxf/f;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Lxf/f;->c:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 6
    .line 7
    iget-boolean v3, p0, Lxf/f;->d:Z

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->c(Lcom/startshorts/androidplayer/manager/shorts/feature/f;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
