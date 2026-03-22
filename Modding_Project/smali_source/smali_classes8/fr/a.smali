.class public Lfr/a;
.super Ljava/lang/Object;
.source "BMError.java"


# static fields
.field public static final e:Lfr/a;

.field public static final f:Lfr/a;

.field public static final g:Lfr/a;

.field public static final h:Lfr/a;

.field public static final i:Lfr/a;

.field public static final j:Lfr/a;

.field public static final k:Lfr/a;

.field public static final l:Lfr/a;

.field public static final m:Lfr/a;

.field public static final n:Lfr/a;

.field public static final o:Lfr/a;

.field public static final p:Lfr/a;

.field public static final q:Lfr/a;

.field public static final r:Lfr/a;

.field public static final s:Lfr/a;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Z

.field private final d:Lfr/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lfr/a;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    const-string v2, "Can\'t connect to server"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lfr/a;-><init>(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lfr/a;->e:Lfr/a;

    .line 11
    .line 12
    new-instance v0, Lfr/a;

    .line 13
    .line 14
    const/16 v1, 0x66

    .line 15
    .line 16
    const-string v2, "Timeout reached"

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lfr/a;-><init>(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lfr/a;->f:Lfr/a;

    .line 22
    .line 23
    new-instance v0, Lfr/a;

    .line 24
    .line 25
    const/16 v1, 0x6e

    .line 26
    .line 27
    const-string v2, "Request contains bad syntax or cannot be fulfilled"

    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Lfr/a;-><init>(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lfr/a;->g:Lfr/a;

    .line 33
    .line 34
    new-instance v0, Lfr/a;

    .line 35
    .line 36
    const/16 v1, 0x6d

    .line 37
    .line 38
    const-string v2, "Server failed to fulfil an apparently valid request"

    .line 39
    .line 40
    invoke-direct {v0, v1, v2}, Lfr/a;-><init>(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lfr/a;->h:Lfr/a;

    .line 44
    .line 45
    new-instance v0, Lfr/a;

    .line 46
    .line 47
    const-string v1, "AdRequest expired, load new one please"

    .line 48
    .line 49
    const/16 v2, 0x6b

    .line 50
    .line 51
    invoke-direct {v0, v2, v1}, Lfr/a;-><init>(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lfr/a;->i:Lfr/a;

    .line 55
    .line 56
    new-instance v0, Lfr/a;

    .line 57
    .line 58
    const-string v1, "AdRequest destroyed, create new one please"

    .line 59
    .line 60
    const/16 v3, 0x6a

    .line 61
    .line 62
    invoke-direct {v0, v3, v1}, Lfr/a;-><init>(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Lfr/a;->j:Lfr/a;

    .line 66
    .line 67
    new-instance v0, Lfr/a;

    .line 68
    .line 69
    const-string v1, "AdResponse expired, load new one please"

    .line 70
    .line 71
    invoke-direct {v0, v2, v1}, Lfr/a;-><init>(ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Lfr/a;->k:Lfr/a;

    .line 75
    .line 76
    new-instance v0, Lfr/a;

    .line 77
    .line 78
    const-string v1, "AdResponse already was shown"

    .line 79
    .line 80
    const/16 v4, 0x6f

    .line 81
    .line 82
    invoke-direct {v0, v4, v1}, Lfr/a;-><init>(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sput-object v0, Lfr/a;->l:Lfr/a;

    .line 86
    .line 87
    new-instance v0, Lfr/a;

    .line 88
    .line 89
    const-string v1, "Ads was already shown, load new one please"

    .line 90
    .line 91
    invoke-direct {v0, v4, v1}, Lfr/a;-><init>(ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sput-object v0, Lfr/a;->m:Lfr/a;

    .line 95
    .line 96
    new-instance v0, Lfr/a;

    .line 97
    .line 98
    const-string v1, "Ads was expired, load new one please"

    .line 99
    .line 100
    invoke-direct {v0, v2, v1}, Lfr/a;-><init>(ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sput-object v0, Lfr/a;->n:Lfr/a;

    .line 104
    .line 105
    new-instance v0, Lfr/a;

    .line 106
    .line 107
    const-string v1, "Ads destroyed, load new one please"

    .line 108
    .line 109
    invoke-direct {v0, v3, v1}, Lfr/a;-><init>(ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lfr/a;->o:Lfr/a;

    .line 113
    .line 114
    new-instance v0, Lfr/a;

    .line 115
    .line 116
    const/16 v1, 0xc9

    .line 117
    .line 118
    const-string v2, "Placeholder timeout error"

    .line 119
    .line 120
    invoke-direct {v0, v1, v2}, Lfr/a;-><init>(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lfr/a;->p:Lfr/a;

    .line 124
    .line 125
    new-instance v0, Lfr/a;

    .line 126
    .line 127
    const-string v1, "No ads fill"

    .line 128
    .line 129
    const/16 v2, 0x67

    .line 130
    .line 131
    invoke-direct {v0, v2, v1}, Lfr/a;-><init>(ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lfr/a;->q:Lfr/a;

    .line 135
    .line 136
    const-string v0, "Unknown error"

    .line 137
    .line 138
    invoke-static {v0}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    sput-object v0, Lfr/a;->r:Lfr/a;

    .line 143
    .line 144
    new-instance v0, Lfr/a;

    .line 145
    .line 146
    const-string v1, "No bid"

    .line 147
    .line 148
    const/4 v3, 0x0

    .line 149
    invoke-direct {v0, v2, v1, v3}, Lfr/a;-><init>(ILjava/lang/String;Z)V

    .line 150
    .line 151
    .line 152
    sput-object v0, Lfr/a;->s:Lfr/a;

    .line 153
    .line 154
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lfr/a;-><init>(ILjava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Z)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lfr/a;-><init>(ILjava/lang/String;ZLfr/a;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;ZLfr/a;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lfr/a;->a:I

    .line 9
    const-string p1, "Unknown error"

    invoke-static {p2, p1}, Lio/bidmachine/core/g;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfr/a;->b:Ljava/lang/String;

    .line 10
    iput-boolean p3, p0, Lfr/a;->c:Z

    .line 11
    iput-object p4, p0, Lfr/a;->d:Lfr/a;

    return-void
.end method

.method public constructor <init>(Lfr/a;ILjava/lang/String;)V
    .locals 3
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lfr/a;->e()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lfr/a;->g()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lfr/a;->j()Z

    move-result p1

    new-instance v2, Lfr/a;

    invoke-direct {v2, p2, p3}, Lfr/a;-><init>(ILjava/lang/String;)V

    .line 4
    invoke-direct {p0, v0, v1, p1, v2}, Lfr/a;-><init>(ILjava/lang/String;ZLfr/a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lfr/a;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lfr/a;

    .line 2
    .line 3
    const/16 v1, 0xc8

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Lfr/a;-><init>(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lfr/a;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, " not found"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lfr/a;->a(Ljava/lang/String;)Lfr/a;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lfr/a;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Adapter SDK initialization error: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lfr/a;->a(Ljava/lang/String;)Lfr/a;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static d()Lfr/a;
    .locals 1

    .line 1
    const-string v0, "Adapter SDK not initialized"

    .line 2
    .line 3
    invoke-static {v0}, Lfr/a;->a(Ljava/lang/String;)Lfr/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static h(Ljava/lang/String;)Lfr/a;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lfr/a;

    .line 2
    .line 3
    const/16 v1, 0x65

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Lfr/a;-><init>(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static i(Ljava/lang/String;)Lfr/a;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lfr/a;

    .line 2
    .line 3
    const/16 v1, 0x6c

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Lfr/a;-><init>(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static k(Ljava/lang/String;)Lfr/a;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lfr/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p0, " not found"

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/16 v1, 0x67

    .line 21
    .line 22
    invoke-direct {v0, v1, p0}, Lfr/a;-><init>(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const-string v2, ": "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_0
    new-instance p1, Lfr/a;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, -0x1

    .line 42
    invoke-direct {p1, v2, v1}, Lfr/a;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    move-object v0, p1

    .line 46
    :catchall_0
    :cond_1
    new-instance p1, Lfr/a;

    .line 47
    .line 48
    const/16 v1, 0x6c

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-direct {p1, v1, p0, v2, v0}, Lfr/a;-><init>(ILjava/lang/String;ZLfr/a;)V

    .line 52
    .line 53
    .line 54
    return-object p1
.end method


# virtual methods
.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lfr/a;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    check-cast p1, Lfr/a;

    .line 20
    .line 21
    iget v1, p0, Lfr/a;->a:I

    .line 22
    .line 23
    iget v2, p1, Lfr/a;->a:I

    .line 24
    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    .line 27
    return v0

    .line 28
    :cond_2
    iget-object v0, p0, Lfr/a;->b:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p1, p1, Lfr/a;->b:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_3
    :goto_0
    return v0
.end method

.method public f()Lfr/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lfr/a;->d:Lfr/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lfr/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lfr/a;->a:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lfr/a;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfr/a;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lfr/a;->d:Lfr/a;

    .line 2
    .line 3
    const-string v1, ") "

    .line 4
    .line 5
    const-string v2, "("

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v2, p0, Lfr/a;->a:I

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lfr/a;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " - ("

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lfr/a;->d:Lfr/a;

    .line 36
    .line 37
    invoke-virtual {v1}, Lfr/a;->e()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, " - "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lfr/a;->d:Lfr/a;

    .line 50
    .line 51
    invoke-virtual {v1}, Lfr/a;->g()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ")"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget v2, p0, Lfr/a;->a:I

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lfr/a;->b:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0
.end method
