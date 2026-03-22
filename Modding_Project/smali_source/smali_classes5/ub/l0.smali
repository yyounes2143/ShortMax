.class public final synthetic Lub/l0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/Ia;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/Ia;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/l0;->a:Lcom/inmobi/media/Ia;

    .line 5
    .line 6
    iput-object p2, p0, Lub/l0;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lub/l0;->a:Lcom/inmobi/media/Ia;

    .line 2
    .line 3
    iget-object v1, p0, Lub/l0;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/inmobi/media/Ia;->a(Lcom/inmobi/media/Ia;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
