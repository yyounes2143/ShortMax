.class public abstract Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;


# instance fields
.field private Pfn:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ba;

.field private ZYk:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$Pfn;

.field private ba:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$cFZ;

.field private cFZ:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$tB;

.field private ex:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$oJ;

.field protected oJ:Z

.field private so:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ex;

.field private tB:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ZYk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->oJ:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method protected final ZYk()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->ZYk:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$Pfn;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$Pfn;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method protected final ZYk(II)Z
    .locals 2

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->so:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ex;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ex;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_0
    return v0
.end method

.method protected final ex()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->Pfn:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ba;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ba;->tB(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    :cond_0
    return-void
.end method

.method public oJ()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->ZYk:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$Pfn;

    .line 9
    iput-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->ex:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$oJ;

    .line 10
    iput-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->tB:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ZYk;

    .line 11
    iput-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->Pfn:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ba;

    .line 12
    iput-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->ba:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$cFZ;

    .line 13
    iput-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->cFZ:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$tB;

    .line 14
    iput-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->so:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ex;

    return-void
.end method

.method protected final oJ(I)V
    .locals 1

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->ex:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$oJ;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0, p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method protected final oJ(IIII)V
    .locals 6

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->ba:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$cFZ;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 18
    invoke-interface/range {v0 .. v5}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$cFZ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$Pfn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->ZYk:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$Pfn;

    return-void
.end method

.method public final oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ZYk;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->tB:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ZYk;

    return-void
.end method

.method public final oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ba;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->Pfn:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ba;

    return-void
.end method

.method public final oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$cFZ;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->ba:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$cFZ;

    return-void
.end method

.method public final oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ex;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->so:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ex;

    return-void
.end method

.method public final oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$oJ;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->ex:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$oJ;

    return-void
.end method

.method public final oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$tB;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->cFZ:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$tB;

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->oJ:Z

    return-void
.end method

.method protected final oJ(II)Z
    .locals 2

    const/4 v0, 0x0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->cFZ:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$tB;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_0
    return v0
.end method

.method protected final tB()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->tB:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ZYk;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ZYk;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    :cond_0
    return-void
.end method
