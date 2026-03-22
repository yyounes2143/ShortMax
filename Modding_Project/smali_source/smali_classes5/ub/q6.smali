.class public final synthetic Lub/q6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/t4;

.field public final synthetic b:Lcom/inmobi/media/ue;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/t4;Lcom/inmobi/media/ue;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/q6;->a:Lcom/inmobi/media/t4;

    .line 5
    .line 6
    iput-object p2, p0, Lub/q6;->b:Lcom/inmobi/media/ue;

    .line 7
    .line 8
    iput-boolean p3, p0, Lub/q6;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lub/q6;->a:Lcom/inmobi/media/t4;

    .line 2
    .line 3
    iget-object v1, p0, Lub/q6;->b:Lcom/inmobi/media/ue;

    .line 4
    .line 5
    iget-boolean v2, p0, Lub/q6;->c:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/inmobi/media/t4;->a(Lcom/inmobi/media/t4;Lcom/inmobi/media/ue;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
