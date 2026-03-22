.class public final Lcom/inmobi/media/R6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/inmobi/media/P6;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/inmobi/media/S6;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:J

.field public final e:Lms/i;

.field public f:I

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/P6;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/P6;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/R6;->CREATOR:Lcom/inmobi/media/P6;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Lcom/inmobi/media/S6;Ljava/lang/String;II)V
    .locals 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    move v3, p3

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/inmobi/media/R6;-><init>(Lcom/inmobi/media/S6;Ljava/lang/String;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/media/S6;Ljava/lang/String;IJ)V
    .locals 1

    const-string v0, "landingPageTelemetryMetaData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/R6;->a:Lcom/inmobi/media/S6;

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/R6;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/inmobi/media/R6;->c:I

    .line 5
    iput-wide p4, p0, Lcom/inmobi/media/R6;->d:J

    .line 6
    sget-object p1, Lcom/inmobi/media/Q6;->a:Lcom/inmobi/media/Q6;

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p1

    iput-object p1, p0, Lcom/inmobi/media/R6;->e:Lms/i;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/inmobi/media/R6;->f:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/inmobi/media/R6;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/inmobi/media/R6;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/inmobi/media/R6;->a:Lcom/inmobi/media/S6;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/inmobi/media/R6;->a:Lcom/inmobi/media/S6;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/inmobi/media/R6;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/inmobi/media/R6;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget v1, p0, Lcom/inmobi/media/R6;->c:I

    .line 36
    .line 37
    iget v3, p1, Lcom/inmobi/media/R6;->c:I

    .line 38
    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-wide v3, p0, Lcom/inmobi/media/R6;->d:J

    .line 43
    .line 44
    iget-wide v5, p1, Lcom/inmobi/media/R6;->d:J

    .line 45
    .line 46
    cmp-long p1, v3, v5

    .line 47
    .line 48
    if-eqz p1, :cond_5

    .line 49
    .line 50
    return v2

    .line 51
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/R6;->a:Lcom/inmobi/media/S6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/S6;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/inmobi/media/R6;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget v0, p0, Lcom/inmobi/media/R6;->c:I

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-wide v1, p0, Lcom/inmobi/media/R6;->d:J

    .line 28
    .line 29
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v1, v0

    .line 34
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LandingPageTelemetryControlInfo(landingPageTelemetryMetaData="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/inmobi/media/R6;->a:Lcom/inmobi/media/S6;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", urlType="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/inmobi/media/R6;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", counter="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/inmobi/media/R6;->c:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", startTime="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/inmobi/media/R6;->d:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x29

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    const-string p2, "parcel"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/inmobi/media/R6;->a:Lcom/inmobi/media/S6;

    .line 7
    .line 8
    iget-wide v0, p2, Lcom/inmobi/media/S6;->a:J

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/inmobi/media/R6;->a:Lcom/inmobi/media/S6;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/inmobi/media/S6;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/inmobi/media/R6;->a:Lcom/inmobi/media/S6;

    .line 21
    .line 22
    iget-object p2, p2, Lcom/inmobi/media/S6;->c:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/inmobi/media/R6;->a:Lcom/inmobi/media/S6;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/inmobi/media/S6;->d:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/inmobi/media/R6;->a:Lcom/inmobi/media/S6;

    .line 35
    .line 36
    iget-object p2, p2, Lcom/inmobi/media/S6;->e:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/inmobi/media/R6;->a:Lcom/inmobi/media/S6;

    .line 42
    .line 43
    iget-object p2, p2, Lcom/inmobi/media/S6;->f:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/inmobi/media/R6;->a:Lcom/inmobi/media/S6;

    .line 49
    .line 50
    iget-object p2, p2, Lcom/inmobi/media/S6;->g:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lcom/inmobi/media/R6;->a:Lcom/inmobi/media/S6;

    .line 56
    .line 57
    iget-boolean p2, p2, Lcom/inmobi/media/S6;->h:Z

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/inmobi/media/R6;->a:Lcom/inmobi/media/S6;

    .line 63
    .line 64
    iget-object p2, p2, Lcom/inmobi/media/S6;->i:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lcom/inmobi/media/R6;->b:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget p2, p0, Lcom/inmobi/media/R6;->c:I

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    .line 78
    .line 79
    iget-wide v0, p0, Lcom/inmobi/media/R6;->d:J

    .line 80
    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    .line 83
    .line 84
    iget p2, p0, Lcom/inmobi/media/R6;->f:I

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
