.class public final Lokhttp3/internal/http2/Hpack;
.super Ljava/lang/Object;
.source "Hpack.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Hpack$Reader;,
        Lokhttp3/internal/http2/Hpack$Writer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lokhttp3/internal/http2/Hpack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:[Lokhttp3/internal/http2/Header;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 66

    new-instance v0, Lokhttp3/internal/http2/Hpack;

    invoke-direct {v0}, Lokhttp3/internal/http2/Hpack;-><init>()V

    sput-object v0, Lokhttp3/internal/http2/Hpack;->a:Lokhttp3/internal/http2/Hpack;

    .line 1
    new-instance v2, Lokhttp3/internal/http2/Header;

    move-object v1, v2

    sget-object v3, Lokhttp3/internal/http2/Header;->j:Lokio/ByteString;

    const-string v15, ""

    invoke-direct {v2, v3, v15}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 2
    new-instance v3, Lokhttp3/internal/http2/Header;

    move-object v2, v3

    sget-object v4, Lokhttp3/internal/http2/Header;->g:Lokio/ByteString;

    const-string v5, "GET"

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 3
    new-instance v5, Lokhttp3/internal/http2/Header;

    move-object v3, v5

    const-string v6, "POST"

    invoke-direct {v5, v4, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 4
    new-instance v5, Lokhttp3/internal/http2/Header;

    move-object v4, v5

    sget-object v6, Lokhttp3/internal/http2/Header;->h:Lokio/ByteString;

    const-string v7, "/"

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 5
    new-instance v7, Lokhttp3/internal/http2/Header;

    move-object v5, v7

    const-string v8, "/index.html"

    invoke-direct {v7, v6, v8}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 6
    new-instance v7, Lokhttp3/internal/http2/Header;

    move-object v6, v7

    sget-object v8, Lokhttp3/internal/http2/Header;->i:Lokio/ByteString;

    const-string v9, "http"

    invoke-direct {v7, v8, v9}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 7
    new-instance v9, Lokhttp3/internal/http2/Header;

    move-object v7, v9

    const-string v10, "https"

    invoke-direct {v9, v8, v10}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 8
    new-instance v9, Lokhttp3/internal/http2/Header;

    move-object v8, v9

    sget-object v14, Lokhttp3/internal/http2/Header;->f:Lokio/ByteString;

    const-string v10, "200"

    invoke-direct {v9, v14, v10}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 9
    new-instance v10, Lokhttp3/internal/http2/Header;

    move-object v9, v10

    const-string v11, "204"

    invoke-direct {v10, v14, v11}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 10
    new-instance v11, Lokhttp3/internal/http2/Header;

    move-object v10, v11

    const-string v12, "206"

    invoke-direct {v11, v14, v12}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 11
    new-instance v12, Lokhttp3/internal/http2/Header;

    move-object v11, v12

    const-string v13, "304"

    invoke-direct {v12, v14, v13}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 12
    new-instance v13, Lokhttp3/internal/http2/Header;

    move-object v12, v13

    move-object/from16 v16, v15

    const-string v15, "400"

    invoke-direct {v13, v14, v15}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 13
    new-instance v15, Lokhttp3/internal/http2/Header;

    move-object v13, v15

    move-object/from16 v62, v0

    const-string v0, "404"

    invoke-direct {v15, v14, v0}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object v15, v14

    move-object v14, v0

    move-object/from16 v63, v1

    const-string v1, "500"

    invoke-direct {v0, v15, v1}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v1, v16

    move-object v15, v0

    move-object/from16 v64, v2

    const-string v2, "accept-charset"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v16, v0

    const-string v2, "accept-encoding"

    move-object/from16 v65, v3

    const-string v3, "gzip, deflate"

    invoke-direct {v0, v2, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v17, v0

    const-string v2, "accept-language"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v18, v0

    const-string v2, "accept-ranges"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v19, v0

    const-string v2, "accept"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v20, v0

    const-string v2, "access-control-allow-origin"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v21, v0

    const-string v2, "age"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v22, v0

    const-string v2, "allow"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v23, v0

    const-string v2, "authorization"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v24, v0

    const-string v2, "cache-control"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v25, v0

    const-string v2, "content-disposition"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v26, v0

    const-string v2, "content-encoding"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v27, v0

    const-string v2, "content-language"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v28, v0

    const-string v2, "content-length"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v29, v0

    const-string v2, "content-location"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v30, v0

    const-string v2, "content-range"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v31, v0

    const-string v2, "content-type"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v32, v0

    const-string v2, "cookie"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v33, v0

    const-string v2, "date"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v34, v0

    const-string v2, "etag"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v35, v0

    const-string v2, "expect"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v36, v0

    const-string v2, "expires"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v37, v0

    const-string v2, "from"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v38, v0

    const-string v2, "host"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v39, v0

    const-string v2, "if-match"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v40, v0

    const-string v2, "if-modified-since"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v41, v0

    const-string v2, "if-none-match"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v42, v0

    const-string v2, "if-range"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v43, v0

    const-string v2, "if-unmodified-since"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v44, v0

    const-string v2, "last-modified"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v45, v0

    const-string v2, "link"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v46, v0

    const-string v2, "location"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v47, v0

    const-string v2, "max-forwards"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v48, v0

    const-string v2, "proxy-authenticate"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v49, v0

    const-string v2, "proxy-authorization"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v50, v0

    const-string v2, "range"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v51, v0

    const-string v2, "referer"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v52, v0

    const-string v2, "refresh"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v53, v0

    const-string v2, "retry-after"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v54, v0

    const-string v2, "server"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v55, v0

    const-string v2, "set-cookie"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v56, v0

    const-string v2, "strict-transport-security"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v57, v0

    const-string v2, "transfer-encoding"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v58, v0

    const-string v2, "user-agent"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v59, v0

    const-string v2, "vary"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v60, v0

    const-string v2, "via"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v61, v0

    const-string v2, "www-authenticate"

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    move-object/from16 v3, v65

    filled-new-array/range {v1 .. v61}, [Lokhttp3/internal/http2/Header;

    move-result-object v0

    .line 62
    sput-object v0, Lokhttp3/internal/http2/Hpack;->b:[Lokhttp3/internal/http2/Header;

    .line 63
    invoke-direct/range {v62 .. v62}, Lokhttp3/internal/http2/Hpack;->d()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Hpack;->c:Ljava/util/Map;

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

.method private final d()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    sget-object v1, Lokhttp3/internal/http2/Hpack;->b:[Lokhttp3/internal/http2/Header;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    array-length v1, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    sget-object v3, Lokhttp3/internal/http2/Hpack;->b:[Lokhttp3/internal/http2/Header;

    .line 14
    .line 15
    aget-object v4, v3, v2

    .line 16
    .line 17
    iget-object v4, v4, Lokhttp3/internal/http2/Header;->a:Lokio/ByteString;

    .line 18
    .line 19
    invoke-virtual {v0, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    aget-object v3, v3, v2

    .line 30
    .line 31
    iget-object v3, v3, Lokhttp3/internal/http2/Header;->a:Lokio/ByteString;

    .line 32
    .line 33
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "unmodifiableMap(result)"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method


# virtual methods
.method public final a(Lokio/ByteString;)Lokio/ByteString;
    .locals 4
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lokio/ByteString;->getByte(I)B

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x41

    .line 18
    .line 19
    if-gt v3, v2, :cond_1

    .line 20
    .line 21
    const/16 v3, 0x5b

    .line 22
    .line 23
    if-lt v2, v3, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "PROTOCOL_ERROR response malformed: mixed case name: "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return-object p1
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/internal/http2/Hpack;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()[Lokhttp3/internal/http2/Header;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/internal/http2/Hpack;->b:[Lokhttp3/internal/http2/Header;

    .line 2
    .line 3
    return-object v0
.end method
