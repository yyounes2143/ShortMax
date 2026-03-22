.class public final enum Lcom/amazonaws/services/s3/model/Permission;
.super Ljava/lang/Enum;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/Permission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/Permission;

.field public static final enum FullControl:Lcom/amazonaws/services/s3/model/Permission;

.field public static final enum Read:Lcom/amazonaws/services/s3/model/Permission;

.field public static final enum ReadAcp:Lcom/amazonaws/services/s3/model/Permission;

.field public static final enum Write:Lcom/amazonaws/services/s3/model/Permission;

.field public static final enum WriteAcp:Lcom/amazonaws/services/s3/model/Permission;


# instance fields
.field private headerName:Ljava/lang/String;

.field private permissionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/amazonaws/services/s3/model/Permission;

    .line 2
    .line 3
    const-string v1, "FULL_CONTROL"

    .line 4
    .line 5
    const-string/jumbo v2, "x-amz-grant-full-control"

    .line 6
    .line 7
    .line 8
    const-string v3, "FullControl"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/amazonaws/services/s3/model/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/amazonaws/services/s3/model/Permission;->FullControl:Lcom/amazonaws/services/s3/model/Permission;

    .line 15
    .line 16
    new-instance v1, Lcom/amazonaws/services/s3/model/Permission;

    .line 17
    .line 18
    const-string v2, "READ"

    .line 19
    .line 20
    const-string/jumbo v3, "x-amz-grant-read"

    .line 21
    .line 22
    .line 23
    const-string v4, "Read"

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/amazonaws/services/s3/model/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/amazonaws/services/s3/model/Permission;->Read:Lcom/amazonaws/services/s3/model/Permission;

    .line 30
    .line 31
    new-instance v2, Lcom/amazonaws/services/s3/model/Permission;

    .line 32
    .line 33
    const-string v3, "WRITE"

    .line 34
    .line 35
    const-string/jumbo v4, "x-amz-grant-write"

    .line 36
    .line 37
    .line 38
    const-string v5, "Write"

    .line 39
    .line 40
    const/4 v6, 0x2

    .line 41
    invoke-direct {v2, v5, v6, v3, v4}, Lcom/amazonaws/services/s3/model/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v2, Lcom/amazonaws/services/s3/model/Permission;->Write:Lcom/amazonaws/services/s3/model/Permission;

    .line 45
    .line 46
    new-instance v3, Lcom/amazonaws/services/s3/model/Permission;

    .line 47
    .line 48
    const-string v4, "READ_ACP"

    .line 49
    .line 50
    const-string/jumbo v5, "x-amz-grant-read-acp"

    .line 51
    .line 52
    .line 53
    const-string v6, "ReadAcp"

    .line 54
    .line 55
    const/4 v7, 0x3

    .line 56
    invoke-direct {v3, v6, v7, v4, v5}, Lcom/amazonaws/services/s3/model/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v3, Lcom/amazonaws/services/s3/model/Permission;->ReadAcp:Lcom/amazonaws/services/s3/model/Permission;

    .line 60
    .line 61
    new-instance v4, Lcom/amazonaws/services/s3/model/Permission;

    .line 62
    .line 63
    const-string v5, "WRITE_ACP"

    .line 64
    .line 65
    const-string/jumbo v6, "x-amz-grant-write-acp"

    .line 66
    .line 67
    .line 68
    const-string v7, "WriteAcp"

    .line 69
    .line 70
    const/4 v8, 0x4

    .line 71
    invoke-direct {v4, v7, v8, v5, v6}, Lcom/amazonaws/services/s3/model/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sput-object v4, Lcom/amazonaws/services/s3/model/Permission;->WriteAcp:Lcom/amazonaws/services/s3/model/Permission;

    .line 75
    .line 76
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/amazonaws/services/s3/model/Permission;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Lcom/amazonaws/services/s3/model/Permission;->$VALUES:[Lcom/amazonaws/services/s3/model/Permission;

    .line 81
    .line 82
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/Permission;->permissionString:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/Permission;->headerName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static parsePermission(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Permission;
    .locals 5

    .line 1
    invoke-static {}, Lcom/amazonaws/services/s3/model/Permission;->values()[Lcom/amazonaws/services/s3/model/Permission;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget-object v4, v3, Lcom/amazonaws/services/s3/model/Permission;->permissionString:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Permission;
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/services/s3/model/Permission;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/amazonaws/services/s3/model/Permission;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/Permission;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/services/s3/model/Permission;->$VALUES:[Lcom/amazonaws/services/s3/model/Permission;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/Permission;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/amazonaws/services/s3/model/Permission;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Permission;->headerName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Permission;->permissionString:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
