.class public final Lio/bidmachine/analytics/internal/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/util/List;

.field private final c:Lio/bidmachine/analytics/internal/h;


# direct methods
.method public constructor <init>(JLjava/util/List;Lio/bidmachine/analytics/internal/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lio/bidmachine/analytics/internal/i$a;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lio/bidmachine/analytics/internal/i$a;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p4, p0, Lio/bidmachine/analytics/internal/i$a;->c:Lio/bidmachine/analytics/internal/h;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/i$a;->c:Lio/bidmachine/analytics/internal/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/analytics/internal/i$a;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/i$a;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
