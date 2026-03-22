.class public abstract Lcom/inmobi/commons/core/configs/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/inmobi/media/G2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private accountId:Ljava/lang/String;
    .annotation runtime Lcom/inmobi/media/Z4;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private includeIds:Lcom/inmobi/media/W5;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastUpdateTimeStamp:J
    .annotation runtime Lcom/inmobi/media/Z4;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/G2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/G2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/commons/core/configs/Config;->Companion:Lcom/inmobi/media/G2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/Config;->accountId:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p1, Lcom/inmobi/media/W5;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {p1, v2, v0, v1}, Lcom/inmobi/media/W5;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/Config;->includeIds:Lcom/inmobi/media/W5;

    .line 15
    .line 16
    return-void
.end method

.method public static final fromJSON(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/inmobi/commons/core/configs/Config;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/inmobi/commons/core/configs/Config;->Companion:Lcom/inmobi/media/G2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2, p3, p4}, Lcom/inmobi/media/G2;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/inmobi/commons/core/configs/Config;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/inmobi/commons/core/configs/Config;->Companion:Lcom/inmobi/media/G2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/inmobi/media/G2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/inmobi/commons/core/configs/Config;

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
    check-cast p1, Lcom/inmobi/commons/core/configs/Config;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/Config;->accountId:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v2, p1, Lcom/inmobi/commons/core/configs/Config;->accountId:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object p1, p1, Lcom/inmobi/commons/core/configs/Config;->accountId:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    :goto_0
    const/4 v1, 0x1

    .line 45
    :cond_2
    return v1
.end method

.method public final getAccountId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/Config;->accountId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAccountId$media_release()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/Config;->accountId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIncludeIdParams()Lcom/inmobi/media/W5;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/Config;->includeIds:Lcom/inmobi/media/W5;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastUpdateTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/Config;->lastUpdateTimeStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public abstract getType()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/Config;->accountId:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public abstract isValid()Z
.end method

.method public final setAccountId$media_release(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/Config;->accountId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLastUpdateTimeStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/commons/core/configs/Config;->lastUpdateTimeStamp:J

    .line 2
    .line 3
    return-void
.end method

.method public abstract toJson()Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
