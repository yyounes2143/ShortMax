.class final enum Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;
.super Ljava/lang/Enum;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vodsetting/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ModuleItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

.field public static final enum BIZ_PORTRAIT:Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

.field public static final enum MDL:Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

.field public static final enum UPLOAD:Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

.field public static final enum VOD:Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;


# instance fields
.field intValue:I

.field stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 2
    .line 3
    const-string v1, "vod"

    .line 4
    .line 5
    const-string v2, "VOD"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->VOD:Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 13
    .line 14
    new-instance v1, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 15
    .line 16
    const-string v2, "mdl"

    .line 17
    .line 18
    const-string v3, "MDL"

    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    invoke-direct {v1, v3, v4, v5, v2}, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->MDL:Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 25
    .line 26
    new-instance v2, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    const-string v4, "upload"

    .line 30
    .line 31
    const-string v6, "UPLOAD"

    .line 32
    .line 33
    invoke-direct {v2, v6, v5, v3, v4}, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v2, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->UPLOAD:Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 37
    .line 38
    new-instance v3, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 39
    .line 40
    const/16 v4, 0x10

    .line 41
    .line 42
    const-string v5, "biz_portrait"

    .line 43
    .line 44
    const-string v6, "BIZ_PORTRAIT"

    .line 45
    .line 46
    const/4 v7, 0x3

    .line 47
    invoke-direct {v3, v6, v7, v4, v5}, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sput-object v3, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->BIZ_PORTRAIT:Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 51
    .line 52
    filled-new-array {v0, v1, v2, v3}, [Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->$VALUES:[Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 57
    .line 58
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->intValue:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->stringValue:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->$VALUES:[Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 8
    .line 9
    return-object v0
.end method
