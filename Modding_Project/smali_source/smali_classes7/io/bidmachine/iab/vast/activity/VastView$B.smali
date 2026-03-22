.class Lio/bidmachine/iab/vast/activity/VastView$B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "B"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/bidmachine/iab/vast/activity/VastView$B;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field b:F

.field c:I

.field d:I

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$B$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/iab/vast/activity/VastView$B$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/iab/vast/activity/VastView$B;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->a:Ljava/lang/String;

    const/high16 v0, 0x40a00000    # 5.0f

    .line 3
    iput v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->b:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->c:I

    .line 5
    iput v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->d:I

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->e:Z

    .line 7
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->f:Z

    .line 8
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->g:Z

    .line 9
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->h:Z

    .line 10
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->i:Z

    .line 11
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->j:Z

    .line 12
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->k:Z

    .line 13
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->l:Z

    .line 14
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->m:Z

    .line 15
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->n:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->a:Ljava/lang/String;

    const/high16 v0, 0x40a00000    # 5.0f

    .line 18
    iput v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->b:F

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->c:I

    .line 20
    iput v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->d:I

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->e:Z

    .line 22
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->f:Z

    .line 23
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->g:Z

    .line 24
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->h:Z

    .line 25
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->i:Z

    .line 26
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->j:Z

    .line 27
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->k:Z

    .line 28
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->l:Z

    .line 29
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->m:Z

    .line 30
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->n:Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->a:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->b:F

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->c:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->d:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->e:Z

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->f:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->g:Z

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    iput-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->h:Z

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    move v2, v0

    :goto_4
    iput-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->i:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    move v2, v0

    :goto_5
    iput-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->j:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    move v2, v0

    :goto_6
    iput-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->k:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    move v2, v0

    :goto_7
    iput-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->l:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    move v2, v0

    :goto_8
    iput-boolean v2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->m:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_9

    move v0, v1

    :cond_9
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->n:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->b:F

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->c:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->d:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->e:Z

    .line 22
    .line 23
    int-to-byte p2, p2

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 25
    .line 26
    .line 27
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->f:Z

    .line 28
    .line 29
    int-to-byte p2, p2

    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 31
    .line 32
    .line 33
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->g:Z

    .line 34
    .line 35
    int-to-byte p2, p2

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 37
    .line 38
    .line 39
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->h:Z

    .line 40
    .line 41
    int-to-byte p2, p2

    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 43
    .line 44
    .line 45
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->i:Z

    .line 46
    .line 47
    int-to-byte p2, p2

    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 49
    .line 50
    .line 51
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->j:Z

    .line 52
    .line 53
    int-to-byte p2, p2

    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 55
    .line 56
    .line 57
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->k:Z

    .line 58
    .line 59
    int-to-byte p2, p2

    .line 60
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    .line 62
    .line 63
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->l:Z

    .line 64
    .line 65
    int-to-byte p2, p2

    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 67
    .line 68
    .line 69
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->m:Z

    .line 70
    .line 71
    int-to-byte p2, p2

    .line 72
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 73
    .line 74
    .line 75
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$B;->n:Z

    .line 76
    .line 77
    int-to-byte p2, p2

    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
