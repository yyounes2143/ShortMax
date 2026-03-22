.class public final synthetic Lub/t4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/lc;

.field public final synthetic b:Lcom/inmobi/media/Cc;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/lc;Lcom/inmobi/media/Cc;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/t4;->a:Lcom/inmobi/media/lc;

    .line 5
    .line 6
    iput-object p2, p0, Lub/t4;->b:Lcom/inmobi/media/Cc;

    .line 7
    .line 8
    iput-boolean p3, p0, Lub/t4;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lub/t4;->a:Lcom/inmobi/media/lc;

    .line 2
    .line 3
    iget-object v1, p0, Lub/t4;->b:Lcom/inmobi/media/Cc;

    .line 4
    .line 5
    iget-boolean v2, p0, Lub/t4;->c:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/inmobi/media/kc;->a(Lcom/inmobi/media/lc;Lcom/inmobi/media/Cc;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
