.class public final Lcom/facebook/imageformat/b;
.super Ljava/lang/Object;
.source "DefaultImageFormats.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/facebook/imageformat/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lcom/facebook/imageformat/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lcom/facebook/imageformat/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lcom/facebook/imageformat/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Lcom/facebook/imageformat/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Lcom/facebook/imageformat/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Lcom/facebook/imageformat/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Lcom/facebook/imageformat/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Lcom/facebook/imageformat/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Lcom/facebook/imageformat/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Lcom/facebook/imageformat/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:Lcom/facebook/imageformat/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:Lcom/facebook/imageformat/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final n:Lcom/facebook/imageformat/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final o:Lcom/facebook/imageformat/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/imageformat/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/facebook/imageformat/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/imageformat/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/b;

    .line 7
    .line 8
    new-instance v1, Lcom/facebook/imageformat/c;

    .line 9
    .line 10
    const-string v0, "JPEG"

    .line 11
    .line 12
    const-string v2, "jpeg"

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/facebook/imageformat/b;->b:Lcom/facebook/imageformat/c;

    .line 18
    .line 19
    new-instance v2, Lcom/facebook/imageformat/c;

    .line 20
    .line 21
    const-string v0, "PNG"

    .line 22
    .line 23
    const-string v3, "png"

    .line 24
    .line 25
    invoke-direct {v2, v0, v3}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sput-object v2, Lcom/facebook/imageformat/b;->c:Lcom/facebook/imageformat/c;

    .line 29
    .line 30
    new-instance v3, Lcom/facebook/imageformat/c;

    .line 31
    .line 32
    const-string v0, "GIF"

    .line 33
    .line 34
    const-string v4, "gif"

    .line 35
    .line 36
    invoke-direct {v3, v0, v4}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/facebook/imageformat/b;->d:Lcom/facebook/imageformat/c;

    .line 40
    .line 41
    new-instance v4, Lcom/facebook/imageformat/c;

    .line 42
    .line 43
    const-string v0, "BMP"

    .line 44
    .line 45
    const-string v5, "bmp"

    .line 46
    .line 47
    invoke-direct {v4, v0, v5}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sput-object v4, Lcom/facebook/imageformat/b;->e:Lcom/facebook/imageformat/c;

    .line 51
    .line 52
    new-instance v5, Lcom/facebook/imageformat/c;

    .line 53
    .line 54
    const-string v0, "ICO"

    .line 55
    .line 56
    const-string v6, "ico"

    .line 57
    .line 58
    invoke-direct {v5, v0, v6}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sput-object v5, Lcom/facebook/imageformat/b;->f:Lcom/facebook/imageformat/c;

    .line 62
    .line 63
    new-instance v6, Lcom/facebook/imageformat/c;

    .line 64
    .line 65
    const-string v0, "WEBP_SIMPLE"

    .line 66
    .line 67
    const-string v7, "webp"

    .line 68
    .line 69
    invoke-direct {v6, v0, v7}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sput-object v6, Lcom/facebook/imageformat/b;->g:Lcom/facebook/imageformat/c;

    .line 73
    .line 74
    new-instance v0, Lcom/facebook/imageformat/c;

    .line 75
    .line 76
    const-string v8, "WEBP_LOSSLESS"

    .line 77
    .line 78
    invoke-direct {v0, v8, v7}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/facebook/imageformat/b;->h:Lcom/facebook/imageformat/c;

    .line 82
    .line 83
    new-instance v8, Lcom/facebook/imageformat/c;

    .line 84
    .line 85
    const-string v9, "WEBP_EXTENDED"

    .line 86
    .line 87
    invoke-direct {v8, v9, v7}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sput-object v8, Lcom/facebook/imageformat/b;->i:Lcom/facebook/imageformat/c;

    .line 91
    .line 92
    new-instance v9, Lcom/facebook/imageformat/c;

    .line 93
    .line 94
    const-string v10, "WEBP_EXTENDED_WITH_ALPHA"

    .line 95
    .line 96
    invoke-direct {v9, v10, v7}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sput-object v9, Lcom/facebook/imageformat/b;->j:Lcom/facebook/imageformat/c;

    .line 100
    .line 101
    new-instance v10, Lcom/facebook/imageformat/c;

    .line 102
    .line 103
    const-string v11, "WEBP_ANIMATED"

    .line 104
    .line 105
    invoke-direct {v10, v11, v7}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v10, Lcom/facebook/imageformat/b;->k:Lcom/facebook/imageformat/c;

    .line 109
    .line 110
    new-instance v11, Lcom/facebook/imageformat/c;

    .line 111
    .line 112
    const-string v7, "HEIF"

    .line 113
    .line 114
    const-string v12, "heif"

    .line 115
    .line 116
    invoke-direct {v11, v7, v12}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sput-object v11, Lcom/facebook/imageformat/b;->l:Lcom/facebook/imageformat/c;

    .line 120
    .line 121
    new-instance v7, Lcom/facebook/imageformat/c;

    .line 122
    .line 123
    const-string v12, "DNG"

    .line 124
    .line 125
    const-string v13, "dng"

    .line 126
    .line 127
    invoke-direct {v7, v12, v13}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sput-object v7, Lcom/facebook/imageformat/b;->m:Lcom/facebook/imageformat/c;

    .line 131
    .line 132
    new-instance v12, Lcom/facebook/imageformat/c;

    .line 133
    .line 134
    const-string v7, "BINARY_XML"

    .line 135
    .line 136
    const-string v13, "xml"

    .line 137
    .line 138
    invoke-direct {v12, v7, v13}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    sput-object v12, Lcom/facebook/imageformat/b;->n:Lcom/facebook/imageformat/c;

    .line 142
    .line 143
    new-instance v13, Lcom/facebook/imageformat/c;

    .line 144
    .line 145
    const-string v7, "AVIF"

    .line 146
    .line 147
    const-string v14, "avif"

    .line 148
    .line 149
    invoke-direct {v13, v7, v14}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    sput-object v13, Lcom/facebook/imageformat/b;->o:Lcom/facebook/imageformat/c;

    .line 153
    .line 154
    move-object v7, v0

    .line 155
    filled-new-array/range {v1 .. v13}, [Lcom/facebook/imageformat/c;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    sput-object v0, Lcom/facebook/imageformat/b;->p:Ljava/util/List;

    .line 164
    .line 165
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a(Lcom/facebook/imageformat/c;)Z
    .locals 1
    .param p0    # Lcom/facebook/imageformat/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "imageFormat"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/facebook/imageformat/b;->g:Lcom/facebook/imageformat/c;

    .line 7
    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lcom/facebook/imageformat/b;->h:Lcom/facebook/imageformat/c;

    .line 11
    .line 12
    if-eq p0, v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Lcom/facebook/imageformat/b;->i:Lcom/facebook/imageformat/c;

    .line 15
    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    .line 18
    sget-object v0, Lcom/facebook/imageformat/b;->j:Lcom/facebook/imageformat/c;

    .line 19
    .line 20
    if-ne p0, v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 26
    :goto_1
    return p0
.end method

.method public static final b(Lcom/facebook/imageformat/c;)Z
    .locals 1
    .param p0    # Lcom/facebook/imageformat/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "imageFormat"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/facebook/imageformat/b;->a(Lcom/facebook/imageformat/c;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Lcom/facebook/imageformat/b;->k:Lcom/facebook/imageformat/c;

    .line 13
    .line 14
    if-ne p0, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 20
    :goto_1
    return p0
.end method
