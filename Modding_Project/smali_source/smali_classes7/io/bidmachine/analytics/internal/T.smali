.class public final Lio/bidmachine/analytics/internal/T;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:[B

.field private final f:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/internal/T;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/analytics/internal/T;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/analytics/internal/T;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-wide p4, p0, Lio/bidmachine/analytics/internal/T;->d:J

    .line 11
    .line 12
    iput-object p6, p0, Lio/bidmachine/analytics/internal/T;->e:[B

    .line 13
    .line 14
    iput-object p7, p0, Lio/bidmachine/analytics/internal/T;->f:[B

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/T;->e:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/T;->f:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/T;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/T;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/T;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/analytics/internal/T;->d:J

    .line 2
    .line 3
    return-wide v0
.end method
