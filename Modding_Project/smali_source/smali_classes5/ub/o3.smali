.class public final synthetic Lub/o3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/c9;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/inmobi/media/a9;

.field public final synthetic d:Lcom/inmobi/media/l9;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/c9;ZLcom/inmobi/media/a9;Lcom/inmobi/media/l9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/o3;->a:Lcom/inmobi/media/c9;

    .line 5
    .line 6
    iput-boolean p2, p0, Lub/o3;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lub/o3;->c:Lcom/inmobi/media/a9;

    .line 9
    .line 10
    iput-object p4, p0, Lub/o3;->d:Lcom/inmobi/media/l9;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lub/o3;->a:Lcom/inmobi/media/c9;

    .line 2
    .line 3
    iget-boolean v1, p0, Lub/o3;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Lub/o3;->c:Lcom/inmobi/media/a9;

    .line 6
    .line 7
    iget-object v3, p0, Lub/o3;->d:Lcom/inmobi/media/l9;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/media/a9;->a(Lcom/inmobi/media/c9;ZLcom/inmobi/media/a9;Lcom/inmobi/media/l9;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
