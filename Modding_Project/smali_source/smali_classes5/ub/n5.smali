.class public final synthetic Lub/n5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/o0;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:Lcom/inmobi/media/Jb;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/o0;Landroid/app/Activity;JZLcom/inmobi/media/Jb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/n5;->a:Lcom/inmobi/media/o0;

    .line 5
    .line 6
    iput-object p2, p0, Lub/n5;->b:Landroid/app/Activity;

    .line 7
    .line 8
    iput-wide p3, p0, Lub/n5;->c:J

    .line 9
    .line 10
    iput-boolean p5, p0, Lub/n5;->d:Z

    .line 11
    .line 12
    iput-object p6, p0, Lub/n5;->e:Lcom/inmobi/media/Jb;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lub/n5;->a:Lcom/inmobi/media/o0;

    .line 2
    .line 3
    iget-object v1, p0, Lub/n5;->b:Landroid/app/Activity;

    .line 4
    .line 5
    iget-wide v2, p0, Lub/n5;->c:J

    .line 6
    .line 7
    iget-boolean v4, p0, Lub/n5;->d:Z

    .line 8
    .line 9
    iget-object v5, p0, Lub/n5;->e:Lcom/inmobi/media/Jb;

    .line 10
    .line 11
    invoke-static/range {v0 .. v5}, Lcom/inmobi/media/o0;->a(Lcom/inmobi/media/o0;Landroid/app/Activity;JZLcom/inmobi/media/Jb;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
