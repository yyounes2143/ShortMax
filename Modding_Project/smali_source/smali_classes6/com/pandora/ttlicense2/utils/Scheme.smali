.class public final enum Lcom/pandora/ttlicense2/utils/Scheme;
.super Ljava/lang/Enum;
.source "Scheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pandora/ttlicense2/utils/Scheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pandora/ttlicense2/utils/Scheme;

.field public static final enum ASSETS:Lcom/pandora/ttlicense2/utils/Scheme;

.field public static final enum FILE:Lcom/pandora/ttlicense2/utils/Scheme;

.field public static final enum HTTP:Lcom/pandora/ttlicense2/utils/Scheme;

.field public static final enum HTTPS:Lcom/pandora/ttlicense2/utils/Scheme;

.field public static final enum UNKNOWN:Lcom/pandora/ttlicense2/utils/Scheme;


# instance fields
.field private scheme:Ljava/lang/String;

.field private uriPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/pandora/ttlicense2/utils/Scheme;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "http"

    .line 5
    .line 6
    const-string v3, "HTTP"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/pandora/ttlicense2/utils/Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/pandora/ttlicense2/utils/Scheme;->HTTP:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 12
    .line 13
    new-instance v1, Lcom/pandora/ttlicense2/utils/Scheme;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "https"

    .line 17
    .line 18
    const-string v4, "HTTPS"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v3}, Lcom/pandora/ttlicense2/utils/Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/pandora/ttlicense2/utils/Scheme;->HTTPS:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 24
    .line 25
    new-instance v2, Lcom/pandora/ttlicense2/utils/Scheme;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const-string v4, "file"

    .line 29
    .line 30
    const-string v5, "FILE"

    .line 31
    .line 32
    invoke-direct {v2, v5, v3, v4}, Lcom/pandora/ttlicense2/utils/Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/pandora/ttlicense2/utils/Scheme;->FILE:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 36
    .line 37
    new-instance v3, Lcom/pandora/ttlicense2/utils/Scheme;

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    const-string v5, "assets"

    .line 41
    .line 42
    const-string v6, "ASSETS"

    .line 43
    .line 44
    invoke-direct {v3, v6, v4, v5}, Lcom/pandora/ttlicense2/utils/Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lcom/pandora/ttlicense2/utils/Scheme;->ASSETS:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 48
    .line 49
    new-instance v4, Lcom/pandora/ttlicense2/utils/Scheme;

    .line 50
    .line 51
    const/4 v5, 0x4

    .line 52
    const-string v6, ""

    .line 53
    .line 54
    const-string v7, "UNKNOWN"

    .line 55
    .line 56
    invoke-direct {v4, v7, v5, v6}, Lcom/pandora/ttlicense2/utils/Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v4, Lcom/pandora/ttlicense2/utils/Scheme;->UNKNOWN:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 60
    .line 61
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/pandora/ttlicense2/utils/Scheme;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/pandora/ttlicense2/utils/Scheme;->$VALUES:[Lcom/pandora/ttlicense2/utils/Scheme;

    .line 66
    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/pandora/ttlicense2/utils/Scheme;->scheme:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p2, "://"

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/pandora/ttlicense2/utils/Scheme;->uriPrefix:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method private belongsTo(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/utils/Scheme;->uriPrefix:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public static ofUri(Ljava/lang/String;)Lcom/pandora/ttlicense2/utils/Scheme;
    .locals 5

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Scheme;->values()[Lcom/pandora/ttlicense2/utils/Scheme;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-direct {v3, p0}, Lcom/pandora/ttlicense2/utils/Scheme;->belongsTo(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    return-object v3

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-object p0, Lcom/pandora/ttlicense2/utils/Scheme;->UNKNOWN:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 24
    .line 25
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pandora/ttlicense2/utils/Scheme;
    .locals 1

    .line 1
    const-class v0, Lcom/pandora/ttlicense2/utils/Scheme;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/pandora/ttlicense2/utils/Scheme;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/pandora/ttlicense2/utils/Scheme;
    .locals 1

    .line 1
    sget-object v0, Lcom/pandora/ttlicense2/utils/Scheme;->$VALUES:[Lcom/pandora/ttlicense2/utils/Scheme;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/pandora/ttlicense2/utils/Scheme;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/pandora/ttlicense2/utils/Scheme;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public crop(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/pandora/ttlicense2/utils/Scheme;->belongsTo(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/pandora/ttlicense2/utils/Scheme;->uriPrefix:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/pandora/ttlicense2/utils/Scheme;->scheme:Ljava/lang/String;

    .line 21
    .line 22
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v1, "URI [%1$s] doesn\'t have expected scheme [%2$s]"

    .line 27
    .line 28
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public wrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/pandora/ttlicense2/utils/Scheme;->uriPrefix:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
