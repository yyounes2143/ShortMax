.class public Lcom/ss/texturerender/effect/EmptyEffect;
.super Lcom/ss/texturerender/effect/AbsEffect;
.source "EmptyEffect.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/AbsEffect;-><init>(II)V

    .line 3
    .line 4
    .line 5
    const/16 p1, 0x65

    .line 6
    .line 7
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method
