.class public final synthetic Lub/t7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/we;

.field public final synthetic b:Lcom/inmobi/media/D1;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/we;Lcom/inmobi/media/D1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/t7;->a:Lcom/inmobi/media/we;

    .line 5
    .line 6
    iput-object p2, p0, Lub/t7;->b:Lcom/inmobi/media/D1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lub/t7;->a:Lcom/inmobi/media/we;

    .line 2
    .line 3
    iget-object v1, p0, Lub/t7;->b:Lcom/inmobi/media/D1;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/inmobi/media/we;->a(Lcom/inmobi/media/we;Lcom/inmobi/media/D1;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
