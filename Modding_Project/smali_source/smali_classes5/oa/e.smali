.class public final Loa/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Loa/b;

.field private c:Ljava/io/InputStream;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lra/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Loa/b;->b:Loa/b;

    .line 5
    .line 6
    iput-object v0, p0, Loa/e;->b:Loa/b;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Loa/e;->d:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Loa/e;->e:Ljava/util/List;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Loa/d;
    .locals 9

    .line 1
    new-instance v8, Lqa/c;

    .line 2
    .line 3
    iget-object v2, p0, Loa/e;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v3, p0, Loa/e;->b:Loa/b;

    .line 6
    .line 7
    iget-object v4, p0, Loa/e;->c:Ljava/io/InputStream;

    .line 8
    .line 9
    iget-object v5, p0, Loa/e;->d:Ljava/util/Map;

    .line 10
    .line 11
    iget-object v6, p0, Loa/e;->e:Ljava/util/List;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    move-object v0, v8

    .line 15
    move-object v1, p1

    .line 16
    invoke-direct/range {v0 .. v7}, Lqa/c;-><init>(Landroid/content/Context;Ljava/lang/String;Loa/b;Ljava/io/InputStream;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v8
.end method

.method public b(Ljava/io/InputStream;)Loa/e;
    .locals 0

    .line 1
    iput-object p1, p0, Loa/e;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method
