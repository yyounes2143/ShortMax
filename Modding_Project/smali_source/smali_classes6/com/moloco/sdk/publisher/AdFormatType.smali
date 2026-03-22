.class public final enum Lcom/moloco/sdk/publisher/AdFormatType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moloco/sdk/publisher/AdFormatType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/moloco/sdk/publisher/AdFormatType;

.field public static final enum BANNER:Lcom/moloco/sdk/publisher/AdFormatType;

.field public static final enum INTERSTITIAL:Lcom/moloco/sdk/publisher/AdFormatType;

.field public static final enum MREC:Lcom/moloco/sdk/publisher/AdFormatType;

.field public static final enum NATIVE:Lcom/moloco/sdk/publisher/AdFormatType;

.field public static final enum REWARDED:Lcom/moloco/sdk/publisher/AdFormatType;


# direct methods
.method private static final synthetic $values()[Lcom/moloco/sdk/publisher/AdFormatType;
    .locals 5

    .line 1
    sget-object v0, Lcom/moloco/sdk/publisher/AdFormatType;->BANNER:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/publisher/AdFormatType;->INTERSTITIAL:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/publisher/AdFormatType;->REWARDED:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 6
    .line 7
    sget-object v3, Lcom/moloco/sdk/publisher/AdFormatType;->MREC:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 8
    .line 9
    sget-object v4, Lcom/moloco/sdk/publisher/AdFormatType;->NATIVE:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/moloco/sdk/publisher/AdFormatType;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/moloco/sdk/publisher/AdFormatType;

    .line 2
    .line 3
    const-string v1, "BANNER"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/publisher/AdFormatType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/moloco/sdk/publisher/AdFormatType;->BANNER:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 10
    .line 11
    new-instance v0, Lcom/moloco/sdk/publisher/AdFormatType;

    .line 12
    .line 13
    const-string v1, "INTERSTITIAL"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/publisher/AdFormatType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/moloco/sdk/publisher/AdFormatType;->INTERSTITIAL:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 20
    .line 21
    new-instance v0, Lcom/moloco/sdk/publisher/AdFormatType;

    .line 22
    .line 23
    const-string v1, "REWARDED"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/publisher/AdFormatType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/moloco/sdk/publisher/AdFormatType;->REWARDED:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 30
    .line 31
    new-instance v0, Lcom/moloco/sdk/publisher/AdFormatType;

    .line 32
    .line 33
    const-string v1, "MREC"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/publisher/AdFormatType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/moloco/sdk/publisher/AdFormatType;->MREC:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 40
    .line 41
    new-instance v0, Lcom/moloco/sdk/publisher/AdFormatType;

    .line 42
    .line 43
    const-string v1, "NATIVE"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/publisher/AdFormatType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/moloco/sdk/publisher/AdFormatType;->NATIVE:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 50
    .line 51
    invoke-static {}, Lcom/moloco/sdk/publisher/AdFormatType;->$values()[Lcom/moloco/sdk/publisher/AdFormatType;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/moloco/sdk/publisher/AdFormatType;->$VALUES:[Lcom/moloco/sdk/publisher/AdFormatType;

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcom/moloco/sdk/publisher/AdFormatType;->$ENTRIES:Lss/a;

    .line 62
    .line 63
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getEntries()Lss/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lss/a<",
            "Lcom/moloco/sdk/publisher/AdFormatType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/publisher/AdFormatType;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moloco/sdk/publisher/AdFormatType;
    .locals 1

    .line 1
    const-class v0, Lcom/moloco/sdk/publisher/AdFormatType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/moloco/sdk/publisher/AdFormatType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/moloco/sdk/publisher/AdFormatType;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/publisher/AdFormatType;->$VALUES:[Lcom/moloco/sdk/publisher/AdFormatType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/moloco/sdk/publisher/AdFormatType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toLowercase()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "toLowerCase(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final toTitlecase()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/publisher/AdFormatType;->toLowercase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_1

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-static {v2}, Lkotlin/text/CharsKt;->i(C)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string/jumbo v2, "substring(...)"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_1
    return-object v0
.end method
