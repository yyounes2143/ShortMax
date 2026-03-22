.class public final synthetic Lub/q4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/Z6;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/Z6;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/q4;->a:Lcom/inmobi/media/Z6;

    .line 5
    .line 6
    iput-wide p2, p0, Lub/q4;->b:J

    .line 7
    .line 8
    iput p4, p0, Lub/q4;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lub/q4;->a:Lcom/inmobi/media/Z6;

    .line 2
    .line 3
    iget-wide v1, p0, Lub/q4;->b:J

    .line 4
    .line 5
    iget v3, p0, Lub/q4;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/media/k7;->b(Lcom/inmobi/media/Z6;JI)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
