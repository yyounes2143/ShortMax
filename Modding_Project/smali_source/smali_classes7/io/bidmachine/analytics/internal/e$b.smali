.class public final Lio/bidmachine/analytics/internal/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:F

.field private final c:Ljava/lang/String;

.field private final d:F


# direct methods
.method public constructor <init>(IFLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/bidmachine/analytics/internal/e$b;->a:I

    .line 3
    iput p2, p0, Lio/bidmachine/analytics/internal/e$b;->b:F

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/e$b;->c:Ljava/lang/String;

    const/16 p1, 0x3e8

    int-to-float p1, p1

    mul-float/2addr p2, p1

    .line 5
    iput p2, p0, Lio/bidmachine/analytics/internal/e$b;->d:F

    return-void
.end method

.method public synthetic constructor <init>(IFLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/analytics/internal/e$b;-><init>(IFLjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/analytics/internal/e$b;IFLjava/lang/String;ILjava/lang/Object;)Lio/bidmachine/analytics/internal/e$b;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 2
    iget p1, p0, Lio/bidmachine/analytics/internal/e$b;->a:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lio/bidmachine/analytics/internal/e$b;->b:F

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lio/bidmachine/analytics/internal/e$b;->c:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/analytics/internal/e$b;->a(IFLjava/lang/String;)Lio/bidmachine/analytics/internal/e$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 3
    iget v0, p0, Lio/bidmachine/analytics/internal/e$b;->a:I

    return v0
.end method

.method public final a(IFLjava/lang/String;)Lio/bidmachine/analytics/internal/e$b;
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/e$b;

    invoke-direct {v0, p1, p2, p3}, Lio/bidmachine/analytics/internal/e$b;-><init>(IFLjava/lang/String;)V

    return-object v0
.end method

.method public final b()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/internal/e$b;->d:F

    .line 2
    .line 3
    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/e$b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lio/bidmachine/analytics/internal/e$b;

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
    check-cast p1, Lio/bidmachine/analytics/internal/e$b;

    .line 12
    .line 13
    iget v1, p0, Lio/bidmachine/analytics/internal/e$b;->a:I

    .line 14
    .line 15
    iget v3, p1, Lio/bidmachine/analytics/internal/e$b;->a:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lio/bidmachine/analytics/internal/e$b;->b:F

    .line 21
    .line 22
    iget v3, p1, Lio/bidmachine/analytics/internal/e$b;->b:F

    .line 23
    .line 24
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lio/bidmachine/analytics/internal/e$b;->c:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p1, p1, Lio/bidmachine/analytics/internal/e$b;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/internal/e$b;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lio/bidmachine/analytics/internal/e$b;->b:F

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lio/bidmachine/analytics/internal/e$b;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
