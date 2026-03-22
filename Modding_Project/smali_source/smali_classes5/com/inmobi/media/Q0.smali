.class public final Lcom/inmobi/media/Q0;
.super Lcom/inmobi/media/G1;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/inmobi/media/S0;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/S0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Q0;->d:Lcom/inmobi/media/S0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/inmobi/media/Q0;->e:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/inmobi/media/Q0;->f:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/inmobi/media/G1;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/G1;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/inmobi/media/S0;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->m()Lcom/inmobi/media/h;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "<get-TAG>(...)"

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/inmobi/media/h;->s()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v4, p0, Lcom/inmobi/media/Q0;->e:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iget-object v3, p0, Lcom/inmobi/media/Q0;->f:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, v1, v3}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/S0;Lcom/inmobi/media/h;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/inmobi/media/Q0;->d:Lcom/inmobi/media/S0;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v3, "Updated blob "

    .line 47
    .line 48
    invoke-static {v1, v2, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v3, p0, Lcom/inmobi/media/Q0;->f:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v0, Lcom/inmobi/media/A5;

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Q0;->d:Lcom/inmobi/media/S0;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    check-cast v0, Lcom/inmobi/media/A5;

    .line 81
    .line 82
    const-string v2, "Impression ID is null for saveBlob"

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    return-void
.end method
