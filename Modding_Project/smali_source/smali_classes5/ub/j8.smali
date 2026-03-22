.class public final synthetic Lub/j8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/inmobi/media/z5;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLcom/inmobi/media/z5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/j8;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lub/j8;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lub/j8;->c:Lcom/inmobi/media/z5;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lub/j8;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lub/j8;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Lub/j8;->c:Lcom/inmobi/media/z5;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/inmobi/media/x2;->c(Ljava/lang/String;ZLcom/inmobi/media/z5;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
