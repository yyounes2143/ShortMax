.class public final Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;
.super Ljava/lang/Object;
.source "FloatingWindow.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FONT_SIZE1:F = 9.0f

.field public static final FONT_SIZE2:F = 12.0f

.field public static final HEIGHT_RATIO1:F = 0.24f

.field public static final HEIGHT_RATIO2:F = 0.3f

.field public static final HEIGHT_RATIO3:F = 0.37f

.field public static final HEIGHT_RATIO4:F = 0.45f


# instance fields
.field private ratio:F

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->Companion:Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x3e75c28f    # 0.24f

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->ratio:F

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->ratio:F

    .line 2
    .line 3
    return v0
.end method

.method public final getX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public final getY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->y:I

    .line 2
    .line 3
    return v0
.end method

.method public final setRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->ratio:F

    .line 2
    .line 3
    return-void
.end method

.method public final setX(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->x:I

    .line 2
    .line 3
    return-void
.end method

.method public final setY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->y:I

    .line 2
    .line 3
    return-void
.end method

.method public final update(FII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->ratio:F

    .line 2
    iput p2, p0, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->x:I

    .line 3
    iput p3, p0, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->y:I

    return-void
.end method

.method public final update(II)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->x:I

    .line 5
    iput p2, p0, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->y:I

    return-void
.end method
