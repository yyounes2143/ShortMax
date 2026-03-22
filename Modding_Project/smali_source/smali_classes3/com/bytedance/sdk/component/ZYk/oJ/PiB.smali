.class public Lcom/bytedance/sdk/component/ZYk/oJ/PiB;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ZYk/oJ/PiB$oJ;
    }
.end annotation


# instance fields
.field public Pfn:[B

.field public ba:Lcom/bytedance/sdk/component/ZYk/oJ/PiB$oJ;

.field public ex:Ljava/lang/String;

.field public tB:Lcom/bytedance/sdk/component/ZYk/oJ/jFA;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ZYk/oJ/jFA;Ljava/lang/String;Lcom/bytedance/sdk/component/ZYk/oJ/PiB$oJ;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/PiB;->tB:Lcom/bytedance/sdk/component/ZYk/oJ/jFA;

    .line 4
    iput-object p2, p0, Lcom/bytedance/sdk/component/ZYk/oJ/PiB;->ex:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/component/ZYk/oJ/PiB;->ba:Lcom/bytedance/sdk/component/ZYk/oJ/PiB$oJ;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ZYk/oJ/jFA;[BLcom/bytedance/sdk/component/ZYk/oJ/PiB$oJ;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/PiB;->tB:Lcom/bytedance/sdk/component/ZYk/oJ/jFA;

    .line 8
    iput-object p2, p0, Lcom/bytedance/sdk/component/ZYk/oJ/PiB;->Pfn:[B

    .line 9
    iput-object p3, p0, Lcom/bytedance/sdk/component/ZYk/oJ/PiB;->ba:Lcom/bytedance/sdk/component/ZYk/oJ/PiB$oJ;

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/component/ZYk/oJ/jFA;Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/PiB;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/ZYk/oJ/PiB;

    sget-object v1, Lcom/bytedance/sdk/component/ZYk/oJ/PiB$oJ;->oJ:Lcom/bytedance/sdk/component/ZYk/oJ/PiB$oJ;

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/sdk/component/ZYk/oJ/PiB;-><init>(Lcom/bytedance/sdk/component/ZYk/oJ/jFA;Ljava/lang/String;Lcom/bytedance/sdk/component/ZYk/oJ/PiB$oJ;)V

    return-object v0
.end method

.method public static oJ(Lcom/bytedance/sdk/component/ZYk/oJ/jFA;[B)Lcom/bytedance/sdk/component/ZYk/oJ/PiB;
    .locals 2

    .line 2
    new-instance v0, Lcom/bytedance/sdk/component/ZYk/oJ/PiB;

    sget-object v1, Lcom/bytedance/sdk/component/ZYk/oJ/PiB$oJ;->ZYk:Lcom/bytedance/sdk/component/ZYk/oJ/PiB$oJ;

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/sdk/component/ZYk/oJ/PiB;-><init>(Lcom/bytedance/sdk/component/ZYk/oJ/jFA;[BLcom/bytedance/sdk/component/ZYk/oJ/PiB$oJ;)V

    return-object v0
.end method
