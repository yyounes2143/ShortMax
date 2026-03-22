.class public final Lg0/a;
.super Ljava/lang/Object;
.source "AssetUriFetcher.kt"

# interfaces
.implements Lg0/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg0/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lm0/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lm0/j;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lm0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg0/a;->a:Landroid/net/Uri;

    .line 5
    .line 6
    iput-object p2, p0, Lg0/a;->b:Lm0/j;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lrs/c;)Ljava/lang/Object;
    .locals 9
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lg0/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p1, p0, Lg0/a;->a:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Iterable;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->j0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Ljava/lang/Iterable;

    .line 16
    .line 17
    const/16 v7, 0x3e

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    const-string v1, "/"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v0, Lg0/l;

    .line 32
    .line 33
    iget-object v1, p0, Lg0/a;->b:Lm0/j;

    .line 34
    .line 35
    invoke-virtual {v1}, Lm0/j;->g()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Lg0/a;->b:Lm0/j;

    .line 56
    .line 57
    invoke-virtual {v2}, Lm0/j;->g()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    new-instance v3, Ld0/a;

    .line 62
    .line 63
    invoke-direct {v3, p1}, Ld0/a;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v2, v3}, Ld0/n;->b(Lokio/BufferedSource;Landroid/content/Context;Ld0/m$a;)Ld0/m;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v2, p1}, Lr0/i;->j(Landroid/webkit/MimeTypeMap;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sget-object v2, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    .line 79
    .line 80
    invoke-direct {v0, v1, p1, v2}, Lg0/l;-><init>(Ld0/m;Ljava/lang/String;Lcoil/decode/DataSource;)V

    .line 81
    .line 82
    .line 83
    return-object v0
.end method
