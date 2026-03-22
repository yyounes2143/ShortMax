.class public Lcom/bytedance/sdk/component/oJ/kkU;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final BTZ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field Pfn:Landroid/content/Context;

.field final PiB:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field WcQ:Z

.field ZYk:Lcom/bytedance/sdk/component/oJ/oJ;

.field awB:Z

.field ba:Z

.field cFZ:Z

.field dLZ:Ljava/lang/String;

.field eZI:Lcom/bytedance/sdk/component/oJ/dLZ$oJ;

.field ex:Lcom/bytedance/sdk/component/oJ/so;

.field jFA:Lcom/bytedance/sdk/component/oJ/PiB;

.field kkU:Lcom/bytedance/sdk/component/oJ/WcQ;

.field oJ:Landroid/webkit/WebView;

.field so:Z

.field tB:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "IESJSBridge"

    iput-object v0, p0, Lcom/bytedance/sdk/component/oJ/kkU;->tB:Ljava/lang/String;

    .line 9
    const-string v0, "host"

    iput-object v0, p0, Lcom/bytedance/sdk/component/oJ/kkU;->dLZ:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/oJ/kkU;->BTZ:Ljava/util/Set;

    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/oJ/kkU;->PiB:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "IESJSBridge"

    iput-object v0, p0, Lcom/bytedance/sdk/component/oJ/kkU;->tB:Ljava/lang/String;

    .line 3
    const-string v0, "host"

    iput-object v0, p0, Lcom/bytedance/sdk/component/oJ/kkU;->dLZ:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/oJ/kkU;->BTZ:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/oJ/kkU;->PiB:Ljava/util/Set;

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/component/oJ/kkU;->oJ:Landroid/webkit/WebView;

    return-void
.end method

.method private tB()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/oJ/kkU;->oJ:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/oJ/kkU;->WcQ:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/component/oJ/kkU;->ZYk:Lcom/bytedance/sdk/component/oJ/oJ;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/oJ/kkU;->tB:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/component/oJ/kkU;->oJ:Landroid/webkit/WebView;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/oJ/kkU;->ex:Lcom/bytedance/sdk/component/oJ/so;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v1, "Requested arguments aren\'t set properly when building JsBridge."

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method


# virtual methods
.method public ZYk(Z)Lcom/bytedance/sdk/component/oJ/kkU;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/oJ/kkU;->cFZ:Z

    return-object p0
.end method

.method public ZYk()Lcom/bytedance/sdk/component/oJ/si;
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/component/oJ/kkU;->tB()V

    .line 3
    new-instance v0, Lcom/bytedance/sdk/component/oJ/si;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/oJ/si;-><init>(Lcom/bytedance/sdk/component/oJ/kkU;)V

    return-object v0
.end method

.method public oJ()Lcom/bytedance/sdk/component/oJ/kkU;
    .locals 1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/oJ/kkU;->awB:Z

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/component/oJ/BTZ;)Lcom/bytedance/sdk/component/oJ/kkU;
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/component/oJ/so;->oJ(Lcom/bytedance/sdk/component/oJ/BTZ;)Lcom/bytedance/sdk/component/oJ/so;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/oJ/kkU;->ex:Lcom/bytedance/sdk/component/oJ/so;

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/component/oJ/oJ;)Lcom/bytedance/sdk/component/oJ/kkU;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/oJ/kkU;->ZYk:Lcom/bytedance/sdk/component/oJ/oJ;

    return-object p0
.end method

.method public oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/oJ/kkU;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/component/oJ/kkU;->tB:Ljava/lang/String;

    return-object p0
.end method

.method public oJ(Z)Lcom/bytedance/sdk/component/oJ/kkU;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/oJ/kkU;->ba:Z

    return-object p0
.end method
