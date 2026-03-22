.class public final synthetic Lub/g8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/inmobi/media/z5;

.field public final synthetic e:Lcom/inmobi/media/Z1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;ZLcom/inmobi/media/z5;Lcom/inmobi/media/Z1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/g8;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lub/g8;->b:Ljava/util/Map;

    .line 7
    .line 8
    iput-boolean p3, p0, Lub/g8;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lub/g8;->d:Lcom/inmobi/media/z5;

    .line 11
    .line 12
    iput-object p5, p0, Lub/g8;->e:Lcom/inmobi/media/Z1;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lub/g8;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lub/g8;->b:Ljava/util/Map;

    .line 4
    .line 5
    iget-boolean v2, p0, Lub/g8;->c:Z

    .line 6
    .line 7
    iget-object v3, p0, Lub/g8;->d:Lcom/inmobi/media/z5;

    .line 8
    .line 9
    iget-object v4, p0, Lub/g8;->e:Lcom/inmobi/media/Z1;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/inmobi/media/x2;->a(Ljava/lang/String;Ljava/util/Map;ZLcom/inmobi/media/z5;Lcom/inmobi/media/Z1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
