.class public final Lcom/bytedance/bdtracker/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/bdtracker/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/d;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isPageMetaAnnotationEnable()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    move p1, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    xor-int/2addr p1, v1

    .line 22
    return p1
.end method
