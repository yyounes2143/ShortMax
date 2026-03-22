.class public final synthetic Lgf/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Boolean;

.field public final synthetic b:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Boolean;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgf/b;->a:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object p2, p0, Lgf/b;->b:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;

    .line 7
    .line 8
    iput p3, p0, Lgf/b;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lgf/b;->a:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v1, p0, Lgf/b;->b:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;

    .line 4
    .line 5
    iget v2, p0, Lgf/b;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->a(Ljava/lang/Boolean;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
