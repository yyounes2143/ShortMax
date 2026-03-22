.class public final Lcom/inmobi/media/ba;
.super Lcom/inmobi/media/N9;
.source "SourceFile"


# instance fields
.field public final y:Lcom/inmobi/media/aa;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/aa;Lcom/inmobi/media/z5;)V
    .locals 1

    .line 1
    const-string v0, "novatiqData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/inmobi/media/aa;->c:Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;->getBeaconUrl()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0, v0, p2}, Lcom/inmobi/media/N9;-><init>(Ljava/lang/String;Lcom/inmobi/media/z5;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/inmobi/media/ba;->y:Lcom/inmobi/media/aa;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/inmobi/media/N9;->t:Z

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/inmobi/media/N9;->u:Z

    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/inmobi/media/N9;->x:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/N9;->e:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "preparing Novatiq request with data - hyperId - "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/inmobi/media/ba;->y:Lcom/inmobi/media/aa;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/inmobi/media/aa;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, " - sspHost - "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/inmobi/media/ba;->y:Lcom/inmobi/media/aa;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/inmobi/media/aa;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, " - pubId - inmobi"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/inmobi/media/ba;->y:Lcom/inmobi/media/aa;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v0, Lcom/inmobi/media/A5;

    .line 46
    .line 47
    const-string v2, "Novatiq"

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-super {p0}, Lcom/inmobi/media/N9;->f()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/inmobi/media/N9;->j:Ljava/util/HashMap;

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v1, p0, Lcom/inmobi/media/ba;->y:Lcom/inmobi/media/aa;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/inmobi/media/aa;->a:Ljava/lang/String;

    .line 62
    .line 63
    const-string v2, "sptoken"

    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/N9;->j:Ljava/util/HashMap;

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    iget-object v1, p0, Lcom/inmobi/media/ba;->y:Lcom/inmobi/media/aa;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    const-string v1, "i6i"

    .line 78
    .line 79
    const-string v2, "sspid"

    .line 80
    .line 81
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/N9;->j:Ljava/util/HashMap;

    .line 85
    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    iget-object v1, p0, Lcom/inmobi/media/ba;->y:Lcom/inmobi/media/aa;

    .line 89
    .line 90
    iget-object v1, v1, Lcom/inmobi/media/aa;->b:Ljava/lang/String;

    .line 91
    .line 92
    const-string v2, "ssphost"

    .line 93
    .line 94
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/N9;->j:Ljava/util/HashMap;

    .line 98
    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    iget-object v1, p0, Lcom/inmobi/media/ba;->y:Lcom/inmobi/media/aa;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    const-string v1, "inmobi"

    .line 107
    .line 108
    const-string v2, "pubid"

    .line 109
    .line 110
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    :cond_4
    return-void
.end method
