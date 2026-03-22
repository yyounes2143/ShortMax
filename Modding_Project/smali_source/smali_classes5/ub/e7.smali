.class public final synthetic Lub/e7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/v6;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/v6;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/e7;->a:Lcom/inmobi/media/v6;

    .line 5
    .line 6
    iput-object p2, p0, Lub/e7;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lub/e7;->a:Lcom/inmobi/media/v6;

    .line 2
    .line 3
    iget-object v1, p0, Lub/e7;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/inmobi/media/v6;->c(Lcom/inmobi/media/v6;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
