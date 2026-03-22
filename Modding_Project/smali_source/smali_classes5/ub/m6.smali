.class public final synthetic Lub/m6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/sf;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/inmobi/media/z5;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/sf;Ljava/lang/String;Lcom/inmobi/media/z5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/m6;->a:Lcom/inmobi/media/sf;

    .line 5
    .line 6
    iput-object p2, p0, Lub/m6;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lub/m6;->c:Lcom/inmobi/media/z5;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lub/m6;->a:Lcom/inmobi/media/sf;

    .line 2
    .line 3
    iget-object v1, p0, Lub/m6;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lub/m6;->c:Lcom/inmobi/media/z5;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/inmobi/media/sf;->a(Lcom/inmobi/media/sf;Ljava/lang/String;Lcom/inmobi/media/z5;)Lcom/inmobi/media/yc;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
