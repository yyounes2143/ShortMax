.class public final synthetic Lub/n3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/a6;

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/a6;JLjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/n3;->a:Lcom/inmobi/media/a6;

    .line 5
    .line 6
    iput-wide p2, p0, Lub/n3;->b:J

    .line 7
    .line 8
    iput-object p4, p0, Lub/n3;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput p5, p0, Lub/n3;->d:I

    .line 11
    .line 12
    iput-object p6, p0, Lub/n3;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lub/n3;->a:Lcom/inmobi/media/a6;

    .line 2
    .line 3
    iget-wide v1, p0, Lub/n3;->b:J

    .line 4
    .line 5
    iget-object v3, p0, Lub/n3;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget v4, p0, Lub/n3;->d:I

    .line 8
    .line 9
    iget-object v5, p0, Lub/n3;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static/range {v0 .. v5}, Lcom/inmobi/media/a6;->a(Lcom/inmobi/media/a6;JLjava/lang/String;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
