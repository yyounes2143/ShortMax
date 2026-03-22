.class public Lcom/applovin/impl/sdk/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/applovin/impl/sdk/k;

.field private final c:Lcom/applovin/impl/sdk/o;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/Set;

.field private final f:Z

.field private final g:Lcom/applovin/impl/f2;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "FileManager"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/applovin/impl/sdk/m;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/applovin/impl/sdk/m;->d:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/applovin/impl/sdk/m;->e:Ljava/util/Set;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    .line 29
    .line 30
    sget-object v0, Lcom/applovin/impl/v4;->U0:Lcom/applovin/impl/v4;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput-boolean p1, p0, Lcom/applovin/impl/sdk/m;->f:Z

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/applovin/impl/sdk/m;->a()Lcom/applovin/impl/f2;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/applovin/impl/sdk/m;->g:Lcom/applovin/impl/f2;

    .line 49
    .line 50
    return-void
.end method

.method private a(J)J
    .locals 2

    const-wide/32 v0, 0x100000

    .line 226
    div-long/2addr p1, v0

    return-wide p1
.end method

.method private a(Landroid/content/Context;)J
    .locals 13

    .line 198
    invoke-direct {p0}, Lcom/applovin/impl/sdk/m;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 199
    :goto_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    .line 200
    iget-object v6, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    sget-object v7, Lcom/applovin/impl/v4;->G0:Lcom/applovin/impl/v4;

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/k;->c(Lcom/applovin/impl/v4;)Ljava/util/List;

    move-result-object v6

    .line 201
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v7, 0x0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    if-eqz v2, :cond_3

    .line 202
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-direct {p0, v9}, Lcom/applovin/impl/sdk/m;->c(Ljava/io/File;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 203
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v10

    sub-long v10, v4, v10

    cmp-long v10, v10, v0

    if-lez v10, :cond_3

    .line 204
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " has expired, removing..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "FileManager"

    invoke-virtual {v10, v12, v11}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_2
    invoke-direct {p0, v9}, Lcom/applovin/impl/sdk/m;->g(Ljava/io/File;)Z

    move-result v10

    goto :goto_2

    :cond_3
    move v10, v3

    :goto_2
    if-nez v10, :cond_1

    .line 206
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    goto :goto_1

    :cond_4
    return-wide v7
.end method

.method private a()Lcom/applovin/impl/f2;
    .locals 4

    .line 2
    invoke-static {}, Lcom/applovin/impl/o0;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/v4;->q3:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    new-instance v0, Lcom/applovin/impl/a4;

    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-direct {v0, v1}, Lcom/applovin/impl/a4;-><init>(Lcom/applovin/impl/sdk/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v1

    const-string v2, "FileManager"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v3, "Error instantiating OkHttpLoader, falling back to HttpUrlConnectionLoader"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v1

    const-string v3, "instantiateOkHttpLoader"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :cond_1
    new-instance v0, Lcom/applovin/impl/g2;

    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-direct {v0, v1}, Lcom/applovin/impl/g2;-><init>(Lcom/applovin/impl/sdk/k;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;ZLandroid/content/Context;)Ljava/io/File;
    .locals 5

    .line 8
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FileManager"

    if-nez v0, :cond_1

    .line 9
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string p2, "Nothing to look up, skipping..."

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1

    .line 10
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Looking up cached resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_2
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    const-string v0, "/"

    const-string v3, "_"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_3
    invoke-direct {p0, p3}, Lcom/applovin/impl/sdk/m;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object p3

    .line 14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 15
    :try_start_0
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 16
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to make cache directory at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v2, p3, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :cond_4
    iget-object p2, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object p2

    const-string p3, "createCacheDir"

    invoke-virtual {p2, v2, p3, p1}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_5
    :goto_0
    return-object v0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 162
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "path"

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 163
    const-string/jumbo v0, "url"

    invoke-static {v0, p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 164
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "duration_ms"

    invoke-static {p3, p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putObjectToStringIfValid(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 165
    invoke-virtual {p1, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object p1
.end method

.method private a(JLandroid/content/Context;)V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/v4;->C0:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const-string v3, "FileManager"

    if-nez v2, :cond_0

    .line 208
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string p2, "Cache has no maximum size set; skipping drop..."

    invoke-virtual {p1, v3, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 209
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/m;->a(J)J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-lez p1, :cond_2

    .line 210
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string p2, "Cache has exceeded maximum size; dropping..."

    invoke-virtual {p1, v3, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_1
    invoke-direct {p0, p3}, Lcom/applovin/impl/sdk/m;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 212
    invoke-direct {p0, p2}, Lcom/applovin/impl/sdk/m;->g(Ljava/io/File;)Z

    goto :goto_0

    .line 213
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string p2, "Cache is present but under size limit; not dropping..."

    invoke-virtual {p1, v3, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;)V
    .locals 2

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->l()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 215
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->v0()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->addObjectIfExists(Ljava/lang/Object;Ljava/util/List;)Z

    .line 216
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 217
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 218
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/m;->g(Ljava/io/File;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/sdk/m;Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/m;->b(Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;)V

    return-void
.end method

.method private a(ZLjava/lang/String;IJLjava/util/Map;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 166
    sget-object p1, Lcom/applovin/impl/c2;->z:Lcom/applovin/impl/c2;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/applovin/impl/c2;->A:Lcom/applovin/impl/c2;

    .line 167
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p4

    .line 168
    new-instance p4, Ljava/util/HashMap;

    const/4 p5, 0x3

    invoke-direct {p4, p5}, Ljava/util/HashMap;-><init>(I)V

    .line 169
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    const-string p5, "attempt_number"

    invoke-virtual {p4, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo p3, "url"

    invoke-virtual {p4, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "duration_ms"

    invoke-virtual {p4, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p4, p6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 173
    iget-object p2, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    move-result-object p2

    invoke-virtual {p2, p1, p4}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;ZILjava/lang/String;Ljava/util/Map;)Z
    .locals 15

    .line 117
    const-string/jumbo v0, "url"

    move-object/from16 v8, p2

    invoke-static {v0, v8}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    move-object/from16 v9, p7

    .line 118
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    move-object v10, p0

    .line 119
    iget-object v1, v10, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/c2;->x:Lcom/applovin/impl/c2;

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const/4 v0, 0x1

    move/from16 v14, p5

    move v13, v0

    :goto_0
    if-gt v13, v14, :cond_1

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 121
    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    move-object v1, p0

    move-object/from16 v3, p2

    move v4, v13

    move-wide v5, v11

    move-object/from16 v7, p7

    .line 122
    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/sdk/m;->a(ZLjava/lang/String;IJLjava/util/Map;)V

    return v0

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p5

    move-wide v5, v11

    move-object/from16 v7, p7

    .line 123
    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/sdk/m;->a(ZLjava/lang/String;IJLjava/util/Map;)V

    const/4 v0, 0x0

    return v0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/util/Map;)Z
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v6, p6

    .line 124
    iget-object v1, v7, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    sget-object v2, Lcom/applovin/impl/v4;->V0:Lcom/applovin/impl/v4;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/Boolean;

    .line 125
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-direct/range {p0 .. p1}, Lcom/applovin/impl/sdk/m;->d(Ljava/io/File;)V

    .line 127
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;)Z

    move-result v1

    const-string v10, "FileManager"

    if-eqz v1, :cond_3

    .line 128
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File exists for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_1
    const-string/jumbo v1, "url"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 131
    iget-object v1, v7, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/c2;->y:Lcom/applovin/impl/c2;

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    .line 132
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    invoke-direct/range {p0 .. p1}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v11, 0x0

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 135
    :try_start_0
    invoke-virtual {v7, v0, v3, v4, v6}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;)Ljava/io/InputStream;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :try_start_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v7, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caching "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_3

    .line 137
    :cond_4
    :goto_0
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v7, v12, v8, v11, v3}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/InputStream;Ljava/io/File;ZZ)Z

    move-result v13

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v4, v3, v1

    if-eqz v13, :cond_6

    .line 139
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching completed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_5
    invoke-static {v4, v5}, Lcom/applovin/impl/k7;->d(J)D

    move-result-wide v1

    .line 141
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/applovin/impl/k7;->c(J)D

    move-result-wide v14

    div-double v1, v14, v1

    double-to-long v2, v1

    move-object/from16 v1, p0

    move-wide/from16 p3, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p6

    .line 142
    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 143
    const-string v2, "network_throughput_kbps"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putObjectToStringIfValid(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 144
    const-string v2, "details"

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putObjectToStringIfValid(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 145
    iget-object v2, v7, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/c2;->D:Lcom/applovin/impl/c2;

    invoke-virtual {v2, v3, v1}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    .line 146
    iget-object v1, v7, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->d0()Lcom/applovin/impl/z3;

    move-result-object v1

    move-wide/from16 v3, p3

    move-object/from16 v2, p5

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/applovin/impl/z3;->b(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_6
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v7, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p6

    .line 148
    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 149
    iget-object v1, v7, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/c2;->E:Lcom/applovin/impl/c2;

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v12, :cond_8

    .line 150
    :try_start_2
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 151
    :cond_8
    :goto_2
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 152
    invoke-direct/range {p0 .. p1}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    :cond_9
    return v13

    :goto_3
    if-eqz v12, :cond_a

    .line 153
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 154
    :cond_a
    :goto_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    :goto_5
    :try_start_5
    iget-object v1, v7, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v1, v10, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    iget-object v1, v7, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v1

    const-string v2, "loadAndCacheResource"

    invoke-virtual {v1, v10, v2, v0}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 157
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 158
    invoke-direct/range {p0 .. p1}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    :cond_b
    return v11

    :catchall_3
    move-exception v0

    .line 159
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 160
    invoke-direct/range {p0 .. p1}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    .line 161
    :cond_c
    throw v0
.end method

.method private a(Ljava/io/InputStream;Ljava/io/File;ZZ)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 28
    const-string v4, "removeFileAfterCacheFail"

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    const-string v5, "FileManager"

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Writing resource to filesystem: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    iget-boolean v0, v1, Lcom/applovin/impl/sdk/m;->f:Z

    const-string/jumbo v6, "writeResource"

    const-string v7, "Unknown failure to write file."

    const-string/jumbo v8, "writeResourceStream"

    const-string v9, "Failed to write next buffer to file"

    const-string v11, "cacheResourceOverwriteAttempted"

    const-string v12, "path"

    const-string v13, " - aborting write."

    const-string v14, "Overwrite not allowed for local resource: "

    const-string v10, "closeResourceStream"

    const-string v15, "Unable to close resourceStream."

    move-object/from16 v17, v6

    if-nez v0, :cond_14

    if-nez p4, :cond_1

    .line 30
    invoke-direct {v1, v3}, Lcom/applovin/impl/sdk/m;->d(Ljava/io/File;)V

    .line 31
    :cond_1
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    sget-object v6, Lcom/applovin/impl/v4;->Q0:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v6}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 34
    iget-object v2, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/c2;->D0:Lcom/applovin/impl/c2;

    invoke-virtual {v2, v3, v11, v0}, Lcom/applovin/impl/d2;->a(Lcom/applovin/impl/c2;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v2, 0x1

    return v2

    .line 35
    :cond_3
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/16 v0, 0x2000

    .line 36
    :try_start_1
    new-array v11, v0, [B

    :goto_0
    const/4 v12, 0x0

    .line 37
    invoke-virtual {v2, v11, v12, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ltz v13, :cond_8

    .line 38
    :try_start_2
    invoke-virtual {v6, v11, v12, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v0, 0x2000

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v11, v0

    .line 39
    :try_start_3
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v0, v5, v9, v11}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v9, v0

    const/4 v8, 0x0

    goto/16 :goto_6

    .line 40
    :cond_4
    :goto_1
    :try_start_4
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v0

    invoke-virtual {v0, v5, v8, v11}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 41
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 42
    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;Ljava/lang/String;)V

    if-nez p4, :cond_5

    .line 43
    invoke-direct {v1, v3}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    .line 44
    :cond_5
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    sget-object v3, Lcom/applovin/impl/v4;->p3:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_6
    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 46
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v0, v5, v15, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    :cond_7
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v0

    invoke-virtual {v0, v5, v10, v2}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_3
    return v2

    :catchall_3
    move-exception v0

    const/4 v8, 0x1

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v9, v0

    const/4 v8, 0x1

    goto :goto_6

    .line 48
    :cond_8
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-nez p4, :cond_9

    .line 49
    invoke-direct {v1, v3}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    .line 50
    :cond_9
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    sget-object v3, Lcom/applovin/impl/v4;->p3:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 51
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_a
    :goto_4
    const/4 v2, 0x1

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    .line 52
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v0, v5, v15, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    :cond_b
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v0

    invoke-virtual {v0, v5, v10, v2}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_5
    return v2

    :catchall_6
    move-exception v0

    const/4 v8, 0x0

    goto :goto_8

    .line 54
    :goto_6
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object v6, v0

    :try_start_a
    invoke-virtual {v9, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :catchall_8
    move-exception v0

    .line 55
    :goto_8
    :try_start_b
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v1, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v6, v5, v7, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catchall_9
    move-exception v0

    move-object v6, v0

    goto :goto_c

    .line 56
    :cond_c
    :goto_9
    iget-object v6, v1, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v6, v5, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 57
    :try_start_c
    iget-object v6, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v6

    move-object/from16 v7, v17

    invoke-virtual {v6, v5, v7, v0}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 58
    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;Ljava/lang/String;)V

    if-nez p4, :cond_d

    .line 59
    invoke-direct {v1, v3}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    .line 60
    :cond_d
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    sget-object v3, Lcom/applovin/impl/v4;->p3:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 61
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    :cond_e
    :goto_a
    const/4 v2, 0x0

    goto :goto_b

    :catchall_a
    move-exception v0

    move-object v2, v0

    .line 62
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v0, v5, v15, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    :cond_f
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v0

    invoke-virtual {v0, v5, v10, v2}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :goto_b
    return v2

    :catchall_b
    move-exception v0

    move-object v6, v0

    const/4 v8, 0x1

    :goto_c
    if-eqz v8, :cond_10

    .line 64
    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;Ljava/lang/String;)V

    :cond_10
    if-nez p4, :cond_11

    .line 65
    invoke-direct {v1, v3}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    .line 66
    :cond_11
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    sget-object v3, Lcom/applovin/impl/v4;->p3:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 67
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    goto :goto_d

    :catchall_c
    move-exception v0

    move-object v2, v0

    .line 68
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v0, v5, v15, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    :cond_12
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v0

    invoke-virtual {v0, v5, v10, v2}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    :cond_13
    :goto_d
    throw v6

    :cond_14
    move-object/from16 v4, v17

    if-nez p4, :cond_15

    .line 71
    :try_start_f
    invoke-direct {v1, v3}, Lcom/applovin/impl/sdk/m;->d(Ljava/io/File;)V

    goto :goto_e

    :catchall_d
    move-exception v0

    const/4 v8, 0x1

    goto/16 :goto_19

    .line 72
    :cond_15
    :goto_e
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    sget-object v6, Lcom/applovin/impl/v4;->Q0:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v6}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    if-nez p3, :cond_1a

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 73
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_16
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 75
    iget-object v6, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v6

    sget-object v8, Lcom/applovin/impl/c2;->D0:Lcom/applovin/impl/c2;

    invoke-virtual {v6, v8, v11, v0}, Lcom/applovin/impl/d2;->a(Lcom/applovin/impl/c2;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    if-nez p4, :cond_17

    .line 76
    invoke-direct {v1, v3}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    .line 77
    :cond_17
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    sget-object v3, Lcom/applovin/impl/v4;->p3:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 78
    :try_start_10
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    :cond_18
    :goto_f
    const/4 v2, 0x1

    goto :goto_10

    :catchall_e
    move-exception v0

    move-object v2, v0

    .line 79
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v0, v5, v15, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :cond_19
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v0

    invoke-virtual {v0, v5, v10, v2}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    :goto_10
    return v2

    .line 81
    :cond_1a
    :try_start_11
    new-instance v6, Landroidx/core/util/AtomicFile;

    invoke-direct {v6, v3}, Landroidx/core/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    .line 82
    :try_start_12
    invoke-virtual {v6}, Landroidx/core/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v11
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_14

    const/16 v0, 0x2000

    .line 83
    :try_start_13
    new-array v12, v0, [B

    :goto_11
    const/4 v13, 0x0

    .line 84
    invoke-virtual {v2, v12, v13, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v14
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_10

    if-ltz v14, :cond_1f

    .line 85
    :try_start_14
    invoke-virtual {v11, v12, v13, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception v0

    move-object v12, v0

    .line 86
    :try_start_15
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v0, v5, v9, v12}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_10

    goto :goto_13

    :catchall_10
    move-exception v0

    const/4 v8, 0x1

    :goto_12
    const/16 v16, 0x0

    goto/16 :goto_18

    .line 87
    :cond_1b
    :goto_13
    :try_start_16
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v0

    invoke-virtual {v0, v5, v8, v12}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_12

    .line 88
    invoke-virtual {v6, v11}, Landroidx/core/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    if-nez p4, :cond_1c

    .line 89
    invoke-direct {v1, v3}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    .line 90
    :cond_1c
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    sget-object v3, Lcom/applovin/impl/v4;->p3:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 91
    :try_start_17
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_11

    :cond_1d
    :goto_14
    const/4 v2, 0x0

    goto :goto_15

    :catchall_11
    move-exception v0

    move-object v2, v0

    .line 92
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v0, v5, v15, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    :cond_1e
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v0

    invoke-virtual {v0, v5, v10, v2}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    :goto_15
    return v2

    :catchall_12
    move-exception v0

    const/4 v8, 0x1

    const/16 v16, 0x1

    goto :goto_18

    .line 94
    :cond_1f
    invoke-virtual {v6, v11}, Landroidx/core/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    if-nez p4, :cond_20

    .line 95
    invoke-direct {v1, v3}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    .line 96
    :cond_20
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    sget-object v3, Lcom/applovin/impl/v4;->p3:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 97
    :try_start_18
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_13

    :cond_21
    :goto_16
    const/4 v8, 0x1

    goto :goto_17

    :catchall_13
    move-exception v0

    move-object v2, v0

    .line 98
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v0, v5, v15, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    :cond_22
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v0

    invoke-virtual {v0, v5, v10, v2}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    :goto_17
    return v8

    :catchall_14
    move-exception v0

    const/4 v8, 0x1

    const/4 v11, 0x0

    goto :goto_12

    :goto_18
    move/from16 v12, v16

    goto :goto_1a

    :goto_19
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 100
    :goto_1a
    :try_start_19
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v9

    if-eqz v9, :cond_23

    iget-object v9, v1, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v9, v5, v7, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_15

    goto :goto_1b

    :catchall_15
    move-exception v0

    move-object v4, v0

    goto :goto_1e

    .line 101
    :cond_23
    :goto_1b
    :try_start_1a
    iget-object v7, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v7}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v7

    invoke-virtual {v7, v5, v4, v0}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_17

    if-eqz v6, :cond_24

    .line 102
    invoke-virtual {v6, v11}, Landroidx/core/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_24
    if-nez p4, :cond_25

    .line 103
    invoke-direct {v1, v3}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    .line 104
    :cond_25
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    sget-object v3, Lcom/applovin/impl/v4;->p3:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 105
    :try_start_1b
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_16

    :cond_26
    :goto_1c
    const/4 v2, 0x0

    goto :goto_1d

    :catchall_16
    move-exception v0

    move-object v2, v0

    .line 106
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v0, v5, v15, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    :cond_27
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v0

    invoke-virtual {v0, v5, v10, v2}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c

    :goto_1d
    return v2

    :catchall_17
    move-exception v0

    move-object v4, v0

    move v12, v8

    :goto_1e
    if-eqz v6, :cond_29

    if-eqz v12, :cond_28

    .line 108
    invoke-virtual {v6, v11}, Landroidx/core/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1f

    .line 109
    :cond_28
    invoke-virtual {v6, v11}, Landroidx/core/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    :cond_29
    :goto_1f
    if-nez p4, :cond_2a

    .line 110
    invoke-direct {v1, v3}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    .line 111
    :cond_2a
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    sget-object v3, Lcom/applovin/impl/v4;->p3:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 112
    :try_start_1c
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_18

    goto :goto_20

    :catchall_18
    move-exception v0

    move-object v2, v0

    .line 113
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v0, v5, v15, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    :cond_2b
    iget-object v0, v1, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v0

    invoke-virtual {v0, v5, v10, v2}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    :cond_2c
    :goto_20
    throw v4
.end method

.method private b()J
    .locals 4

    .line 18
    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/v4;->B0:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private b(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .line 9
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 12
    array-length v2, v2

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move v2, v3

    .line 13
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-eqz v5, :cond_2

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_2

    move v3, v4

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileExists: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\nisDirectory: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\nisEmptyDirectory: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\nparentDirectoryExists: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\nisParentDirectoryWritable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 17
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error retrieving file deletion failure reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic b(Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->v0()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->v0()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->g(Ljava/io/File;)Z

    return-void
.end method

.method public static synthetic b(Lcom/applovin/impl/sdk/m;Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/m;->a(Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/io/File;)Z
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private d(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 11
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "al"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private d(Ljava/io/File;)V
    .locals 6

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v1, :cond_1

    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 6
    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 7
    :try_start_2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v3, "FileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lock \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' interrupted"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 9
    :cond_1
    monitor-exit v0

    return-void

    .line 10
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private e(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/applovin/impl/sdk/m;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v3, p0, Lcom/applovin/impl/sdk/m;->e:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v2

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->d(Ljava/io/File;)V

    .line 5
    monitor-exit v2

    const/4 p1, 0x1

    return p1

    .line 6
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private g(Ljava/io/File;)Z
    .locals 6

    .line 1
    const-string v0, "removeFile"

    .line 2
    .line 3
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "FileManager"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v4, "Removing file "

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v4, " from filesystem..."

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->d(Ljava/io/File;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const-string v3, "path"

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v3, v4}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const-string v4, "details"

    .line 62
    .line 63
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->b(Ljava/io/File;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    iget-object v4, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    sget-object v5, Lcom/applovin/impl/c2;->D0:Lcom/applovin/impl/c2;

    .line 77
    .line 78
    invoke-virtual {v4, v5, v0, v3}, Lcom/applovin/impl/d2;->a(Lcom/applovin/impl/c2;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v1

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    .line 85
    .line 86
    .line 87
    return v1

    .line 88
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_2

    .line 93
    .line 94
    iget-object v3, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    .line 95
    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v5, "Failed to remove file "

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v5, " from filesystem!"

    .line 114
    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v3, v2, v4, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :catchall_1
    move-exception v0

    .line 127
    goto :goto_3

    .line 128
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3, v2, v0, v1}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    .line 138
    .line 139
    .line 140
    const/4 p1, 0x0

    .line 141
    return p1

    .line 142
    :goto_3
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    .line 143
    .line 144
    .line 145
    throw v0
.end method

.method private h(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->d:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->e:Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string v1, "path"

    .line 17
    .line 18
    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget-object v2, Lcom/applovin/impl/c2;->D0:Lcom/applovin/impl/c2;

    .line 29
    .line 30
    const-string/jumbo v3, "unlockFile"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2, v3, p1}, Lcom/applovin/impl/d2;->a(Lcom/applovin/impl/c2;Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->d:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;)I
    .locals 2

    .line 185
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/b;->d0()Ljava/util/List;

    move-result-object v0

    .line 186
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/b;->Z0()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    .line 187
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/b;->L()I

    move-result p1

    :goto_1
    return p1
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, v0, p2}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;ZLandroid/content/Context;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;)Ljava/io/InputStream;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "FileManager"

    if-eqz p3, :cond_1

    .line 174
    invoke-static {p1, p2}, Lcom/applovin/impl/k7;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 175
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Domain is not whitelisted, skipping precache for url: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    .line 176
    :cond_1
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->toHttpsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_2
    const-string/jumbo p2, "url"

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p3

    .line 179
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 180
    iget-object v2, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/c2;->B:Lcom/applovin/impl/c2;

    invoke-virtual {v2, v3, p3}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    .line 181
    :try_start_0
    iget-object p3, p0, Lcom/applovin/impl/sdk/m;->g:Lcom/applovin/impl/f2;

    invoke-interface {p3, p1, p4}, Lcom/applovin/impl/f2;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p3

    .line 182
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v1, v2, p3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    :cond_3
    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 184
    iget-object p2, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object p2

    const-string p4, "loadResource"

    invoke-virtual {p2, v1, p4, p3, p1}, Lcom/applovin/impl/q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 10

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 188
    invoke-virtual/range {v0 .. v9}, Lcom/applovin/impl/sdk/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 13

    move-object v8, p0

    .line 189
    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    const/4 v9, 0x0

    const-string v10, "FileManager"

    if-nez v0, :cond_1

    .line 190
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v1, "Nothing to cache, skipping..."

    invoke-virtual {v0, v10, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    iget-object v0, v8, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/c2;->D0:Lcom/applovin/impl/c2;

    const-string v2, "cacheResource"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/d2;->a(Lcom/applovin/impl/c2;Ljava/lang/String;)V

    return-object v9

    .line 192
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 193
    iget-object v1, v8, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    move-object/from16 v2, p3

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/k7;->a(Landroid/net/Uri;Ljava/lang/String;Lcom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v11

    move-object v0, p1

    .line 194
    invoke-virtual {p0, v11, p1}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v12

    move-object v0, p0

    move-object v1, v12

    move-object v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 195
    invoke-direct/range {v0 .. v7}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;ZILjava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v8, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caching succeeded for file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p6, :cond_3

    .line 197
    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_3
    return-object v11

    :cond_4
    return-object v9
.end method

.method public a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    .line 18
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x2000

    .line 19
    :try_start_1
    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 20
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_0

    .line 21
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 22
    :cond_0
    const-string p1, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 24
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 25
    :goto_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v1, "FileManager"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v0

    const-string v2, "readInputStreamAsString"

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/io/File;Ljava/lang/String;)V
    .locals 5

    .line 219
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    const-string v1, "FileManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    const-string v0, "path"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 222
    const-string v2, "details"

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v2, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/c2;->D0:Lcom/applovin/impl/c2;

    invoke-virtual {v2, v3, p2, v0}, Lcom/applovin/impl/d2;->a(Lcom/applovin/impl/c2;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 224
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from filesystem after failed operation."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object p1

    invoke-virtual {p1, v1, p2, v0}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/io/File;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/Map;)Z
    .locals 8

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 116
    invoke-direct/range {v0 .. v7}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;ZILjava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/io/InputStream;Ljava/io/File;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/InputStream;Ljava/io/File;ZZ)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->F0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v1, "FileManager"

    const-string v2, "Compacting cache..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->a(Landroid/content/Context;)J

    move-result-wide v0

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/applovin/impl/sdk/m;->a(JLandroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0, p2}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;ZLandroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/p6;

    iget-object v2, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    new-instance v3, Lcom/applovin/impl/sdk/x1;

    invoke-direct {v3, p0, p1, p2}, Lcom/applovin/impl/sdk/x1;-><init>(Lcom/applovin/impl/sdk/m;Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;)V

    const/4 p1, 0x0

    const-string p2, "removeCachedResourcesForAd"

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/applovin/impl/p6;-><init>(Lcom/applovin/impl/sdk/k;ZLjava/lang/String;Ljava/lang/Runnable;)V

    sget-object p1, Lcom/applovin/impl/b6$b;->b:Lcom/applovin/impl/b6$b;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;)V

    return-void
.end method

.method public c(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/m;->f:Z

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/m;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0, p2}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;ZLandroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->e(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 v0, 0x1

    .line 16
    :cond_2
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    return v0
.end method

.method public d(Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/p6;

    iget-object v2, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    new-instance v3, Lcom/applovin/impl/sdk/y1;

    invoke-direct {v3, p0, p1, p2}, Lcom/applovin/impl/sdk/y1;-><init>(Lcom/applovin/impl/sdk/m;Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;)V

    const/4 p1, 0x0

    const-string p2, "removeCachedVideoResourceForAd"

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/applovin/impl/p6;-><init>(Lcom/applovin/impl/sdk/k;ZLjava/lang/String;Ljava/lang/Runnable;)V

    sget-object p1, Lcom/applovin/impl/b6$b;->b:Lcom/applovin/impl/b6$b;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;)V

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 5

    const-string v0, "Failed to create .nomedia file"

    const-string v1, ".nomedia"

    const-string v2, "FileManager"

    .line 7
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    .line 8
    new-instance v3, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v3}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating .nomedia file at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 12
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {p1, v2, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object p1

    sget-object v1, Lcom/applovin/impl/c2;->D0:Lcom/applovin/impl/c2;

    const-string v3, "createNoMediaFile"

    invoke-virtual {p1, v1, v3}, Lcom/applovin/impl/d2;->a(Lcom/applovin/impl/c2;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 14
    :goto_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v1, v2, v0, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public f(Ljava/io/File;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "removeFileAfterReadFail"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "FileManager"

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v5, "Reading resource from filesystem: "

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    const/4 v2, 0x1

    .line 42
    const/4 v4, 0x0

    .line 43
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .line 44
    .line 45
    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    :try_start_1
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->d(Ljava/io/File;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v5}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/InputStream;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    if-nez v6, :cond_2

    .line 56
    .line 57
    move v4, v2

    .line 58
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .line 60
    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    .line 64
    .line 65
    sget-object v2, Lcom/applovin/impl/v4;->M0:Lcom/applovin/impl/v4;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    .line 83
    .line 84
    .line 85
    return-object v6

    .line 86
    :catchall_0
    move-exception v5

    .line 87
    goto :goto_1

    .line 88
    :catch_0
    move-exception v5

    .line 89
    goto :goto_3

    .line 90
    :catch_1
    move-exception v2

    .line 91
    goto/16 :goto_4

    .line 92
    .line 93
    :catchall_1
    move-exception v6

    .line 94
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_2
    move-exception v5

    .line 99
    :try_start_4
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    throw v6
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    :goto_1
    :try_start_5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_4

    .line 108
    .line 109
    iget-object v6, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    .line 110
    .line 111
    const-string v7, "Unknown failure to read file."

    .line 112
    .line 113
    invoke-virtual {v6, v3, v7, v5}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :catchall_3
    move-exception v1

    .line 118
    move v2, v4

    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    .line 122
    .line 123
    invoke-virtual {v6, v3, v5}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 124
    .line 125
    .line 126
    :try_start_6
    iget-object v4, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    .line 127
    .line 128
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    const-string v6, "readFile"

    .line 133
    .line 134
    invoke-virtual {v4, v3, v6, v5}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 135
    .line 136
    .line 137
    iget-object v2, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    .line 138
    .line 139
    sget-object v3, Lcom/applovin/impl/v4;->M0:Lcom/applovin/impl/v4;

    .line 140
    .line 141
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Ljava/lang/Boolean;

    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_5

    .line 152
    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_5
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    .line 157
    .line 158
    .line 159
    return-object v1

    .line 160
    :catchall_4
    move-exception v1

    .line 161
    goto/16 :goto_5

    .line 162
    .line 163
    :goto_3
    :try_start_7
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-eqz v6, :cond_6

    .line 168
    .line 169
    iget-object v6, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    .line 170
    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v8, "Failed to read file: "

    .line 177
    .line 178
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    invoke-virtual {v6, v3, v7}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_6
    iget-object v6, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    .line 199
    .line 200
    invoke-virtual {v6, v3, v5}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 201
    .line 202
    .line 203
    :try_start_8
    iget-object v4, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    .line 204
    .line 205
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    const-string v6, "readFileIO"

    .line 210
    .line 211
    invoke-virtual {v4, v3, v6, v5}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 212
    .line 213
    .line 214
    iget-object v2, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    .line 215
    .line 216
    sget-object v3, Lcom/applovin/impl/v4;->M0:Lcom/applovin/impl/v4;

    .line 217
    .line 218
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    check-cast v2, Ljava/lang/Boolean;

    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_7

    .line 229
    .line 230
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :cond_7
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    .line 234
    .line 235
    .line 236
    return-object v1

    .line 237
    :goto_4
    :try_start_9
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-eqz v5, :cond_8

    .line 242
    .line 243
    iget-object v5, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    .line 244
    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    const-string v7, "File not found. "

    .line 251
    .line 252
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-virtual {v5, v3, v6}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :cond_8
    iget-object v5, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    .line 266
    .line 267
    invoke-virtual {v5, v3, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    .line 269
    .line 270
    iget-object v5, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    .line 271
    .line 272
    invoke-virtual {v5}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    const-string v6, "readFileNotFound"

    .line 277
    .line 278
    invoke-virtual {v5, v3, v6, v2}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 279
    .line 280
    .line 281
    if-eqz v4, :cond_9

    .line 282
    .line 283
    iget-object v2, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    .line 284
    .line 285
    sget-object v3, Lcom/applovin/impl/v4;->M0:Lcom/applovin/impl/v4;

    .line 286
    .line 287
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    check-cast v2, Ljava/lang/Boolean;

    .line 292
    .line 293
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_9

    .line 298
    .line 299
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :cond_9
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    .line 303
    .line 304
    .line 305
    return-object v1

    .line 306
    :goto_5
    if-eqz v2, :cond_a

    .line 307
    .line 308
    iget-object v2, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/k;

    .line 309
    .line 310
    sget-object v3, Lcom/applovin/impl/v4;->M0:Lcom/applovin/impl/v4;

    .line 311
    .line 312
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    check-cast v2, Ljava/lang/Boolean;

    .line 317
    .line 318
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-eqz v2, :cond_a

    .line 323
    .line 324
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    :cond_a
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->h(Ljava/io/File;)V

    .line 328
    .line 329
    .line 330
    throw v1
.end method
