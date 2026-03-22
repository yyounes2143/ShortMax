.class public final Lio/bidmachine/core/b;
.super Ljava/lang/Object;
.source "TimeManager.java"


# static fields
.field private static a:Lkr/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkr/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lkr/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/core/b;->a:Lkr/c;

    .line 7
    .line 8
    return-void
.end method

.method public static a()J
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/core/b;->a:Lkr/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lkr/c;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/core/b;->a:Lkr/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lkr/c;->getTimeZoneId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
