.class public final Lio/bidmachine/analytics/MonitorConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:J

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/MonitorConfig;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/analytics/MonitorConfig;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lio/bidmachine/analytics/MonitorConfig;->c:I

    .line 9
    .line 10
    iput-wide p4, p0, Lio/bidmachine/analytics/MonitorConfig;->d:J

    .line 11
    .line 12
    iput-boolean p6, p0, Lio/bidmachine/analytics/MonitorConfig;->e:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getBatchSize()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/MonitorConfig;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final getInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/analytics/MonitorConfig;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/MonitorConfig;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/MonitorConfig;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isReportEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/analytics/MonitorConfig;->e:Z

    .line 2
    .line 3
    return v0
.end method
