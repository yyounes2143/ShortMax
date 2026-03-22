.class public final enum Lcom/hades/aar/storage/base/UploadStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hades/aar/storage/base/UploadStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/hades/aar/storage/base/UploadStatus;

.field public static final enum CANCELED:Lcom/hades/aar/storage/base/UploadStatus;

.field public static final enum COMPLETED:Lcom/hades/aar/storage/base/UploadStatus;

.field public static final enum ERROR:Lcom/hades/aar/storage/base/UploadStatus;

.field public static final enum PAUSED:Lcom/hades/aar/storage/base/UploadStatus;

.field public static final enum START:Lcom/hades/aar/storage/base/UploadStatus;

.field public static final enum UNKNOWN:Lcom/hades/aar/storage/base/UploadStatus;

.field public static final enum UPLOADING:Lcom/hades/aar/storage/base/UploadStatus;


# direct methods
.method private static final synthetic $values()[Lcom/hades/aar/storage/base/UploadStatus;
    .locals 7

    .line 1
    sget-object v0, Lcom/hades/aar/storage/base/UploadStatus;->START:Lcom/hades/aar/storage/base/UploadStatus;

    .line 2
    .line 3
    sget-object v1, Lcom/hades/aar/storage/base/UploadStatus;->UPLOADING:Lcom/hades/aar/storage/base/UploadStatus;

    .line 4
    .line 5
    sget-object v2, Lcom/hades/aar/storage/base/UploadStatus;->PAUSED:Lcom/hades/aar/storage/base/UploadStatus;

    .line 6
    .line 7
    sget-object v3, Lcom/hades/aar/storage/base/UploadStatus;->COMPLETED:Lcom/hades/aar/storage/base/UploadStatus;

    .line 8
    .line 9
    sget-object v4, Lcom/hades/aar/storage/base/UploadStatus;->ERROR:Lcom/hades/aar/storage/base/UploadStatus;

    .line 10
    .line 11
    sget-object v5, Lcom/hades/aar/storage/base/UploadStatus;->UNKNOWN:Lcom/hades/aar/storage/base/UploadStatus;

    .line 12
    .line 13
    sget-object v6, Lcom/hades/aar/storage/base/UploadStatus;->CANCELED:Lcom/hades/aar/storage/base/UploadStatus;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Lcom/hades/aar/storage/base/UploadStatus;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/hades/aar/storage/base/UploadStatus;

    .line 2
    .line 3
    const-string v1, "START"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/hades/aar/storage/base/UploadStatus;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/hades/aar/storage/base/UploadStatus;->START:Lcom/hades/aar/storage/base/UploadStatus;

    .line 10
    .line 11
    new-instance v0, Lcom/hades/aar/storage/base/UploadStatus;

    .line 12
    .line 13
    const-string v1, "UPLOADING"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/hades/aar/storage/base/UploadStatus;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/hades/aar/storage/base/UploadStatus;->UPLOADING:Lcom/hades/aar/storage/base/UploadStatus;

    .line 20
    .line 21
    new-instance v0, Lcom/hades/aar/storage/base/UploadStatus;

    .line 22
    .line 23
    const-string v1, "PAUSED"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/hades/aar/storage/base/UploadStatus;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/hades/aar/storage/base/UploadStatus;->PAUSED:Lcom/hades/aar/storage/base/UploadStatus;

    .line 30
    .line 31
    new-instance v0, Lcom/hades/aar/storage/base/UploadStatus;

    .line 32
    .line 33
    const-string v1, "COMPLETED"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/hades/aar/storage/base/UploadStatus;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/hades/aar/storage/base/UploadStatus;->COMPLETED:Lcom/hades/aar/storage/base/UploadStatus;

    .line 40
    .line 41
    new-instance v0, Lcom/hades/aar/storage/base/UploadStatus;

    .line 42
    .line 43
    const-string v1, "ERROR"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/hades/aar/storage/base/UploadStatus;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/hades/aar/storage/base/UploadStatus;->ERROR:Lcom/hades/aar/storage/base/UploadStatus;

    .line 50
    .line 51
    new-instance v0, Lcom/hades/aar/storage/base/UploadStatus;

    .line 52
    .line 53
    const-string v1, "UNKNOWN"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/hades/aar/storage/base/UploadStatus;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/hades/aar/storage/base/UploadStatus;->UNKNOWN:Lcom/hades/aar/storage/base/UploadStatus;

    .line 60
    .line 61
    new-instance v0, Lcom/hades/aar/storage/base/UploadStatus;

    .line 62
    .line 63
    const-string v1, "CANCELED"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lcom/hades/aar/storage/base/UploadStatus;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/hades/aar/storage/base/UploadStatus;->CANCELED:Lcom/hades/aar/storage/base/UploadStatus;

    .line 70
    .line 71
    invoke-static {}, Lcom/hades/aar/storage/base/UploadStatus;->$values()[Lcom/hades/aar/storage/base/UploadStatus;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/hades/aar/storage/base/UploadStatus;->$VALUES:[Lcom/hades/aar/storage/base/UploadStatus;

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lcom/hades/aar/storage/base/UploadStatus;->$ENTRIES:Lss/a;

    .line 82
    .line 83
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
            "Lcom/hades/aar/storage/base/UploadStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/hades/aar/storage/base/UploadStatus;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hades/aar/storage/base/UploadStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/hades/aar/storage/base/UploadStatus;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hades/aar/storage/base/UploadStatus;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hades/aar/storage/base/UploadStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/hades/aar/storage/base/UploadStatus;->$VALUES:[Lcom/hades/aar/storage/base/UploadStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hades/aar/storage/base/UploadStatus;

    .line 8
    .line 9
    return-object v0
.end method
