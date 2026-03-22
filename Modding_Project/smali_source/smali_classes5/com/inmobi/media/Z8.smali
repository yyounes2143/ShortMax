.class public final Lcom/inmobi/media/Z8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/w;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/a9;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/a9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Z8;->a:Lcom/inmobi/media/a9;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Z8;->a:Lcom/inmobi/media/a9;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 3
    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/Z8;->a:Lcom/inmobi/media/a9;

    .line 5
    iget-object v0, v0, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/inmobi/media/P0;->c()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 6

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/Z8;->a:Lcom/inmobi/media/a9;

    invoke-virtual {v0}, Lcom/inmobi/media/T7;->f()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    instance-of v0, p1, Lcom/inmobi/media/c9;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/inmobi/media/c9;

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/Z8;->a:Lcom/inmobi/media/a9;

    .line 10
    iget-object v0, v0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 11
    const-string v2, "access$getTAG$p(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 12
    iget-object v0, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 13
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "didRequestFullScreen"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string v4, "isFullScreen"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v5, "shouldAutoPlay"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p1, Lcom/inmobi/media/d8;->w:Lcom/inmobi/media/d8;

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, v0, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 18
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/Z8;->a:Lcom/inmobi/media/a9;

    .line 22
    iget-byte v2, v0, Lcom/inmobi/media/T7;->a:B

    if-nez v2, :cond_4

    .line 23
    invoke-virtual {v0}, Lcom/inmobi/media/a9;->getViewableAd()Lcom/inmobi/media/Xe;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/inmobi/media/Xe;->a(B)V

    :cond_3
    if-eqz p1, :cond_4

    .line 24
    iget-object v0, p0, Lcom/inmobi/media/Z8;->a:Lcom/inmobi/media/a9;

    .line 25
    invoke-virtual {v0, p1}, Lcom/inmobi/media/a9;->j(Lcom/inmobi/media/c9;)Ljava/util/HashMap;

    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/inmobi/media/Z8;->a:Lcom/inmobi/media/a9;

    .line 27
    iget-object v2, v2, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 28
    const-string v3, "fullscreen"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 29
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/Z8;->a:Lcom/inmobi/media/a9;

    .line 30
    iget-object p1, p1, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    if-eqz p1, :cond_5

    .line 31
    invoke-virtual {p1}, Lcom/inmobi/media/P0;->d()V

    :cond_5
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Z8;->a:Lcom/inmobi/media/a9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "access$getTAG$p(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    instance-of v0, p1, Lcom/inmobi/media/c9;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Lcom/inmobi/media/c9;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v1

    .line 19
    :goto_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object v0, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 22
    .line 23
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    .line 25
    const-string v3, "didRequestFullScreen"

    .line 26
    .line 27
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const-string v4, "isFullScreen"

    .line 31
    .line 32
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iput-object v1, p1, Lcom/inmobi/media/d8;->w:Lcom/inmobi/media/d8;

    .line 36
    .line 37
    iget-object v0, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iput-object v1, p1, Lcom/inmobi/media/d8;->w:Lcom/inmobi/media/d8;

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Z8;->a:Lcom/inmobi/media/a9;

    .line 48
    .line 49
    iget-byte v2, v0, Lcom/inmobi/media/T7;->a:B

    .line 50
    .line 51
    if-nez v2, :cond_4

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/inmobi/media/a9;->getViewableAd()Lcom/inmobi/media/Xe;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    invoke-virtual {v0, v2}, Lcom/inmobi/media/Xe;->a(B)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/Z8;->a:Lcom/inmobi/media/a9;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/inmobi/media/T7;->v:Lcom/inmobi/media/T7;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-interface {v0}, Lcom/inmobi/media/x;->getViewableAd()Lcom/inmobi/media/Xe;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    const/16 v2, 0x10

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Lcom/inmobi/media/Xe;->a(B)V

    .line 78
    .line 79
    .line 80
    :cond_3
    if-eqz p1, :cond_5

    .line 81
    .line 82
    iget-object v0, p0, Lcom/inmobi/media/Z8;->a:Lcom/inmobi/media/a9;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Lcom/inmobi/media/a9;->j(Lcom/inmobi/media/c9;)Ljava/util/HashMap;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v2, p0, Lcom/inmobi/media/Z8;->a:Lcom/inmobi/media/a9;

    .line 89
    .line 90
    iget-object v2, v2, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 91
    .line 92
    const-string v3, "exitFullscreen"

    .line 93
    .line 94
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    invoke-virtual {v0}, Lcom/inmobi/media/a9;->getViewableAd()Lcom/inmobi/media/Xe;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    const/4 v0, 0x3

    .line 105
    invoke-virtual {p1, v0}, Lcom/inmobi/media/Xe;->a(B)V

    .line 106
    .line 107
    .line 108
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/inmobi/media/Z8;->a:Lcom/inmobi/media/a9;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    .line 111
    .line 112
    if-eqz p1, :cond_6

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/inmobi/media/P0;->b()V

    .line 115
    .line 116
    .line 117
    :cond_6
    iget-object p1, p0, Lcom/inmobi/media/Z8;->a:Lcom/inmobi/media/a9;

    .line 118
    .line 119
    iget-object p1, p1, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 120
    .line 121
    if-eqz p1, :cond_7

    .line 122
    .line 123
    check-cast p1, Lcom/inmobi/media/A5;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/inmobi/media/A5;->a()V

    .line 126
    .line 127
    .line 128
    :cond_7
    return-void
.end method
