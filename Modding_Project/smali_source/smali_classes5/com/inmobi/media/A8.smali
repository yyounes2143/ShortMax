.class public final Lcom/inmobi/media/A8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/g9;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/D8;

.field public final synthetic b:Lcom/inmobi/media/c9;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/D8;Lcom/inmobi/media/c9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/A8;->a:Lcom/inmobi/media/D8;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/inmobi/media/A8;->b:Lcom/inmobi/media/c9;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/A8;->a:Lcom/inmobi/media/D8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/D8;->b:Lcom/inmobi/media/T7;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/inmobi/media/T7;->t:Z

    .line 6
    .line 7
    if-nez v1, :cond_5

    .line 8
    .line 9
    instance-of v1, v0, Lcom/inmobi/media/a9;

    .line 10
    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq p1, v1, :cond_5

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    :try_start_0
    check-cast v0, Lcom/inmobi/media/a9;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 22
    .line 23
    if-eqz v0, :cond_5

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/inmobi/media/Xe;->a(B)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v2, 0x1

    .line 32
    if-ne p1, v2, :cond_1

    .line 33
    .line 34
    check-cast v0, Lcom/inmobi/media/a9;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/inmobi/media/A8;->b:Lcom/inmobi/media/c9;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/inmobi/media/a9;->g(Lcom/inmobi/media/c9;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v2, 0x2

    .line 43
    if-ne p1, v2, :cond_2

    .line 44
    .line 45
    check-cast v0, Lcom/inmobi/media/a9;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/inmobi/media/A8;->b:Lcom/inmobi/media/c9;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/inmobi/media/a9;->f(Lcom/inmobi/media/c9;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 v2, 0x3

    .line 54
    if-ne p1, v2, :cond_3

    .line 55
    .line 56
    check-cast v0, Lcom/inmobi/media/a9;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/inmobi/media/A8;->b:Lcom/inmobi/media/c9;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/inmobi/media/a9;->h(Lcom/inmobi/media/c9;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    if-ne p1, v1, :cond_5

    .line 65
    .line 66
    check-cast v0, Lcom/inmobi/media/a9;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/inmobi/media/A8;->b:Lcom/inmobi/media/c9;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/inmobi/media/a9;->d(Lcom/inmobi/media/c9;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/inmobi/media/A8;->a:Lcom/inmobi/media/D8;

    .line 75
    .line 76
    iget-object v2, v1, Lcom/inmobi/media/D8;->f:Lcom/inmobi/media/z5;

    .line 77
    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    iget-object v1, v1, Lcom/inmobi/media/D8;->g:Ljava/lang/String;

    .line 81
    .line 82
    const-string v3, "access$getTAG$p(...)"

    .line 83
    .line 84
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v4, "SDK encountered unexpected error in handling ("

    .line 90
    .line 91
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p1, ") event; "

    .line 98
    .line 99
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v3}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast v2, Lcom/inmobi/media/A5;

    .line 107
    .line 108
    invoke-virtual {v2, v1, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    sget-object p1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 112
    .line 113
    const-string p1, "event"

    .line 114
    .line 115
    invoke-static {v0, p1}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 120
    .line 121
    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 122
    .line 123
    .line 124
    :cond_5
    :goto_1
    return-void
.end method
