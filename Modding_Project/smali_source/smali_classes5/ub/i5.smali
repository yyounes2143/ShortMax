.class public final synthetic Lub/i5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/m6;

.field public final synthetic b:Lcom/inmobi/media/ec;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/m6;Lcom/inmobi/media/ec;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/i5;->a:Lcom/inmobi/media/m6;

    .line 5
    .line 6
    iput-object p2, p0, Lub/i5;->b:Lcom/inmobi/media/ec;

    .line 7
    .line 8
    iput-object p3, p0, Lub/i5;->c:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lub/i5;->a:Lcom/inmobi/media/m6;

    .line 2
    .line 3
    iget-object v1, p0, Lub/i5;->b:Lcom/inmobi/media/ec;

    .line 4
    .line 5
    iget-object v2, p0, Lub/i5;->c:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/inmobi/media/m6;->a(Lcom/inmobi/media/m6;Lcom/inmobi/media/ec;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
