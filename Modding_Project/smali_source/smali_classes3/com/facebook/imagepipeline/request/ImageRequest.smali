.class public Lcom/facebook/imagepipeline/request/ImageRequest;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;,
        Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    }
.end annotation


# static fields
.field public static final A:Lk2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2/e<",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static y:Z

.field private static z:Z


# instance fields
.field private a:I

.field private final b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

.field private final c:Landroid/net/Uri;

.field private final d:I

.field private e:Ljava/io/File;

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Ls3/d;

.field private final j:Ls3/f;

.field private final k:Ls3/g;

.field private final l:Ls3/b;

.field private final m:Lcom/facebook/imagepipeline/common/Priority;

.field private final n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field protected o:I

.field private final p:Z

.field private final q:Z

.field private final r:Ljava/lang/Boolean;

.field private final s:Le4/b;

.field private final t:La4/e;

.field private final u:Ljava/lang/Boolean;

.field private final v:Lcom/facebook/imagepipeline/core/DownsampleMode;

.field private final w:Ljava/lang/String;

.field private final x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequest$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/imagepipeline/request/ImageRequest;->A:Lk2/e;

    .line 7
    .line 8
    return-void
.end method

.method protected constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequestBuilder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->r()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->y(Landroid/net/Uri;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:I

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->w()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Z

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->u()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->j()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->i()Ls3/d;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Ls3/d;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->o()Ls3/f;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Ls3/f;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->q()Ls3/g;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    invoke-static {}, Ls3/g;->c()Ls3/g;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->q()Ls3/g;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Ls3/g;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->c()Ls3/b;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Ls3/b;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->n()Lcom/facebook/imagepipeline/common/Priority;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Lcom/facebook/imagepipeline/common/Priority;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->k()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->t()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Z

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->e()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v0, :cond_1

    .line 98
    .line 99
    or-int/lit8 v1, v1, 0x30

    .line 100
    .line 101
    :cond_1
    iput v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:I

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->v()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Z

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->R()Ljava/lang/Boolean;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Ljava/lang/Boolean;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->l()Le4/b;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:Le4/b;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->m()La4/e;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->t:La4/e;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->p()Ljava/lang/Boolean;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->u:Ljava/lang/Boolean;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->h()Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->v:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->f()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    iput v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->x:I

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->g()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->w:Ljava/lang/String;

    .line 150
    .line 151
    return-void
.end method

.method public static a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->x(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 20
    :goto_1
    return-object p0
.end method

.method private static y(Landroid/net/Uri;)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Lr2/d;->o(Landroid/net/Uri;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-static {p0}, Lr2/d;->m(Landroid/net/Uri;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lm2/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lm2/a;->c(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    const/4 p0, 0x2

    .line 40
    return p0

    .line 41
    :cond_2
    const/4 p0, 0x3

    .line 42
    return p0

    .line 43
    :cond_3
    invoke-static {p0}, Lr2/d;->l(Landroid/net/Uri;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    const/4 p0, 0x4

    .line 50
    return p0

    .line 51
    :cond_4
    invoke-static {p0}, Lr2/d;->i(Landroid/net/Uri;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    const/4 p0, 0x5

    .line 58
    return p0

    .line 59
    :cond_5
    invoke-static {p0}, Lr2/d;->n(Landroid/net/Uri;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    const/4 p0, 0x6

    .line 66
    return p0

    .line 67
    :cond_6
    invoke-static {p0}, Lr2/d;->h(Landroid/net/Uri;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_7

    .line 72
    .line 73
    const/4 p0, 0x7

    .line 74
    return p0

    .line 75
    :cond_7
    invoke-static {p0}, Lr2/d;->p(Landroid/net/Uri;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_8

    .line 80
    .line 81
    const/16 p0, 0x8

    .line 82
    .line 83
    return p0

    .line 84
    :cond_8
    return v0
.end method


# virtual methods
.method public A()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ls3/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Ls3/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 8
    .line 9
    sget-boolean v0, Lcom/facebook/imagepipeline/request/ImageRequest;->y:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:I

    .line 14
    .line 15
    iget v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->a:I

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    .line 25
    .line 26
    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    .line 27
    .line 28
    if-eq v0, v2, :cond_2

    .line 29
    .line 30
    return v1

    .line 31
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Z

    .line 32
    .line 33
    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Z

    .line 34
    .line 35
    if-eq v0, v2, :cond_3

    .line 36
    .line 37
    return v1

    .line 38
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Z

    .line 39
    .line 40
    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Z

    .line 41
    .line 42
    if-eq v0, v2, :cond_4

    .line 43
    .line 44
    return v1

    .line 45
    :cond_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    .line 46
    .line 47
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    .line 48
    .line 49
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_9

    .line 54
    .line 55
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 56
    .line 57
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 58
    .line 59
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_9

    .line 64
    .line 65
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->w:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->w:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_9

    .line 74
    .line 75
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Ljava/io/File;

    .line 76
    .line 77
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Ljava/io/File;

    .line 78
    .line 79
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_9

    .line 84
    .line 85
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Ls3/b;

    .line 86
    .line 87
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Ls3/b;

    .line 88
    .line 89
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_9

    .line 94
    .line 95
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Ls3/d;

    .line 96
    .line 97
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Ls3/d;

    .line 98
    .line 99
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_9

    .line 104
    .line 105
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Ls3/f;

    .line 106
    .line 107
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Ls3/f;

    .line 108
    .line 109
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_9

    .line 114
    .line 115
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Lcom/facebook/imagepipeline/common/Priority;

    .line 116
    .line 117
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Lcom/facebook/imagepipeline/common/Priority;

    .line 118
    .line 119
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_9

    .line 124
    .line 125
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 126
    .line 127
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 128
    .line 129
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_9

    .line 134
    .line 135
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:I

    .line 136
    .line 137
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->o:I

    .line 142
    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_9

    .line 152
    .line 153
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Ljava/lang/Boolean;

    .line 154
    .line 155
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Ljava/lang/Boolean;

    .line 156
    .line 157
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_9

    .line 162
    .line 163
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->u:Ljava/lang/Boolean;

    .line 164
    .line 165
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->u:Ljava/lang/Boolean;

    .line 166
    .line 167
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_9

    .line 172
    .line 173
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->v:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 174
    .line 175
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->v:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 176
    .line 177
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_9

    .line 182
    .line 183
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Ls3/g;

    .line 184
    .line 185
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Ls3/g;

    .line 186
    .line 187
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_9

    .line 192
    .line 193
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    .line 194
    .line 195
    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    .line 196
    .line 197
    if-eq v0, v2, :cond_5

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_5
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:Le4/b;

    .line 201
    .line 202
    const/4 v2, 0x0

    .line 203
    if-eqz v0, :cond_6

    .line 204
    .line 205
    invoke-interface {v0}, Le4/b;->b()Lf2/a;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    goto :goto_0

    .line 210
    :cond_6
    move-object v0, v2

    .line 211
    :goto_0
    iget-object v3, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->s:Le4/b;

    .line 212
    .line 213
    if-eqz v3, :cond_7

    .line 214
    .line 215
    invoke-interface {v3}, Le4/b;->b()Lf2/a;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    :cond_7
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-nez v0, :cond_8

    .line 224
    .line 225
    return v1

    .line 226
    :cond_8
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->x:I

    .line 227
    .line 228
    iget p1, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->x:I

    .line 229
    .line 230
    if-ne v0, p1, :cond_9

    .line 231
    .line 232
    const/4 v1, 0x1

    .line 233
    :cond_9
    :goto_1
    return v1
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/core/DownsampleMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->v:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    sget-boolean v0, Lcom/facebook/imagepipeline/request/ImageRequest;->z:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v2, v1

    .line 10
    :goto_0
    if-nez v2, :cond_2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:Le4/b;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v2}, Le4/b;->b()Lf2/a;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v2, 0x0

    .line 22
    :goto_1
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lt4/a;->a(ILjava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    .line 29
    .line 30
    invoke-static {v1, v3}, Lt4/a;->a(ILjava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-boolean v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    .line 35
    .line 36
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v1, v3}, Lt4/a;->a(ILjava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Ls3/b;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lt4/a;->a(ILjava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Lcom/facebook/imagepipeline/common/Priority;

    .line 51
    .line 52
    invoke-static {v1, v3}, Lt4/a;->a(ILjava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 57
    .line 58
    invoke-static {v1, v3}, Lt4/a;->a(ILjava/lang/Object;)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iget v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:I

    .line 63
    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v1, v3}, Lt4/a;->a(ILjava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iget-boolean v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Z

    .line 73
    .line 74
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v1, v3}, Lt4/a;->a(ILjava/lang/Object;)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iget-boolean v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Z

    .line 83
    .line 84
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-static {v1, v3}, Lt4/a;->a(ILjava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Ls3/d;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lt4/a;->a(ILjava/lang/Object;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-static {v1, v3}, Lt4/a;->a(ILjava/lang/Object;)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Ls3/f;

    .line 105
    .line 106
    invoke-static {v1, v3}, Lt4/a;->a(ILjava/lang/Object;)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Ls3/g;

    .line 111
    .line 112
    invoke-static {v1, v3}, Lt4/a;->a(ILjava/lang/Object;)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-static {v1, v2}, Lt4/a;->a(ILjava/lang/Object;)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->u:Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-static {v1, v2}, Lt4/a;->a(ILjava/lang/Object;)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->v:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 127
    .line 128
    invoke-static {v1, v2}, Lt4/a;->a(ILjava/lang/Object;)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    iget v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->x:I

    .line 133
    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-static {v1, v2}, Lt4/a;->a(ILjava/lang/Object;)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    .line 143
    .line 144
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v1, v2}, Lt4/a;->a(ILjava/lang/Object;)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v0, :cond_2

    .line 153
    .line 154
    iput v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:I

    .line 155
    .line 156
    :cond_2
    return v2
.end method

.method public i()Ls3/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Ls3/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public l()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Le4/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:Le4/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Ls3/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Ls3/f;->b:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x800

    .line 9
    .line 10
    :goto_0
    return v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Ls3/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Ls3/f;->a:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x800

    .line 9
    .line 10
    :goto_0
    return v0
.end method

.method public p()Lcom/facebook/imagepipeline/common/Priority;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Lcom/facebook/imagepipeline/common/Priority;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public r()La4/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->t:La4/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Ls3/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Ls3/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->u:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lk2/f;->b(Ljava/lang/Object;)Lk2/f$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "uri"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "cacheChoice"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "decodeOptions"

    .line 22
    .line 23
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Ls3/d;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "postprocessor"

    .line 30
    .line 31
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:Le4/b;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "priority"

    .line 38
    .line 39
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Lcom/facebook/imagepipeline/common/Priority;

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "resizeOptions"

    .line 46
    .line 47
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Ls3/f;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "rotationOptions"

    .line 54
    .line 55
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Ls3/g;

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "bytesRange"

    .line 62
    .line 63
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Ls3/b;

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "resizingAllowedOverride"

    .line 70
    .line 71
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->u:Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "downsampleOverride"

    .line 78
    .line 79
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->v:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "progressiveRenderingEnabled"

    .line 86
    .line 87
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Z

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->d(Ljava/lang/String;Z)Lk2/f$a;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "localThumbnailPreviewsEnabled"

    .line 94
    .line 95
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->d(Ljava/lang/String;Z)Lk2/f$a;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "loadThumbnailOnly"

    .line 102
    .line 103
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->d(Ljava/lang/String;Z)Lk2/f$a;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "lowestPermittedRequestLevel"

    .line 110
    .line 111
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v1, "cachesDisabled"

    .line 118
    .line 119
    iget v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:I

    .line 120
    .line 121
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->a(Ljava/lang/String;I)Lk2/f$a;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v1, "isDiskCacheEnabled"

    .line 126
    .line 127
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Z

    .line 128
    .line 129
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->d(Ljava/lang/String;Z)Lk2/f$a;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v1, "isMemoryCacheEnabled"

    .line 134
    .line 135
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Z

    .line 136
    .line 137
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->d(Ljava/lang/String;Z)Lk2/f$a;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const-string v1, "decodePrefetches"

    .line 142
    .line 143
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Ljava/lang/Boolean;

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v1, "delayMs"

    .line 150
    .line 151
    iget v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->x:I

    .line 152
    .line 153
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->a(Ljava/lang/String;I)Lk2/f$a;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lk2/f$a;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    return-object v0
.end method

.method public u()Ls3/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Ls3/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized v()Ljava/io/File;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Ljava/io/File;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/io/File;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Ljava/io/File;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-object v0

    .line 35
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw v0
.end method

.method public w()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public z(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/2addr p1, v0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method
