.class public Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/Pfn/ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/Pfn/Pfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oJ"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Pfn:F

.field private ZYk:F

.field private ba:I

.field private cFZ:I

.field private ex:I

.field private jFA:I

.field private kkU:Z

.field private oJ:I

.field private so:I

.field private tB:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 31
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 32
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->oJ:I

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ZYk:F

    .line 34
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->tB:F

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ex:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 36
    iput p2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->Pfn:F

    .line 37
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ba:I

    .line 38
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->cFZ:I

    const p1, 0xffffff

    .line 39
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->so:I

    .line 40
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->jFA:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 52
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->oJ:I

    const/4 v2, 0x0

    .line 53
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ZYk:F

    .line 54
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->tB:F

    const/4 v2, -0x1

    .line 55
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ex:I

    const/high16 v3, -0x40800000    # -1.0f

    .line 56
    iput v3, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->Pfn:F

    .line 57
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ba:I

    .line 58
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->cFZ:I

    const v2, 0xffffff

    .line 59
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->so:I

    .line 60
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->jFA:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->oJ:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ZYk:F

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->tB:F

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ex:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->Pfn:F

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ba:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->cFZ:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->so:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->jFA:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->kkU:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->oJ:I

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ZYk:F

    .line 24
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->tB:F

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ex:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 26
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->Pfn:F

    .line 27
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ba:I

    .line 28
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->cFZ:I

    const p1, 0xffffff

    .line 29
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->so:I

    .line 30
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->jFA:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x1

    .line 42
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->oJ:I

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ZYk:F

    .line 44
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->tB:F

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ex:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 46
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->Pfn:F

    .line 47
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ba:I

    .line 48
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->cFZ:I

    const p1, 0xffffff

    .line 49
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->so:I

    .line 50
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->jFA:I

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->oJ:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ZYk:F

    .line 4
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->tB:F

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ex:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 6
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->Pfn:F

    .line 7
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ba:I

    .line 8
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->cFZ:I

    const v0, 0xffffff

    .line 9
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->so:I

    .line 10
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->jFA:I

    .line 11
    iget v0, p1, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->oJ:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->oJ:I

    .line 12
    iget v0, p1, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ZYk:F

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ZYk:F

    .line 13
    iget v0, p1, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->tB:F

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->tB:F

    .line 14
    iget v0, p1, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ex:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ex:I

    .line 15
    iget v0, p1, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->Pfn:F

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->Pfn:F

    .line 16
    iget v0, p1, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ba:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ba:I

    .line 17
    iget v0, p1, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->cFZ:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->cFZ:I

    .line 18
    iget v0, p1, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->so:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->so:I

    .line 19
    iget v0, p1, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->jFA:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->jFA:I

    .line 20
    iget-boolean p1, p1, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->kkU:Z

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->kkU:Z

    return-void
.end method


# virtual methods
.method public BTZ()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->Pfn:F

    .line 2
    .line 3
    return v0
.end method

.method public Pfn()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->tB:F

    .line 2
    .line 3
    return v0
.end method

.method public PiB()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2
    .line 3
    return v0
.end method

.method public WcQ()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2
    .line 3
    return v0
.end method

.method public ZYk()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    return v0
.end method

.method public ZYk(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->tB:F

    return-void
.end method

.method public ZYk(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->cFZ:I

    return-void
.end method

.method public awB()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2
    .line 3
    return v0
.end method

.method public ba()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ex:I

    .line 2
    .line 3
    return v0
.end method

.method public cFZ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ba:I

    .line 2
    .line 3
    return v0
.end method

.method public dLZ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->kkU:Z

    .line 2
    .line 3
    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public eZI()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2
    .line 3
    return v0
.end method

.method public ex()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ZYk:F

    return v0
.end method

.method public ex(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ex:I

    return-void
.end method

.method public jFA()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->so:I

    .line 2
    .line 3
    return v0
.end method

.method public kkU()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->jFA:I

    .line 2
    .line 3
    return v0
.end method

.method public oJ()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    return v0
.end method

.method public oJ(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ZYk:F

    return-void
.end method

.method public oJ(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ba:I

    return-void
.end method

.method public so()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->cFZ:I

    .line 2
    .line 3
    return v0
.end method

.method public tB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->oJ:I

    return v0
.end method

.method public tB(F)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->Pfn:F

    return-void
.end method

.method public tB(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->oJ:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->oJ:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ZYk:F

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->tB:F

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ex:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->Pfn:F

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->ba:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->cFZ:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->so:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->jFA:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget-boolean p2, p0, Lcom/bytedance/adsdk/ugeno/Pfn/Pfn$oJ;->kkU:Z

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 49
    .line 50
    .line 51
    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    .line 70
    .line 71
    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    .line 75
    .line 76
    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
