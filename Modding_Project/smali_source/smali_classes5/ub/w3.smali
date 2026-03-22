.class public final synthetic Lub/w3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/c8;

.field public final synthetic b:Lcom/inmobi/media/Xe;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/c8;Lcom/inmobi/media/Xe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/w3;->a:Lcom/inmobi/media/c8;

    .line 5
    .line 6
    iput-object p2, p0, Lub/w3;->b:Lcom/inmobi/media/Xe;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lub/w3;->a:Lcom/inmobi/media/c8;

    .line 2
    .line 3
    iget-object v1, p0, Lub/w3;->b:Lcom/inmobi/media/Xe;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/inmobi/media/c8;->a(Lcom/inmobi/media/c8;Lcom/inmobi/media/Xe;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
