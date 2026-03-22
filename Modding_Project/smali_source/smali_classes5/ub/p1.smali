.class public final synthetic Lub/p1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/inmobi/media/Td;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/p1;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lub/p1;->b:Ljava/util/Map;

    .line 7
    .line 8
    iput-object p3, p0, Lub/p1;->c:Lcom/inmobi/media/Td;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lub/p1;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lub/p1;->b:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v2, p0, Lub/p1;->c:Lcom/inmobi/media/Td;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/inmobi/media/Pd;->c(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
