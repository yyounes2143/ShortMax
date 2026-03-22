.class public final Lcom/inmobi/media/be;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/Sd;

.field public final b:Lcom/inmobi/media/Oc;

.field public final c:Lcom/inmobi/media/ce;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Sd;Ljava/util/List;)V
    .locals 3

    .line 1
    const-string v0, "telemetryConfigMetaData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "samplingEvents"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/inmobi/media/be;->a:Lcom/inmobi/media/Sd;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    new-instance v2, Lcom/inmobi/media/Oc;

    .line 21
    .line 22
    invoke-direct {v2, p1, v0, v1, p2}, Lcom/inmobi/media/Oc;-><init>(Lcom/inmobi/media/Sd;DLjava/util/List;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/inmobi/media/be;->b:Lcom/inmobi/media/Oc;

    .line 26
    .line 27
    new-instance p2, Lcom/inmobi/media/ce;

    .line 28
    .line 29
    invoke-direct {p2, p1, v0, v1}, Lcom/inmobi/media/ce;-><init>(Lcom/inmobi/media/Sd;D)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lcom/inmobi/media/be;->c:Lcom/inmobi/media/ce;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/Td;Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "telemetryEventType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "eventType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    if-ne p1, v1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/inmobi/media/be;->c:Lcom/inmobi/media/ce;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-wide v0, p1, Lcom/inmobi/media/ce;->b:D

    .line 29
    .line 30
    iget-object p1, p1, Lcom/inmobi/media/ce;->a:Lcom/inmobi/media/Sd;

    .line 31
    .line 32
    iget-wide p1, p1, Lcom/inmobi/media/Sd;->g:D

    .line 33
    .line 34
    cmpg-double p1, v0, p1

    .line 35
    .line 36
    if-gez p1, :cond_2

    .line 37
    .line 38
    sget-object p1, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 42
    .line 43
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/be;->b:Lcom/inmobi/media/Oc;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p1, Lcom/inmobi/media/Oc;->c:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_3

    .line 62
    .line 63
    iget-wide v0, p1, Lcom/inmobi/media/Oc;->b:D

    .line 64
    .line 65
    iget-object p1, p1, Lcom/inmobi/media/Oc;->a:Lcom/inmobi/media/Sd;

    .line 66
    .line 67
    iget-wide p1, p1, Lcom/inmobi/media/Sd;->g:D

    .line 68
    .line 69
    cmpg-double p1, v0, p1

    .line 70
    .line 71
    if-gez p1, :cond_2

    .line 72
    .line 73
    sget-object p1, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 74
    .line 75
    :goto_0
    const/4 v1, 0x2

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/4 v1, 0x0

    .line 78
    :cond_3
    :goto_1
    return v1
.end method
