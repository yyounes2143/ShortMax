.class public final Lcom/moloco/sdk/internal/services/bidtoken/providers/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/services/bidtoken/providers/s;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/moloco/sdk/internal/services/bidtoken/providers/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/moloco/sdk/internal/services/bidtoken/providers/u;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/moloco/sdk/internal/services/bidtoken/providers/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/moloco/sdk/internal/services/o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/moloco/sdk/internal/services/bidtoken/providers/o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/moloco/sdk/internal/services/bidtoken/providers/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/moloco/sdk/internal/services/bidtoken/providers/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lcom/moloco/sdk/internal/services/bidtoken/providers/q;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ZLcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;Lcom/moloco/sdk/internal/services/bidtoken/providers/s;Lcom/moloco/sdk/internal/services/bidtoken/providers/d;Lcom/moloco/sdk/internal/services/bidtoken/providers/u;Lcom/moloco/sdk/internal/services/bidtoken/providers/h;Lcom/moloco/sdk/internal/services/o;Lcom/moloco/sdk/internal/services/bidtoken/providers/o;Lcom/moloco/sdk/internal/services/bidtoken/providers/f;Lcom/moloco/sdk/internal/services/bidtoken/providers/a;Lcom/moloco/sdk/internal/services/bidtoken/providers/q;)V
    .locals 1
    .param p2    # Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/services/bidtoken/providers/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/internal/services/bidtoken/providers/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/internal/services/bidtoken/providers/u;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/internal/services/bidtoken/providers/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/moloco/sdk/internal/services/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/moloco/sdk/internal/services/bidtoken/providers/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/moloco/sdk/internal/services/bidtoken/providers/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/moloco/sdk/internal/services/bidtoken/providers/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/moloco/sdk/internal/services/bidtoken/providers/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "privacySettings"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "memoryInfo"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "appDirInfo"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "networkInfoSignal"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "batteryInfoSignal"

    .line 22
    .line 23
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "adDataSignal"

    .line 27
    .line 28
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "deviceSignal"

    .line 32
    .line 33
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "audioSignal"

    .line 37
    .line 38
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "accessibilitySignal"

    .line 42
    .line 43
    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "ilrdSignal"

    .line 47
    .line 48
    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-boolean p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->a:Z

    .line 55
    .line 56
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->b:Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 57
    .line 58
    iput-object p3, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    .line 59
    .line 60
    iput-object p4, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->d:Lcom/moloco/sdk/internal/services/bidtoken/providers/d;

    .line 61
    .line 62
    iput-object p5, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->e:Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 63
    .line 64
    iput-object p6, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->f:Lcom/moloco/sdk/internal/services/bidtoken/providers/h;

    .line 65
    .line 66
    iput-object p7, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->g:Lcom/moloco/sdk/internal/services/o;

    .line 67
    .line 68
    iput-object p8, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->h:Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 69
    .line 70
    iput-object p9, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->i:Lcom/moloco/sdk/internal/services/bidtoken/providers/f;

    .line 71
    .line 72
    iput-object p10, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->j:Lcom/moloco/sdk/internal/services/bidtoken/providers/a;

    .line 73
    .line 74
    iput-object p11, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->k:Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public final a()Lcom/moloco/sdk/internal/services/bidtoken/providers/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->j:Lcom/moloco/sdk/internal/services/bidtoken/providers/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lcom/moloco/sdk/internal/services/o;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->g:Lcom/moloco/sdk/internal/services/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lcom/moloco/sdk/internal/services/bidtoken/providers/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->d:Lcom/moloco/sdk/internal/services/bidtoken/providers/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lcom/moloco/sdk/internal/services/bidtoken/providers/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->i:Lcom/moloco/sdk/internal/services/bidtoken/providers/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lcom/moloco/sdk/internal/services/bidtoken/providers/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->f:Lcom/moloco/sdk/internal/services/bidtoken/providers/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->a:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->a:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->b:Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->b:Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->d:Lcom/moloco/sdk/internal/services/bidtoken/providers/d;

    .line 43
    .line 44
    iget-object v3, p1, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->d:Lcom/moloco/sdk/internal/services/bidtoken/providers/d;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->e:Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->e:Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->f:Lcom/moloco/sdk/internal/services/bidtoken/providers/h;

    .line 65
    .line 66
    iget-object v3, p1, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->f:Lcom/moloco/sdk/internal/services/bidtoken/providers/h;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->g:Lcom/moloco/sdk/internal/services/o;

    .line 76
    .line 77
    iget-object v3, p1, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->g:Lcom/moloco/sdk/internal/services/o;

    .line 78
    .line 79
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->h:Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 87
    .line 88
    iget-object v3, p1, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->h:Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    return v2

    .line 97
    :cond_9
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->i:Lcom/moloco/sdk/internal/services/bidtoken/providers/f;

    .line 98
    .line 99
    iget-object v3, p1, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->i:Lcom/moloco/sdk/internal/services/bidtoken/providers/f;

    .line 100
    .line 101
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_a

    .line 106
    .line 107
    return v2

    .line 108
    :cond_a
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->j:Lcom/moloco/sdk/internal/services/bidtoken/providers/a;

    .line 109
    .line 110
    iget-object v3, p1, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->j:Lcom/moloco/sdk/internal/services/bidtoken/providers/a;

    .line 111
    .line 112
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_b

    .line 117
    .line 118
    return v2

    .line 119
    :cond_b
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->k:Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 120
    .line 121
    iget-object p1, p1, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->k:Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 122
    .line 123
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_c

    .line 128
    .line 129
    return v2

    .line 130
    :cond_c
    return v0
.end method

.method public final f()Lcom/moloco/sdk/internal/services/bidtoken/providers/o;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->h:Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lcom/moloco/sdk/internal/services/bidtoken/providers/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->k:Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lcom/moloco/sdk/internal/services/bidtoken/providers/s;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->a:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->b:Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->d:Lcom/moloco/sdk/internal/services/bidtoken/providers/d;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/d;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->e:Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/u;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->f:Lcom/moloco/sdk/internal/services/bidtoken/providers/h;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/h;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->g:Lcom/moloco/sdk/internal/services/o;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->h:Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/o;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->i:Lcom/moloco/sdk/internal/services/bidtoken/providers/f;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/f;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->j:Lcom/moloco/sdk/internal/services/bidtoken/providers/a;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/a;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    .line 89
    .line 90
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->k:Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/q;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    add-int/2addr v0, v1

    .line 97
    return v0
.end method

.method public final i()Lcom/moloco/sdk/internal/services/bidtoken/providers/u;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->e:Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->b:Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ClientSignals(sdkInitialized="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->a:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", privacySettings="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->b:Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", memoryInfo="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", appDirInfo="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->d:Lcom/moloco/sdk/internal/services/bidtoken/providers/d;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", networkInfoSignal="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->e:Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", batteryInfoSignal="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->f:Lcom/moloco/sdk/internal/services/bidtoken/providers/h;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", adDataSignal="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->g:Lcom/moloco/sdk/internal/services/o;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", deviceSignal="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->h:Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", audioSignal="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->i:Lcom/moloco/sdk/internal/services/bidtoken/providers/f;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", accessibilitySignal="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->j:Lcom/moloco/sdk/internal/services/bidtoken/providers/a;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", ilrdSignal="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;->k:Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const/16 v1, 0x29

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method
