.class public Lcom/bytedance/sdk/openadsdk/core/model/QSm$ZYk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/ex/dLZ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/model/QSm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZYk"
.end annotation


# instance fields
.field private final ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private final ex:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/model/QSm;",
            ">;"
        }
    .end annotation
.end field

.field private final oJ:I

.field private final tB:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/QSm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$ZYk;->oJ:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$ZYk;->tB:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$ZYk;->ex:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public oJ(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$ZYk;->ex:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$ZYk;->oJ:I

    .line 12
    .line 13
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Id(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->cY(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->jr(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->cY(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sub-int/2addr v4, v0

    .line 30
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 31
    .line 32
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$ZYk;->tB:Ljava/lang/String;

    .line 33
    .line 34
    move v7, p1

    .line 35
    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/ex/tB$oJ;->oJ(IIIILcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method
