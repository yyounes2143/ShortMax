.class public final synthetic Lub/c2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/Te;

.field public final synthetic b:Lcom/inmobi/media/h;

.field public final synthetic c:Z

.field public final synthetic d:S


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/Te;Lcom/inmobi/media/h;ZS)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/c2;->a:Lcom/inmobi/media/Te;

    .line 5
    .line 6
    iput-object p2, p0, Lub/c2;->b:Lcom/inmobi/media/h;

    .line 7
    .line 8
    iput-boolean p3, p0, Lub/c2;->c:Z

    .line 9
    .line 10
    iput-short p4, p0, Lub/c2;->d:S

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lub/c2;->a:Lcom/inmobi/media/Te;

    .line 2
    .line 3
    iget-object v1, p0, Lub/c2;->b:Lcom/inmobi/media/h;

    .line 4
    .line 5
    iget-boolean v2, p0, Lub/c2;->c:Z

    .line 6
    .line 7
    iget-short v3, p0, Lub/c2;->d:S

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/media/Se;->a(Lcom/inmobi/media/Te;Lcom/inmobi/media/h;ZS)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
