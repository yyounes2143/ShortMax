.class public Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;
.super Ljava/lang/Object;
.source "DirectUrlSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/source/DirectUrlSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private codecStrategy:I

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;",
            ">;"
        }
    .end annotation
.end field

.field private smartUrlEnabled:Z

.field private smartUrlVersion:I

.field private tag:Ljava/lang/Object;

.field private vid:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->items:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->smartUrlVersion:I

    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->vid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->items:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->codecStrategy:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->smartUrlEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->smartUrlVersion:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$500(Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->tag:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addItem(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;
    .locals 1
    .param p1    # Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->items:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 10
    .line 11
    const-string/jumbo v0, "urlItem = null"

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public build()Lcom/ss/ttvideoengine/source/DirectUrlSource;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->items:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/ss/ttvideoengine/source/DirectUrlSource;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/ss/ttvideoengine/source/DirectUrlSource;-><init>(Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;Lcom/ss/ttvideoengine/source/DirectUrlSource$1;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "items is empty"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public setCodecStrategy(I)Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->codecStrategy:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setSmartUrlEnabled(Z)Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->smartUrlEnabled:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setSmartUrlVersion(I)Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->smartUrlVersion:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->tag:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public setVid(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->vid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
