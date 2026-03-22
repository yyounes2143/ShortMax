.class public Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ZYk:I

.field private oJ:I

.field private tB:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;->oJ:I

    .line 3
    iput p2, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;->ZYk:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;->oJ:I

    .line 6
    iput p2, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;->ZYk:I

    .line 7
    iput-object p3, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;->tB:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ZYk()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;->ZYk:I

    .line 2
    .line 3
    return v0
.end method

.method public oJ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;->oJ:I

    return v0
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;->tB:Ljava/lang/String;

    return-void
.end method

.method public tB()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;->tB:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
