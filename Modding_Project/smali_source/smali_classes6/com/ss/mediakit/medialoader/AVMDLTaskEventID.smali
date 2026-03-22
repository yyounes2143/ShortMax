.class public Lcom/ss/mediakit/medialoader/AVMDLTaskEventID;
.super Ljava/lang/Object;
.source "AVMDLTaskEventID.java"


# static fields
.field public static final TaskEventEnd:I = 0x1

.field private static final TaskEventIdEnd:I = 0x2

.field private static final TaskEventIdStart:I = -0x1

.field public static final TaskEventStart:I = 0x0

.field public static final TaskTypeCache:I = 0x3

.field private static final TaskTypeEnd:I = 0x4

.field public static final TaskTypePlay:I = 0x1

.field public static final TaskTypePreload:I = 0x2

.field private static final TaskTypeStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static eventTypeIsValid(I)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-le p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-lt p0, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public static taskTypeIsValid(I)Z
    .locals 1

    .line 1
    if-lez p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    if-lt p0, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method
