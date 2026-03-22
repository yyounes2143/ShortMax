.class public final enum Lcom/bytedance/applog/Level;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/applog/Level;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum L0:Lcom/bytedance/applog/Level;

.field public static final enum L1:Lcom/bytedance/applog/Level;

.field public static final synthetic b:[Lcom/bytedance/applog/Level;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/bytedance/applog/Level;

    .line 2
    .line 3
    const-string v1, "L0"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/applog/Level;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/bytedance/applog/Level;->L0:Lcom/bytedance/applog/Level;

    .line 10
    .line 11
    new-instance v1, Lcom/bytedance/applog/Level;

    .line 12
    .line 13
    const-string v2, "L1"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lcom/bytedance/applog/Level;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/bytedance/applog/Level;->L1:Lcom/bytedance/applog/Level;

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Lcom/bytedance/applog/Level;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/bytedance/applog/Level;->b:[Lcom/bytedance/applog/Level;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/bytedance/applog/Level;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/applog/Level;
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/applog/Level;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/bytedance/applog/Level;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/bytedance/applog/Level;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/applog/Level;->b:[Lcom/bytedance/applog/Level;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/bytedance/applog/Level;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/bytedance/applog/Level;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/applog/Level;->a:I

    .line 2
    .line 3
    return v0
.end method
