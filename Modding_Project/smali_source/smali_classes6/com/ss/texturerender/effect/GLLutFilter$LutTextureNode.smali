.class Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;
.super Ljava/lang/Object;
.source "GLLutFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/texturerender/effect/GLLutFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LutTextureNode"
.end annotation


# instance fields
.field public strength:F

.field public texID:I

.field final synthetic this$0:Lcom/ss/texturerender/effect/GLLutFilter;

.field public using:Z


# direct methods
.method public constructor <init>(Lcom/ss/texturerender/effect/GLLutFilter;IFZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->this$0:Lcom/ss/texturerender/effect/GLLutFilter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->texID:I

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->using:Z

    .line 9
    .line 10
    iput p3, p0, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->strength:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
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
    const-string v1, "[texID:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->texID:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ",strength:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->strength:F

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ",using:"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->using:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "]"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
