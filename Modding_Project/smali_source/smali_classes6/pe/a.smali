.class public final Lpe/a;
.super Ljava/lang/Object;
.source "BlackDeviceJsonConfigure.kt"

# interfaces
.implements Lme/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lme/b<",
        "Lcom/startshorts/androidplayer/bean/configure/BlackDeviceController;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lpe/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Z

.field private static final c:Lcom/startshorts/androidplayer/bean/configure/BlackDeviceController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lpe/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lpe/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lpe/a;->a:Lpe/a;

    .line 7
    .line 8
    new-instance v0, Lcom/startshorts/androidplayer/bean/configure/BlackDeviceController;

    .line 9
    .line 10
    const-string v14, "EVA-L19"

    .line 11
    .line 12
    const-string v15, "LM-K200"

    .line 13
    .line 14
    const-string v1, "PIC-LX9"

    .line 15
    .line 16
    const-string v2, "TAS-L29"

    .line 17
    .line 18
    const-string v3, "MRD-LX2"

    .line 19
    .line 20
    const-string v4, "MRD-LX1F"

    .line 21
    .line 22
    const-string v5, "JKM-LX1"

    .line 23
    .line 24
    const-string v6, "JKM-LX2"

    .line 25
    .line 26
    const-string v7, "INE-LX2"

    .line 27
    .line 28
    const-string v8, "LDN-L21"

    .line 29
    .line 30
    const-string v9, "DUB-LX1"

    .line 31
    .line 32
    const-string v10, "DUB-LX2"

    .line 33
    .line 34
    const-string v11, "DUB-LX3"

    .line 35
    .line 36
    const-string v12, "VIE-L29"

    .line 37
    .line 38
    const-string v13, "MGA-LX9"

    .line 39
    .line 40
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/configure/BlackDeviceController;-><init>(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lpe/a;->c:Lcom/startshorts/androidplayer/bean/configure/BlackDeviceController;

    .line 52
    .line 53
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

.method private final f(Lorg/json/JSONObject;Lcom/startshorts/androidplayer/bean/configure/BlackDeviceController;)V
    .locals 5

    .line 1
    const-string v0, "push"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Lcom/startshorts/androidplayer/bean/configure/BlackDeviceController;->setPush(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    return-void
.end method

.method private final g(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "BlackDeviceJsonConfigure"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 11
    .line 12
    const-string/jumbo v0, "update failed -> json is blank"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lpe/a;->c:Lcom/startshorts/androidplayer/bean/configure/BlackDeviceController;

    .line 25
    .line 26
    sget-object v3, Lpe/a;->a:Lpe/a;

    .line 27
    .line 28
    invoke-direct {v3, v0, p1}, Lpe/a;->f(Lorg/json/JSONObject;Lcom/startshorts/androidplayer/bean/configure/BlackDeviceController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v4, "update failed "

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lpe/a;->g(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public c(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lpe/a;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    sget-boolean v0, Lpe/a;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public h()Lcom/startshorts/androidplayer/bean/configure/BlackDeviceController;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lpe/a;->c:Lcom/startshorts/androidplayer/bean/configure/BlackDeviceController;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpe/a;->h()Lcom/startshorts/androidplayer/bean/configure/BlackDeviceController;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
