.class public abstract Lcom/applovin/shadow/okhttp3/RequestBody;
.super Ljava/lang/Object;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/shadow/okhttp3/RequestBody$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/applovin/shadow/okhttp3/RequestBody$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/applovin/shadow/okhttp3/RequestBody$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/applovin/shadow/okhttp3/RequestBody$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/applovin/shadow/okhttp3/RequestBody;->Companion:Lcom/applovin/shadow/okhttp3/RequestBody$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final create(Lcom/applovin/shadow/okhttp3/MediaType;Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okhttp3/RequestBody;
    .locals 1
    .param p0    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/applovin/shadow/okhttp3/RequestBody;->Companion:Lcom/applovin/shadow/okhttp3/RequestBody$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/applovin/shadow/okhttp3/RequestBody$Companion;->create(Lcom/applovin/shadow/okhttp3/MediaType;Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lcom/applovin/shadow/okhttp3/MediaType;Ljava/io/File;)Lcom/applovin/shadow/okhttp3/RequestBody;
    .locals 1
    .param p0    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/applovin/shadow/okhttp3/RequestBody;->Companion:Lcom/applovin/shadow/okhttp3/RequestBody$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/applovin/shadow/okhttp3/RequestBody$Companion;->create(Lcom/applovin/shadow/okhttp3/MediaType;Ljava/io/File;)Lcom/applovin/shadow/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lcom/applovin/shadow/okhttp3/MediaType;Ljava/lang/String;)Lcom/applovin/shadow/okhttp3/RequestBody;
    .locals 1
    .param p0    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    sget-object v0, Lcom/applovin/shadow/okhttp3/RequestBody;->Companion:Lcom/applovin/shadow/okhttp3/RequestBody$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/applovin/shadow/okhttp3/RequestBody$Companion;->create(Lcom/applovin/shadow/okhttp3/MediaType;Ljava/lang/String;)Lcom/applovin/shadow/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lcom/applovin/shadow/okhttp3/MediaType;[B)Lcom/applovin/shadow/okhttp3/RequestBody;
    .locals 1
    .param p0    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    sget-object v0, Lcom/applovin/shadow/okhttp3/RequestBody;->Companion:Lcom/applovin/shadow/okhttp3/RequestBody$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/applovin/shadow/okhttp3/RequestBody$Companion;->create(Lcom/applovin/shadow/okhttp3/MediaType;[B)Lcom/applovin/shadow/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lcom/applovin/shadow/okhttp3/MediaType;[BI)Lcom/applovin/shadow/okhttp3/RequestBody;
    .locals 1
    .param p0    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 5
    sget-object v0, Lcom/applovin/shadow/okhttp3/RequestBody;->Companion:Lcom/applovin/shadow/okhttp3/RequestBody$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/applovin/shadow/okhttp3/RequestBody$Companion;->create(Lcom/applovin/shadow/okhttp3/MediaType;[BI)Lcom/applovin/shadow/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lcom/applovin/shadow/okhttp3/MediaType;[BII)Lcom/applovin/shadow/okhttp3/RequestBody;
    .locals 1
    .param p0    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    sget-object v0, Lcom/applovin/shadow/okhttp3/RequestBody;->Companion:Lcom/applovin/shadow/okhttp3/RequestBody$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/applovin/shadow/okhttp3/RequestBody$Companion;->create(Lcom/applovin/shadow/okhttp3/MediaType;[BII)Lcom/applovin/shadow/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okhttp3/MediaType;)Lcom/applovin/shadow/okhttp3/RequestBody;
    .locals 1
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 7
    sget-object v0, Lcom/applovin/shadow/okhttp3/RequestBody;->Companion:Lcom/applovin/shadow/okhttp3/RequestBody$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/applovin/shadow/okhttp3/RequestBody$Companion;->create(Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okhttp3/MediaType;)Lcom/applovin/shadow/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Ljava/io/File;Lcom/applovin/shadow/okhttp3/MediaType;)Lcom/applovin/shadow/okhttp3/RequestBody;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 8
    sget-object v0, Lcom/applovin/shadow/okhttp3/RequestBody;->Companion:Lcom/applovin/shadow/okhttp3/RequestBody$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/applovin/shadow/okhttp3/RequestBody$Companion;->create(Ljava/io/File;Lcom/applovin/shadow/okhttp3/MediaType;)Lcom/applovin/shadow/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Ljava/lang/String;Lcom/applovin/shadow/okhttp3/MediaType;)Lcom/applovin/shadow/okhttp3/RequestBody;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 9
    sget-object v0, Lcom/applovin/shadow/okhttp3/RequestBody;->Companion:Lcom/applovin/shadow/okhttp3/RequestBody$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/applovin/shadow/okhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lcom/applovin/shadow/okhttp3/MediaType;)Lcom/applovin/shadow/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static final create([B)Lcom/applovin/shadow/okhttp3/RequestBody;
    .locals 1
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    sget-object v0, Lcom/applovin/shadow/okhttp3/RequestBody;->Companion:Lcom/applovin/shadow/okhttp3/RequestBody$Companion;

    invoke-virtual {v0, p0}, Lcom/applovin/shadow/okhttp3/RequestBody$Companion;->create([B)Lcom/applovin/shadow/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static final create([BLcom/applovin/shadow/okhttp3/MediaType;)Lcom/applovin/shadow/okhttp3/RequestBody;
    .locals 1
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 11
    sget-object v0, Lcom/applovin/shadow/okhttp3/RequestBody;->Companion:Lcom/applovin/shadow/okhttp3/RequestBody$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/applovin/shadow/okhttp3/RequestBody$Companion;->create([BLcom/applovin/shadow/okhttp3/MediaType;)Lcom/applovin/shadow/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static final create([BLcom/applovin/shadow/okhttp3/MediaType;I)Lcom/applovin/shadow/okhttp3/RequestBody;
    .locals 1
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 12
    sget-object v0, Lcom/applovin/shadow/okhttp3/RequestBody;->Companion:Lcom/applovin/shadow/okhttp3/RequestBody$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/applovin/shadow/okhttp3/RequestBody$Companion;->create([BLcom/applovin/shadow/okhttp3/MediaType;I)Lcom/applovin/shadow/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static final create([BLcom/applovin/shadow/okhttp3/MediaType;II)Lcom/applovin/shadow/okhttp3/RequestBody;
    .locals 1
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    sget-object v0, Lcom/applovin/shadow/okhttp3/RequestBody;->Companion:Lcom/applovin/shadow/okhttp3/RequestBody$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/applovin/shadow/okhttp3/RequestBody$Companion;->create([BLcom/applovin/shadow/okhttp3/MediaType;II)Lcom/applovin/shadow/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    return-wide v0
.end method

.method public abstract contentType()Lcom/applovin/shadow/okhttp3/MediaType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public isDuplex()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isOneShot()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract writeTo(Lcom/applovin/shadow/okio/BufferedSink;)V
    .param p1    # Lcom/applovin/shadow/okio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
