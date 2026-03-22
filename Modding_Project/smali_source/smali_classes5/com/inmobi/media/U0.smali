.class public final Lcom/inmobi/media/U0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/S0;

.field public final b:Lcom/inmobi/media/Zd;

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public final j:Lcom/inmobi/media/T0;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/S0;)V
    .locals 1

    .line 1
    const-string v0, "adUnit"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/U0;->a:Lcom/inmobi/media/S0;

    .line 10
    .line 11
    new-instance p1, Lcom/inmobi/media/Zd;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/inmobi/media/Zd;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/inmobi/media/U0;->b:Lcom/inmobi/media/Zd;

    .line 17
    .line 18
    new-instance p1, Lcom/inmobi/media/T0;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/inmobi/media/T0;-><init>(Lcom/inmobi/media/U0;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/inmobi/media/U0;->j:Lcom/inmobi/media/T0;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/U0;->a:Lcom/inmobi/media/S0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->y()Lcom/inmobi/media/y0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/inmobi/media/y0;->f()Ljava/util/LinkedList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/inmobi/media/h;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/inmobi/media/h;->w()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    :cond_0
    const-string v0, ""

    .line 32
    .line 33
    :cond_1
    return-object v0
.end method
