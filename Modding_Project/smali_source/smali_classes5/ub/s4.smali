.class public final synthetic Lub/s4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/tf;

.field public final synthetic b:Lcom/inmobi/media/Cc;

.field public final synthetic c:Lcom/inmobi/media/lc;

.field public final synthetic d:Lcom/inmobi/media/ec;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/tf;Lcom/inmobi/media/Cc;Lcom/inmobi/media/lc;Lcom/inmobi/media/ec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/s4;->a:Lcom/inmobi/media/tf;

    .line 5
    .line 6
    iput-object p2, p0, Lub/s4;->b:Lcom/inmobi/media/Cc;

    .line 7
    .line 8
    iput-object p3, p0, Lub/s4;->c:Lcom/inmobi/media/lc;

    .line 9
    .line 10
    iput-object p4, p0, Lub/s4;->d:Lcom/inmobi/media/ec;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lub/s4;->a:Lcom/inmobi/media/tf;

    .line 2
    .line 3
    iget-object v1, p0, Lub/s4;->b:Lcom/inmobi/media/Cc;

    .line 4
    .line 5
    iget-object v2, p0, Lub/s4;->c:Lcom/inmobi/media/lc;

    .line 6
    .line 7
    iget-object v3, p0, Lub/s4;->d:Lcom/inmobi/media/ec;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/media/kc;->b(Lcom/inmobi/media/tf;Lcom/inmobi/media/Cc;Lcom/inmobi/media/lc;Lcom/inmobi/media/ec;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
