.class public Lcom/ss/ttvideoengine/source/DirectUrlSource;
.super Ljava/lang/Object;
.source "DirectUrlSource.java"

# interfaces
.implements Lcom/ss/ttvideoengine/strategy/source/StrategySource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;,
        Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;
    }
.end annotation


# static fields
.field public static final KEY_LITE_EDITION:I = 0x1

.field private static final KEY_PRO_EDITION:I = 0x2


# instance fields
.field private final codecStrategy:I

.field private final smartUrlEnabled:Z

.field private final smartUrlVersion:I

.field private final tag:Ljava/lang/Object;

.field private final urlItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;",
            ">;"
        }
    .end annotation
.end field

.field private final vid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->urlItems:Ljava/util/List;

    .line 4
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->access$000(Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->access$000(Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->vid:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->access$100(Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->access$200(Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;)I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->codecStrategy:I

    .line 7
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->access$300(Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->smartUrlEnabled:Z

    .line 8
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->access$400(Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;)I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->smartUrlVersion:I

    .line 9
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->access$500(Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->tag:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;Lcom/ss/ttvideoengine/source/DirectUrlSource$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource;-><init>(Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;)V

    return-void
.end method


# virtual methods
.method public allItems()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->urlItems:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public codecStrategy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->codecStrategy:I

    .line 2
    .line 3
    return v0
.end method

.method public findItemByEncodeType(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->urlItems:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->access$600(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method public firstItem()Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->urlItems:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->urlItems:Ljava/util/List;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    .line 19
    .line 20
    :goto_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->urlItems:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSmartUrlEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->smartUrlEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSmartUrlValid()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->smartUrlEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->smartUrlVersion:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :cond_1
    :goto_0
    return v2
.end method

.method public smartUrlVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->smartUrlVersion:I

    .line 2
    .line 3
    return v0
.end method

.method public tag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->tag:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DirectUrlSource{vid=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->vid:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", urlItems="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->urlItems:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", codecStrategy="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->codecStrategy:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", smartUrlEnabled="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->smartUrlEnabled:Z

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", smartUrlVersion="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->smartUrlVersion:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/16 v1, 0x7d

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method public type()Lcom/ss/ttvideoengine/source/Source$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/source/Source$Type;->DIRECT_URL_SOURCE:Lcom/ss/ttvideoengine/source/Source$Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public vid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;->vid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
